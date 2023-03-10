// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.update_device_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeviceStatusRequest extends UpdateDeviceStatusRequest {
  @override
  final String accessToken;
  @override
  final String deviceKey;
  @override
  final _i3.DeviceRememberedStatusType? deviceRememberedStatus;

  factory _$UpdateDeviceStatusRequest(
          [void Function(UpdateDeviceStatusRequestBuilder)? updates]) =>
      (new UpdateDeviceStatusRequestBuilder()..update(updates))._build();

  _$UpdateDeviceStatusRequest._(
      {required this.accessToken,
      required this.deviceKey,
      this.deviceRememberedStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'UpdateDeviceStatusRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, r'UpdateDeviceStatusRequest', 'deviceKey');
  }

  @override
  UpdateDeviceStatusRequest rebuild(
          void Function(UpdateDeviceStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDeviceStatusRequestBuilder toBuilder() =>
      new UpdateDeviceStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeviceStatusRequest &&
        accessToken == other.accessToken &&
        deviceKey == other.deviceKey &&
        deviceRememberedStatus == other.deviceRememberedStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceRememberedStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDeviceStatusRequestBuilder
    implements
        Builder<UpdateDeviceStatusRequest, UpdateDeviceStatusRequestBuilder> {
  _$UpdateDeviceStatusRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  _i3.DeviceRememberedStatusType? _deviceRememberedStatus;
  _i3.DeviceRememberedStatusType? get deviceRememberedStatus =>
      _$this._deviceRememberedStatus;
  set deviceRememberedStatus(
          _i3.DeviceRememberedStatusType? deviceRememberedStatus) =>
      _$this._deviceRememberedStatus = deviceRememberedStatus;

  UpdateDeviceStatusRequestBuilder() {
    UpdateDeviceStatusRequest._init(this);
  }

  UpdateDeviceStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _deviceRememberedStatus = $v.deviceRememberedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeviceStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDeviceStatusRequest;
  }

  @override
  void update(void Function(UpdateDeviceStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeviceStatusRequest build() => _build();

  _$UpdateDeviceStatusRequest _build() {
    final _$result = _$v ??
        new _$UpdateDeviceStatusRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'UpdateDeviceStatusRequest', 'accessToken'),
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, r'UpdateDeviceStatusRequest', 'deviceKey'),
            deviceRememberedStatus: deviceRememberedStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
