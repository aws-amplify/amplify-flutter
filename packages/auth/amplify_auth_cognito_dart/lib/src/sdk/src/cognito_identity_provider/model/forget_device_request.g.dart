// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.forget_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgetDeviceRequest extends ForgetDeviceRequest {
  @override
  final String? accessToken;
  @override
  final String deviceKey;

  factory _$ForgetDeviceRequest(
          [void Function(ForgetDeviceRequestBuilder)? updates]) =>
      (new ForgetDeviceRequestBuilder()..update(updates))._build();

  _$ForgetDeviceRequest._({this.accessToken, required this.deviceKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, r'ForgetDeviceRequest', 'deviceKey');
  }

  @override
  ForgetDeviceRequest rebuild(
          void Function(ForgetDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgetDeviceRequestBuilder toBuilder() =>
      new ForgetDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgetDeviceRequest &&
        accessToken == other.accessToken &&
        deviceKey == other.deviceKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ForgetDeviceRequestBuilder
    implements Builder<ForgetDeviceRequest, ForgetDeviceRequestBuilder> {
  _$ForgetDeviceRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  ForgetDeviceRequestBuilder() {
    ForgetDeviceRequest._init(this);
  }

  ForgetDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgetDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgetDeviceRequest;
  }

  @override
  void update(void Function(ForgetDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgetDeviceRequest build() => _build();

  _$ForgetDeviceRequest _build() {
    final _$result = _$v ??
        new _$ForgetDeviceRequest._(
            accessToken: accessToken,
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, r'ForgetDeviceRequest', 'deviceKey'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
