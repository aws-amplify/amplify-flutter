// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.confirm_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmDeviceRequest extends ConfirmDeviceRequest {
  @override
  final String accessToken;
  @override
  final String deviceKey;
  @override
  final String? deviceName;
  @override
  final _i3.DeviceSecretVerifierConfigType? deviceSecretVerifierConfig;

  factory _$ConfirmDeviceRequest(
          [void Function(ConfirmDeviceRequestBuilder)? updates]) =>
      (new ConfirmDeviceRequestBuilder()..update(updates))._build();

  _$ConfirmDeviceRequest._(
      {required this.accessToken,
      required this.deviceKey,
      this.deviceName,
      this.deviceSecretVerifierConfig})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'ConfirmDeviceRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, 'ConfirmDeviceRequest', 'deviceKey');
  }

  @override
  ConfirmDeviceRequest rebuild(
          void Function(ConfirmDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmDeviceRequestBuilder toBuilder() =>
      new ConfirmDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmDeviceRequest &&
        accessToken == other.accessToken &&
        deviceKey == other.deviceKey &&
        deviceName == other.deviceName &&
        deviceSecretVerifierConfig == other.deviceSecretVerifierConfig;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessToken.hashCode), deviceKey.hashCode),
            deviceName.hashCode),
        deviceSecretVerifierConfig.hashCode));
  }
}

class ConfirmDeviceRequestBuilder
    implements Builder<ConfirmDeviceRequest, ConfirmDeviceRequestBuilder> {
  _$ConfirmDeviceRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  _i3.DeviceSecretVerifierConfigTypeBuilder? _deviceSecretVerifierConfig;
  _i3.DeviceSecretVerifierConfigTypeBuilder get deviceSecretVerifierConfig =>
      _$this._deviceSecretVerifierConfig ??=
          new _i3.DeviceSecretVerifierConfigTypeBuilder();
  set deviceSecretVerifierConfig(
          _i3.DeviceSecretVerifierConfigTypeBuilder?
              deviceSecretVerifierConfig) =>
      _$this._deviceSecretVerifierConfig = deviceSecretVerifierConfig;

  ConfirmDeviceRequestBuilder() {
    ConfirmDeviceRequest._init(this);
  }

  ConfirmDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _deviceName = $v.deviceName;
      _deviceSecretVerifierConfig = $v.deviceSecretVerifierConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmDeviceRequest;
  }

  @override
  void update(void Function(ConfirmDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmDeviceRequest build() => _build();

  _$ConfirmDeviceRequest _build() {
    _$ConfirmDeviceRequest _$result;
    try {
      _$result = _$v ??
          new _$ConfirmDeviceRequest._(
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, 'ConfirmDeviceRequest', 'accessToken'),
              deviceKey: BuiltValueNullFieldError.checkNotNull(
                  deviceKey, 'ConfirmDeviceRequest', 'deviceKey'),
              deviceName: deviceName,
              deviceSecretVerifierConfig: _deviceSecretVerifierConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceSecretVerifierConfig';
        _deviceSecretVerifierConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConfirmDeviceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
