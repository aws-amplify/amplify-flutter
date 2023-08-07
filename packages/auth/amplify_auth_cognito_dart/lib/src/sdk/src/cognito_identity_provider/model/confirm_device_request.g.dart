// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmDeviceRequest extends ConfirmDeviceRequest {
  @override
  final String accessToken;
  @override
  final String deviceKey;
  @override
  final DeviceSecretVerifierConfigType? deviceSecretVerifierConfig;
  @override
  final String? deviceName;

  factory _$ConfirmDeviceRequest(
          [void Function(ConfirmDeviceRequestBuilder)? updates]) =>
      (new ConfirmDeviceRequestBuilder()..update(updates))._build();

  _$ConfirmDeviceRequest._(
      {required this.accessToken,
      required this.deviceKey,
      this.deviceSecretVerifierConfig,
      this.deviceName})
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
        deviceSecretVerifierConfig == other.deviceSecretVerifierConfig &&
        deviceName == other.deviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceSecretVerifierConfig.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
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

  DeviceSecretVerifierConfigTypeBuilder? _deviceSecretVerifierConfig;
  DeviceSecretVerifierConfigTypeBuilder get deviceSecretVerifierConfig =>
      _$this._deviceSecretVerifierConfig ??=
          new DeviceSecretVerifierConfigTypeBuilder();
  set deviceSecretVerifierConfig(
          DeviceSecretVerifierConfigTypeBuilder? deviceSecretVerifierConfig) =>
      _$this._deviceSecretVerifierConfig = deviceSecretVerifierConfig;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  ConfirmDeviceRequestBuilder();

  ConfirmDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _deviceSecretVerifierConfig = $v.deviceSecretVerifierConfig?.toBuilder();
      _deviceName = $v.deviceName;
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
              deviceSecretVerifierConfig: _deviceSecretVerifierConfig?.build(),
              deviceName: deviceName);
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
