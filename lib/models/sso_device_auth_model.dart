// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sso_device_auth_model.freezed.dart';
part 'sso_device_auth_model.g.dart';

/// Response from GET /sso/OID/GetDeviceNames
/// Returns a list of provider names that have device authorization enabled
@Freezed(copyWith: true)
abstract class SsoDeviceProviders with _$SsoDeviceProviders {
  factory SsoDeviceProviders({
    @Default([]) List<String> providers,
  }) = _SsoDeviceProviders;

  factory SsoDeviceProviders.fromJson(Map<String, dynamic> json) => _$SsoDeviceProvidersFromJson(json);

  /// Create from a simple list response
  factory SsoDeviceProviders.fromList(List<dynamic> list) => SsoDeviceProviders(
        providers: list.map((e) => e.toString()).toList(),
      );
}

/// Converts any value to a String (handles int/String from server)
String _toStringValue(dynamic value) => value?.toString() ?? '';
dynamic _readAsIs(Map<dynamic, dynamic> json, String key) => json[key];

/// Response from POST /sso/OID/device/PROVIDER_NAME
/// Initiates the device authorization flow
@Freezed(copyWith: true)
abstract class SsoDeviceInitResponse with _$SsoDeviceInitResponse {
  factory SsoDeviceInitResponse({
    /// Unique state identifier
    @JsonKey(name: 'State') required String state,

    /// Code to display to the user (server may return as int or string)
    @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue) required String userCode,

    /// URL where user authenticates
    @JsonKey(name: 'VerificationUri') required String verificationUri,

    /// Pre-filled URL with user code
    @JsonKey(name: 'VerificationUriComplete') String? verificationUriComplete,

    /// Seconds until device code expires
    @JsonKey(name: 'ExpiresIn') required int expiresIn,

    /// Minimum polling interval in seconds
    @JsonKey(name: 'Interval') @Default(5) int interval,
  }) = _SsoDeviceInitResponse;

  factory SsoDeviceInitResponse.fromJson(Map<String, dynamic> json) => _$SsoDeviceInitResponseFromJson(json);
}

/// Response from GET /sso/OID/devicePoll/PROVIDER_NAME
@Freezed(copyWith: true)
abstract class SsoDevicePollResponse with _$SsoDevicePollResponse {
  factory SsoDevicePollResponse({
    /// Status: "pending" or "complete"
    String? status,

    /// Error code if something went wrong
    String? error,

    /// Error description
    @JsonKey(name: 'error_description') String? errorDescription,
  }) = _SsoDevicePollResponse;

  factory SsoDevicePollResponse.fromJson(Map<String, dynamic> json) => _$SsoDevicePollResponseFromJson(json);
}

/// Request body for POST /sso/OID/device/PROVIDER_NAME
@Freezed(copyWith: true)
abstract class SsoDeviceInitRequest with _$SsoDeviceInitRequest {
  factory SsoDeviceInitRequest({
    /// BASE64URL-encoded SHA256 hash of the code verifier
    required String codeChallenge,
  }) = _SsoDeviceInitRequest;

  factory SsoDeviceInitRequest.fromJson(Map<String, dynamic> json) => _$SsoDeviceInitRequestFromJson(json);
}

/// Request body for POST /sso/OID/deviceAuth/PROVIDER_NAME
@Freezed(copyWith: true)
abstract class SsoDeviceAuthRequest with _$SsoDeviceAuthRequest {
  factory SsoDeviceAuthRequest({
    /// Device ID
    required String deviceId,

    /// Device name
    required String deviceName,

    /// App name
    required String appName,

    /// App version
    required String appVersion,

    /// The state identifier from initiation
    required String data,

    /// The original code verifier
    required String codeVerifier,
  }) = _SsoDeviceAuthRequest;

  factory SsoDeviceAuthRequest.fromJson(Map<String, dynamic> json) => _$SsoDeviceAuthRequestFromJson(json);
}
