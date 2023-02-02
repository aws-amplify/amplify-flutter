// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_device_request;

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
        accessToken, r'ConfirmDeviceRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, r'ConfirmDeviceRequest', 'deviceKey');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, deviceSecretVerifierConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
                  accessToken, r'ConfirmDeviceRequest', 'accessToken'),
              deviceKey: BuiltValueNullFieldError.checkNotNull(
                  deviceKey, r'ConfirmDeviceRequest', 'deviceKey'),
              deviceName: deviceName,
              deviceSecretVerifierConfig: _deviceSecretVerifierConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceSecretVerifierConfig';
        _deviceSecretVerifierConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfirmDeviceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
