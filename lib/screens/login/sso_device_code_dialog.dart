import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:fladder/models/sso_device_auth_model.dart';
import 'package:fladder/providers/api_provider.dart';
import 'package:fladder/providers/auth_provider.dart';
import 'package:fladder/screens/shared/fladder_snackbar.dart';
import 'package:fladder/util/list_padding.dart';
import 'package:fladder/util/localization_helper.dart';

/// PKCE code verifier generator
class PkceHelper {
  static String generateCodeVerifier() {
    final random = Random.secure();
    final values = List<int>.generate(32, (_) => random.nextInt(256));
    return base64Url.encode(values).replaceAll('=', '');
  }

  static String generateCodeChallenge(String codeVerifier) {
    final bytes = utf8.encode(codeVerifier);
    final digest = sha256.convert(bytes);
    return base64Url.encode(digest.bytes).replaceAll('=', '');
  }
}

/// Result returned from SSO device code dialog when authentication is successful
class SsoDeviceAuthResult {
  final String state;
  final String codeVerifier;
  final String providerName;

  SsoDeviceAuthResult({
    required this.state,
    required this.codeVerifier,
    required this.providerName,
  });
}

Future<SsoDeviceAuthResult?> openSsoDeviceCodeDialog(
  BuildContext context, {
  required String providerName,
}) {
  return showDialog<SsoDeviceAuthResult>(
    context: context,
    barrierDismissible: false,
    builder: (context) => SsoDeviceCodeDialog(
      providerName: providerName,
    ),
  );
}

class SsoDeviceCodeDialog extends ConsumerStatefulWidget {
  final String providerName;

  const SsoDeviceCodeDialog({
    required this.providerName,
    super.key,
  });

  @override
  ConsumerState<SsoDeviceCodeDialog> createState() => _SsoDeviceCodeDialogState();
}

class _SsoDeviceCodeDialogState extends ConsumerState<SsoDeviceCodeDialog> {
  bool _isLoading = true;
  bool _isPolling = false;
  String? _error;
  SsoDeviceInitResponse? _deviceInfo;
  Timer? _pollTimer;
  DateTime? _expiresAt;

  late final String _codeVerifier;
  late final String _codeChallenge;

  @override
  void initState() {
    super.initState();
    _codeVerifier = PkceHelper.generateCodeVerifier();
    _codeChallenge = PkceHelper.generateCodeChallenge(_codeVerifier);
    _initiateDeviceAuth();
  }

  @override
  void dispose() {
    _pollTimer?.cancel();
    super.dispose();
  }

  Future<void> _initiateDeviceAuth() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final serverUrl = ref.read(authProvider).serverLoginModel?.tempCredentials.url ?? '';

    try {
      final response = await ref.read(jellyApiProvider).ssoDeviceInitiate(
            baseUrl: serverUrl,
            providerName: widget.providerName,
            codeChallenge: _codeChallenge,
          );

      if (response.isSuccessful && response.body != null) {
        setState(() {
          _deviceInfo = response.body;
          _isLoading = false;
          _expiresAt = DateTime.now().add(Duration(seconds: response.body!.expiresIn));
        });
        _startPolling();
      } else {
        setState(() {
          _error = context.localized.ssoDeviceAuthFailed;
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  void _startPolling() {
    final interval = _deviceInfo?.interval ?? 5;
    _pollTimer?.cancel();
    _isPolling = true;

    _pollTimer = Timer.periodic(Duration(seconds: interval), (_) async {
      if (!_isPolling) return;

      // Check if expired
      if (_expiresAt != null && DateTime.now().isAfter(_expiresAt!)) {
        _pollTimer?.cancel();
        setState(() {
          _error = context.localized.ssoDeviceCodeExpired;
          _isPolling = false;
        });
        return;
      }

      final serverUrl = ref.read(authProvider).serverLoginModel?.tempCredentials.url ?? '';

      try {
        final response = await ref.read(jellyApiProvider).ssoDevicePoll(
              baseUrl: serverUrl,
              providerName: widget.providerName,
              state: _deviceInfo!.state,
              codeChallenge: _codeChallenge,
            );

        if (response.body?.status == 'complete') {
          _pollTimer?.cancel();
          _isPolling = false;
          // Return the result for auth provider to complete authentication
          if (mounted) {
            Navigator.of(context).pop(SsoDeviceAuthResult(
              state: _deviceInfo!.state,
              codeVerifier: _codeVerifier,
              providerName: widget.providerName,
            ));
          }
        } else if (response.body?.error != null) {
          // Handle specific errors
          if (response.body?.error != 'authorization_pending' && response.body?.error != 'slow_down') {
            _pollTimer?.cancel();
            setState(() {
              _error = response.body?.errorDescription ?? response.body?.error ?? context.localized.ssoDeviceAuthFailed;
              _isPolling = false;
            });
          }
        }
      } catch (e) {
        // Ignore transient errors and continue polling
      }
    });
  }

  Future<void> _openVerificationUrl() async {
    final url = _deviceInfo?.verificationUriComplete ?? _deviceInfo?.verificationUri;
    if (url == null) return;

    final uri = Uri.tryParse(url);
    if (uri != null) {
      try {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (e) {
        if (mounted) {
          fladderSnackbar(context, title: context.localized.ssoUnableToOpenUrl);
        }
      }
    }
  }

  void _copyUserCode() {
    final code = _deviceInfo?.userCode;
    if (code != null) {
      Clipboard.setData(ClipboardData(text: code));
      fladderSnackbar(context, title: context.localized.ssoCopiedToClipboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final serverName = ref.watch(authProvider.select((value) => value.serverLoginModel?.tempCredentials.serverName));

    return Dialog(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            Text(
              serverName?.isNotEmpty == true
                  ? "${context.localized.ssoDeviceCodeTitle} - $serverName"
                  : context.localized.ssoDeviceCodeTitle,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.providerName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: CircularProgressIndicator(strokeCap: StrokeCap.round),
              )
            else if (_error != null)
              _buildErrorView()
            else if (_deviceInfo != null)
              _buildDeviceCodeView(),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(context.localized.cancel),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.error_outline,
          size: 48,
          color: Theme.of(context).colorScheme.error,
        ),
        const SizedBox(height: 16),
        Text(
          _error!,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: _initiateDeviceAuth,
          child: Text(context.localized.retry),
        ),
      ],
    );
  }

  Widget _buildDeviceCodeView() {
    final deviceInfo = _deviceInfo!;

    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          context.localized.ssoDeviceCodeInstructions,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        // User code display
        InkWell(
          onTap: _copyUserCode,
          borderRadius: BorderRadius.circular(12),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    context.localized.ssoUserCode,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    deviceInfo.userCode,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.localized.ssoTapToCopy,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Verification URL
        Text(
          context.localized.ssoVisitUrl,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        SelectableText(
          deviceInfo.verificationUri,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        FilledButton.tonal(
          onPressed: _openVerificationUrl,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.open_in_browser),
              const SizedBox(width: 8),
              Text(context.localized.ssoOpenInBrowser),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // Polling indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2, strokeCap: StrokeCap.round),
            ),
            const SizedBox(width: 12),
            Text(
              context.localized.ssoWaitingForAuth,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ].addInBetween(const SizedBox(height: 0)),
    );
  }
}
