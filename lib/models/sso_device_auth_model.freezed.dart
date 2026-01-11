// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sso_device_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SsoDeviceProviders {
  List<String> get providers;

  /// Create a copy of SsoDeviceProviders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SsoDeviceProvidersCopyWith<SsoDeviceProviders> get copyWith =>
      _$SsoDeviceProvidersCopyWithImpl<SsoDeviceProviders>(
          this as SsoDeviceProviders, _$identity);

  /// Serializes this SsoDeviceProviders to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SsoDeviceProviders(providers: $providers)';
  }
}

/// @nodoc
abstract mixin class $SsoDeviceProvidersCopyWith<$Res> {
  factory $SsoDeviceProvidersCopyWith(
          SsoDeviceProviders value, $Res Function(SsoDeviceProviders) _then) =
      _$SsoDeviceProvidersCopyWithImpl;
  @useResult
  $Res call({List<String> providers});
}

/// @nodoc
class _$SsoDeviceProvidersCopyWithImpl<$Res>
    implements $SsoDeviceProvidersCopyWith<$Res> {
  _$SsoDeviceProvidersCopyWithImpl(this._self, this._then);

  final SsoDeviceProviders _self;
  final $Res Function(SsoDeviceProviders) _then;

  /// Create a copy of SsoDeviceProviders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_self.copyWith(
      providers: null == providers
          ? _self.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SsoDeviceProviders].
extension SsoDeviceProvidersPatterns on SsoDeviceProviders {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SsoDeviceProviders value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SsoDeviceProviders value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SsoDeviceProviders value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> providers)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders() when $default != null:
        return $default(_that.providers);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> providers) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders():
        return $default(_that.providers);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<String> providers)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceProviders() when $default != null:
        return $default(_that.providers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SsoDeviceProviders implements SsoDeviceProviders {
  _SsoDeviceProviders({final List<String> providers = const []})
      : _providers = providers;
  factory _SsoDeviceProviders.fromJson(Map<String, dynamic> json) =>
      _$SsoDeviceProvidersFromJson(json);

  final List<String> _providers;
  @override
  @JsonKey()
  List<String> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  /// Create a copy of SsoDeviceProviders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SsoDeviceProvidersCopyWith<_SsoDeviceProviders> get copyWith =>
      __$SsoDeviceProvidersCopyWithImpl<_SsoDeviceProviders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SsoDeviceProvidersToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SsoDeviceProviders(providers: $providers)';
  }
}

/// @nodoc
abstract mixin class _$SsoDeviceProvidersCopyWith<$Res>
    implements $SsoDeviceProvidersCopyWith<$Res> {
  factory _$SsoDeviceProvidersCopyWith(
          _SsoDeviceProviders value, $Res Function(_SsoDeviceProviders) _then) =
      __$SsoDeviceProvidersCopyWithImpl;
  @override
  @useResult
  $Res call({List<String> providers});
}

/// @nodoc
class __$SsoDeviceProvidersCopyWithImpl<$Res>
    implements _$SsoDeviceProvidersCopyWith<$Res> {
  __$SsoDeviceProvidersCopyWithImpl(this._self, this._then);

  final _SsoDeviceProviders _self;
  final $Res Function(_SsoDeviceProviders) _then;

  /// Create a copy of SsoDeviceProviders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? providers = null,
  }) {
    return _then(_SsoDeviceProviders(
      providers: null == providers
          ? _self._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SsoDeviceInitResponse {
  /// Unique state identifier
  @JsonKey(name: 'State')
  String get state;

  /// Code to display to the user (server may return as int or string)
  @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue)
  String get userCode;

  /// URL where user authenticates
  @JsonKey(name: 'VerificationUri')
  String get verificationUri;

  /// Pre-filled URL with user code
  @JsonKey(name: 'VerificationUriComplete')
  String? get verificationUriComplete;

  /// Seconds until device code expires
  @JsonKey(name: 'ExpiresIn')
  int get expiresIn;

  /// Minimum polling interval in seconds
  @JsonKey(name: 'Interval')
  int get interval;

  /// Create a copy of SsoDeviceInitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SsoDeviceInitResponseCopyWith<SsoDeviceInitResponse> get copyWith =>
      _$SsoDeviceInitResponseCopyWithImpl<SsoDeviceInitResponse>(
          this as SsoDeviceInitResponse, _$identity);

  /// Serializes this SsoDeviceInitResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SsoDeviceInitResponse(state: $state, userCode: $userCode, verificationUri: $verificationUri, verificationUriComplete: $verificationUriComplete, expiresIn: $expiresIn, interval: $interval)';
  }
}

/// @nodoc
abstract mixin class $SsoDeviceInitResponseCopyWith<$Res> {
  factory $SsoDeviceInitResponseCopyWith(SsoDeviceInitResponse value,
          $Res Function(SsoDeviceInitResponse) _then) =
      _$SsoDeviceInitResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'State') String state,
      @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue)
      String userCode,
      @JsonKey(name: 'VerificationUri') String verificationUri,
      @JsonKey(name: 'VerificationUriComplete') String? verificationUriComplete,
      @JsonKey(name: 'ExpiresIn') int expiresIn,
      @JsonKey(name: 'Interval') int interval});
}

/// @nodoc
class _$SsoDeviceInitResponseCopyWithImpl<$Res>
    implements $SsoDeviceInitResponseCopyWith<$Res> {
  _$SsoDeviceInitResponseCopyWithImpl(this._self, this._then);

  final SsoDeviceInitResponse _self;
  final $Res Function(SsoDeviceInitResponse) _then;

  /// Create a copy of SsoDeviceInitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? userCode = null,
    Object? verificationUri = null,
    Object? verificationUriComplete = freezed,
    Object? expiresIn = null,
    Object? interval = null,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationUri: null == verificationUri
          ? _self.verificationUri
          : verificationUri // ignore: cast_nullable_to_non_nullable
              as String,
      verificationUriComplete: freezed == verificationUriComplete
          ? _self.verificationUriComplete
          : verificationUriComplete // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SsoDeviceInitResponse].
extension SsoDeviceInitResponsePatterns on SsoDeviceInitResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SsoDeviceInitResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SsoDeviceInitResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SsoDeviceInitResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'State') String state,
            @JsonKey(
                name: 'UserCode',
                readValue: _readAsIs,
                fromJson: _toStringValue)
            String userCode,
            @JsonKey(name: 'VerificationUri') String verificationUri,
            @JsonKey(name: 'VerificationUriComplete')
            String? verificationUriComplete,
            @JsonKey(name: 'ExpiresIn') int expiresIn,
            @JsonKey(name: 'Interval') int interval)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse() when $default != null:
        return $default(_that.state, _that.userCode, _that.verificationUri,
            _that.verificationUriComplete, _that.expiresIn, _that.interval);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'State') String state,
            @JsonKey(
                name: 'UserCode',
                readValue: _readAsIs,
                fromJson: _toStringValue)
            String userCode,
            @JsonKey(name: 'VerificationUri') String verificationUri,
            @JsonKey(name: 'VerificationUriComplete')
            String? verificationUriComplete,
            @JsonKey(name: 'ExpiresIn') int expiresIn,
            @JsonKey(name: 'Interval') int interval)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse():
        return $default(_that.state, _that.userCode, _that.verificationUri,
            _that.verificationUriComplete, _that.expiresIn, _that.interval);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'State') String state,
            @JsonKey(
                name: 'UserCode',
                readValue: _readAsIs,
                fromJson: _toStringValue)
            String userCode,
            @JsonKey(name: 'VerificationUri') String verificationUri,
            @JsonKey(name: 'VerificationUriComplete')
            String? verificationUriComplete,
            @JsonKey(name: 'ExpiresIn') int expiresIn,
            @JsonKey(name: 'Interval') int interval)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitResponse() when $default != null:
        return $default(_that.state, _that.userCode, _that.verificationUri,
            _that.verificationUriComplete, _that.expiresIn, _that.interval);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SsoDeviceInitResponse implements SsoDeviceInitResponse {
  _SsoDeviceInitResponse(
      {@JsonKey(name: 'State') required this.state,
      @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue)
      required this.userCode,
      @JsonKey(name: 'VerificationUri') required this.verificationUri,
      @JsonKey(name: 'VerificationUriComplete') this.verificationUriComplete,
      @JsonKey(name: 'ExpiresIn') required this.expiresIn,
      @JsonKey(name: 'Interval') this.interval = 5});
  factory _SsoDeviceInitResponse.fromJson(Map<String, dynamic> json) =>
      _$SsoDeviceInitResponseFromJson(json);

  /// Unique state identifier
  @override
  @JsonKey(name: 'State')
  final String state;

  /// Code to display to the user (server may return as int or string)
  @override
  @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue)
  final String userCode;

  /// URL where user authenticates
  @override
  @JsonKey(name: 'VerificationUri')
  final String verificationUri;

  /// Pre-filled URL with user code
  @override
  @JsonKey(name: 'VerificationUriComplete')
  final String? verificationUriComplete;

  /// Seconds until device code expires
  @override
  @JsonKey(name: 'ExpiresIn')
  final int expiresIn;

  /// Minimum polling interval in seconds
  @override
  @JsonKey(name: 'Interval')
  final int interval;

  /// Create a copy of SsoDeviceInitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SsoDeviceInitResponseCopyWith<_SsoDeviceInitResponse> get copyWith =>
      __$SsoDeviceInitResponseCopyWithImpl<_SsoDeviceInitResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SsoDeviceInitResponseToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SsoDeviceInitResponse(state: $state, userCode: $userCode, verificationUri: $verificationUri, verificationUriComplete: $verificationUriComplete, expiresIn: $expiresIn, interval: $interval)';
  }
}

/// @nodoc
abstract mixin class _$SsoDeviceInitResponseCopyWith<$Res>
    implements $SsoDeviceInitResponseCopyWith<$Res> {
  factory _$SsoDeviceInitResponseCopyWith(_SsoDeviceInitResponse value,
          $Res Function(_SsoDeviceInitResponse) _then) =
      __$SsoDeviceInitResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'State') String state,
      @JsonKey(name: 'UserCode', readValue: _readAsIs, fromJson: _toStringValue)
      String userCode,
      @JsonKey(name: 'VerificationUri') String verificationUri,
      @JsonKey(name: 'VerificationUriComplete') String? verificationUriComplete,
      @JsonKey(name: 'ExpiresIn') int expiresIn,
      @JsonKey(name: 'Interval') int interval});
}

/// @nodoc
class __$SsoDeviceInitResponseCopyWithImpl<$Res>
    implements _$SsoDeviceInitResponseCopyWith<$Res> {
  __$SsoDeviceInitResponseCopyWithImpl(this._self, this._then);

  final _SsoDeviceInitResponse _self;
  final $Res Function(_SsoDeviceInitResponse) _then;

  /// Create a copy of SsoDeviceInitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? userCode = null,
    Object? verificationUri = null,
    Object? verificationUriComplete = freezed,
    Object? expiresIn = null,
    Object? interval = null,
  }) {
    return _then(_SsoDeviceInitResponse(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      userCode: null == userCode
          ? _self.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationUri: null == verificationUri
          ? _self.verificationUri
          : verificationUri // ignore: cast_nullable_to_non_nullable
              as String,
      verificationUriComplete: freezed == verificationUriComplete
          ? _self.verificationUriComplete
          : verificationUriComplete // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SsoDevicePollResponse {
  /// Status: "pending" or "complete"
  String? get status;

  /// Error code if something went wrong
  String? get error;

  /// Error description
  @JsonKey(name: 'error_description')
  String? get errorDescription;

  /// Create a copy of SsoDevicePollResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SsoDevicePollResponseCopyWith<SsoDevicePollResponse> get copyWith =>
      _$SsoDevicePollResponseCopyWithImpl<SsoDevicePollResponse>(
          this as SsoDevicePollResponse, _$identity);

  /// Serializes this SsoDevicePollResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SsoDevicePollResponse(status: $status, error: $error, errorDescription: $errorDescription)';
  }
}

/// @nodoc
abstract mixin class $SsoDevicePollResponseCopyWith<$Res> {
  factory $SsoDevicePollResponseCopyWith(SsoDevicePollResponse value,
          $Res Function(SsoDevicePollResponse) _then) =
      _$SsoDevicePollResponseCopyWithImpl;
  @useResult
  $Res call(
      {String? status,
      String? error,
      @JsonKey(name: 'error_description') String? errorDescription});
}

/// @nodoc
class _$SsoDevicePollResponseCopyWithImpl<$Res>
    implements $SsoDevicePollResponseCopyWith<$Res> {
  _$SsoDevicePollResponseCopyWithImpl(this._self, this._then);

  final SsoDevicePollResponse _self;
  final $Res Function(SsoDevicePollResponse) _then;

  /// Create a copy of SsoDevicePollResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _self.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SsoDevicePollResponse].
extension SsoDevicePollResponsePatterns on SsoDevicePollResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SsoDevicePollResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SsoDevicePollResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SsoDevicePollResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? status, String? error,
            @JsonKey(name: 'error_description') String? errorDescription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse() when $default != null:
        return $default(_that.status, _that.error, _that.errorDescription);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? status, String? error,
            @JsonKey(name: 'error_description') String? errorDescription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse():
        return $default(_that.status, _that.error, _that.errorDescription);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? status, String? error,
            @JsonKey(name: 'error_description') String? errorDescription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDevicePollResponse() when $default != null:
        return $default(_that.status, _that.error, _that.errorDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SsoDevicePollResponse implements SsoDevicePollResponse {
  _SsoDevicePollResponse(
      {this.status,
      this.error,
      @JsonKey(name: 'error_description') this.errorDescription});
  factory _SsoDevicePollResponse.fromJson(Map<String, dynamic> json) =>
      _$SsoDevicePollResponseFromJson(json);

  /// Status: "pending" or "complete"
  @override
  final String? status;

  /// Error code if something went wrong
  @override
  final String? error;

  /// Error description
  @override
  @JsonKey(name: 'error_description')
  final String? errorDescription;

  /// Create a copy of SsoDevicePollResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SsoDevicePollResponseCopyWith<_SsoDevicePollResponse> get copyWith =>
      __$SsoDevicePollResponseCopyWithImpl<_SsoDevicePollResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SsoDevicePollResponseToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SsoDevicePollResponse(status: $status, error: $error, errorDescription: $errorDescription)';
  }
}

/// @nodoc
abstract mixin class _$SsoDevicePollResponseCopyWith<$Res>
    implements $SsoDevicePollResponseCopyWith<$Res> {
  factory _$SsoDevicePollResponseCopyWith(_SsoDevicePollResponse value,
          $Res Function(_SsoDevicePollResponse) _then) =
      __$SsoDevicePollResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? status,
      String? error,
      @JsonKey(name: 'error_description') String? errorDescription});
}

/// @nodoc
class __$SsoDevicePollResponseCopyWithImpl<$Res>
    implements _$SsoDevicePollResponseCopyWith<$Res> {
  __$SsoDevicePollResponseCopyWithImpl(this._self, this._then);

  final _SsoDevicePollResponse _self;
  final $Res Function(_SsoDevicePollResponse) _then;

  /// Create a copy of SsoDevicePollResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_SsoDevicePollResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _self.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SsoDeviceInitRequest {
  /// BASE64URL-encoded SHA256 hash of the code verifier
  String get codeChallenge;

  /// Create a copy of SsoDeviceInitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SsoDeviceInitRequestCopyWith<SsoDeviceInitRequest> get copyWith =>
      _$SsoDeviceInitRequestCopyWithImpl<SsoDeviceInitRequest>(
          this as SsoDeviceInitRequest, _$identity);

  /// Serializes this SsoDeviceInitRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SsoDeviceInitRequest(codeChallenge: $codeChallenge)';
  }
}

/// @nodoc
abstract mixin class $SsoDeviceInitRequestCopyWith<$Res> {
  factory $SsoDeviceInitRequestCopyWith(SsoDeviceInitRequest value,
          $Res Function(SsoDeviceInitRequest) _then) =
      _$SsoDeviceInitRequestCopyWithImpl;
  @useResult
  $Res call({String codeChallenge});
}

/// @nodoc
class _$SsoDeviceInitRequestCopyWithImpl<$Res>
    implements $SsoDeviceInitRequestCopyWith<$Res> {
  _$SsoDeviceInitRequestCopyWithImpl(this._self, this._then);

  final SsoDeviceInitRequest _self;
  final $Res Function(SsoDeviceInitRequest) _then;

  /// Create a copy of SsoDeviceInitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeChallenge = null,
  }) {
    return _then(_self.copyWith(
      codeChallenge: null == codeChallenge
          ? _self.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SsoDeviceInitRequest].
extension SsoDeviceInitRequestPatterns on SsoDeviceInitRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SsoDeviceInitRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SsoDeviceInitRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SsoDeviceInitRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String codeChallenge)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest() when $default != null:
        return $default(_that.codeChallenge);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String codeChallenge) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest():
        return $default(_that.codeChallenge);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String codeChallenge)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceInitRequest() when $default != null:
        return $default(_that.codeChallenge);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SsoDeviceInitRequest implements SsoDeviceInitRequest {
  _SsoDeviceInitRequest({required this.codeChallenge});
  factory _SsoDeviceInitRequest.fromJson(Map<String, dynamic> json) =>
      _$SsoDeviceInitRequestFromJson(json);

  /// BASE64URL-encoded SHA256 hash of the code verifier
  @override
  final String codeChallenge;

  /// Create a copy of SsoDeviceInitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SsoDeviceInitRequestCopyWith<_SsoDeviceInitRequest> get copyWith =>
      __$SsoDeviceInitRequestCopyWithImpl<_SsoDeviceInitRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SsoDeviceInitRequestToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SsoDeviceInitRequest(codeChallenge: $codeChallenge)';
  }
}

/// @nodoc
abstract mixin class _$SsoDeviceInitRequestCopyWith<$Res>
    implements $SsoDeviceInitRequestCopyWith<$Res> {
  factory _$SsoDeviceInitRequestCopyWith(_SsoDeviceInitRequest value,
          $Res Function(_SsoDeviceInitRequest) _then) =
      __$SsoDeviceInitRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String codeChallenge});
}

/// @nodoc
class __$SsoDeviceInitRequestCopyWithImpl<$Res>
    implements _$SsoDeviceInitRequestCopyWith<$Res> {
  __$SsoDeviceInitRequestCopyWithImpl(this._self, this._then);

  final _SsoDeviceInitRequest _self;
  final $Res Function(_SsoDeviceInitRequest) _then;

  /// Create a copy of SsoDeviceInitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? codeChallenge = null,
  }) {
    return _then(_SsoDeviceInitRequest(
      codeChallenge: null == codeChallenge
          ? _self.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SsoDeviceAuthRequest {
  /// Device ID
  String get deviceId;

  /// Device name
  String get deviceName;

  /// App name
  String get appName;

  /// App version
  String get appVersion;

  /// The state identifier from initiation
  String get data;

  /// The original code verifier
  String get codeVerifier;

  /// Create a copy of SsoDeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SsoDeviceAuthRequestCopyWith<SsoDeviceAuthRequest> get copyWith =>
      _$SsoDeviceAuthRequestCopyWithImpl<SsoDeviceAuthRequest>(
          this as SsoDeviceAuthRequest, _$identity);

  /// Serializes this SsoDeviceAuthRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SsoDeviceAuthRequest(deviceId: $deviceId, deviceName: $deviceName, appName: $appName, appVersion: $appVersion, data: $data, codeVerifier: $codeVerifier)';
  }
}

/// @nodoc
abstract mixin class $SsoDeviceAuthRequestCopyWith<$Res> {
  factory $SsoDeviceAuthRequestCopyWith(SsoDeviceAuthRequest value,
          $Res Function(SsoDeviceAuthRequest) _then) =
      _$SsoDeviceAuthRequestCopyWithImpl;
  @useResult
  $Res call(
      {String deviceId,
      String deviceName,
      String appName,
      String appVersion,
      String data,
      String codeVerifier});
}

/// @nodoc
class _$SsoDeviceAuthRequestCopyWithImpl<$Res>
    implements $SsoDeviceAuthRequestCopyWith<$Res> {
  _$SsoDeviceAuthRequestCopyWithImpl(this._self, this._then);

  final SsoDeviceAuthRequest _self;
  final $Res Function(SsoDeviceAuthRequest) _then;

  /// Create a copy of SsoDeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? appName = null,
    Object? appVersion = null,
    Object? data = null,
    Object? codeVerifier = null,
  }) {
    return _then(_self.copyWith(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _self.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SsoDeviceAuthRequest].
extension SsoDeviceAuthRequestPatterns on SsoDeviceAuthRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SsoDeviceAuthRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SsoDeviceAuthRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SsoDeviceAuthRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String deviceId, String deviceName, String appName,
            String appVersion, String data, String codeVerifier)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest() when $default != null:
        return $default(_that.deviceId, _that.deviceName, _that.appName,
            _that.appVersion, _that.data, _that.codeVerifier);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String deviceId, String deviceName, String appName,
            String appVersion, String data, String codeVerifier)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest():
        return $default(_that.deviceId, _that.deviceName, _that.appName,
            _that.appVersion, _that.data, _that.codeVerifier);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String deviceId, String deviceName, String appName,
            String appVersion, String data, String codeVerifier)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SsoDeviceAuthRequest() when $default != null:
        return $default(_that.deviceId, _that.deviceName, _that.appName,
            _that.appVersion, _that.data, _that.codeVerifier);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SsoDeviceAuthRequest implements SsoDeviceAuthRequest {
  _SsoDeviceAuthRequest(
      {required this.deviceId,
      required this.deviceName,
      required this.appName,
      required this.appVersion,
      required this.data,
      required this.codeVerifier});
  factory _SsoDeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$SsoDeviceAuthRequestFromJson(json);

  /// Device ID
  @override
  final String deviceId;

  /// Device name
  @override
  final String deviceName;

  /// App name
  @override
  final String appName;

  /// App version
  @override
  final String appVersion;

  /// The state identifier from initiation
  @override
  final String data;

  /// The original code verifier
  @override
  final String codeVerifier;

  /// Create a copy of SsoDeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SsoDeviceAuthRequestCopyWith<_SsoDeviceAuthRequest> get copyWith =>
      __$SsoDeviceAuthRequestCopyWithImpl<_SsoDeviceAuthRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SsoDeviceAuthRequestToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SsoDeviceAuthRequest(deviceId: $deviceId, deviceName: $deviceName, appName: $appName, appVersion: $appVersion, data: $data, codeVerifier: $codeVerifier)';
  }
}

/// @nodoc
abstract mixin class _$SsoDeviceAuthRequestCopyWith<$Res>
    implements $SsoDeviceAuthRequestCopyWith<$Res> {
  factory _$SsoDeviceAuthRequestCopyWith(_SsoDeviceAuthRequest value,
          $Res Function(_SsoDeviceAuthRequest) _then) =
      __$SsoDeviceAuthRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String deviceId,
      String deviceName,
      String appName,
      String appVersion,
      String data,
      String codeVerifier});
}

/// @nodoc
class __$SsoDeviceAuthRequestCopyWithImpl<$Res>
    implements _$SsoDeviceAuthRequestCopyWith<$Res> {
  __$SsoDeviceAuthRequestCopyWithImpl(this._self, this._then);

  final _SsoDeviceAuthRequest _self;
  final $Res Function(_SsoDeviceAuthRequest) _then;

  /// Create a copy of SsoDeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? appName = null,
    Object? appVersion = null,
    Object? data = null,
    Object? codeVerifier = null,
  }) {
    return _then(_SsoDeviceAuthRequest(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _self.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _self.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
