// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sso_device_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SsoDeviceProviders _$SsoDeviceProvidersFromJson(Map<String, dynamic> json) =>
    _SsoDeviceProviders(
      providers: (json['providers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SsoDeviceProvidersToJson(_SsoDeviceProviders instance) =>
    <String, dynamic>{
      'providers': instance.providers,
    };

_SsoDeviceInitResponse _$SsoDeviceInitResponseFromJson(
        Map<String, dynamic> json) =>
    _SsoDeviceInitResponse(
      state: json['State'] as String,
      userCode: _toStringValue(_readAsIs(json, 'UserCode')),
      verificationUri: json['VerificationUri'] as String,
      verificationUriComplete: json['VerificationUriComplete'] as String?,
      expiresIn: (json['ExpiresIn'] as num).toInt(),
      interval: (json['Interval'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$SsoDeviceInitResponseToJson(
        _SsoDeviceInitResponse instance) =>
    <String, dynamic>{
      'State': instance.state,
      'UserCode': instance.userCode,
      'VerificationUri': instance.verificationUri,
      'VerificationUriComplete': instance.verificationUriComplete,
      'ExpiresIn': instance.expiresIn,
      'Interval': instance.interval,
    };

_SsoDevicePollResponse _$SsoDevicePollResponseFromJson(
        Map<String, dynamic> json) =>
    _SsoDevicePollResponse(
      status: json['status'] as String?,
      error: json['error'] as String?,
      errorDescription: json['error_description'] as String?,
    );

Map<String, dynamic> _$SsoDevicePollResponseToJson(
        _SsoDevicePollResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'error_description': instance.errorDescription,
    };

_SsoDeviceInitRequest _$SsoDeviceInitRequestFromJson(
        Map<String, dynamic> json) =>
    _SsoDeviceInitRequest(
      codeChallenge: json['codeChallenge'] as String,
    );

Map<String, dynamic> _$SsoDeviceInitRequestToJson(
        _SsoDeviceInitRequest instance) =>
    <String, dynamic>{
      'codeChallenge': instance.codeChallenge,
    };

_SsoDeviceAuthRequest _$SsoDeviceAuthRequestFromJson(
        Map<String, dynamic> json) =>
    _SsoDeviceAuthRequest(
      deviceId: json['deviceId'] as String,
      deviceName: json['deviceName'] as String,
      appName: json['appName'] as String,
      appVersion: json['appVersion'] as String,
      data: json['data'] as String,
      codeVerifier: json['codeVerifier'] as String,
    );

Map<String, dynamic> _$SsoDeviceAuthRequestToJson(
        _SsoDeviceAuthRequest instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'appName': instance.appName,
      'appVersion': instance.appVersion,
      'data': instance.data,
      'codeVerifier': instance.codeVerifier,
    };
