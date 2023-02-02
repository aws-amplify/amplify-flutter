// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeviceRequest extends GetDeviceRequest {
  @override
  final String? accessToken;
  @override
  final String deviceKey;

  factory _$GetDeviceRequest(
          [void Function(GetDeviceRequestBuilder)? updates]) =>
      (new GetDeviceRequestBuilder()..update(updates))._build();

  _$GetDeviceRequest._({this.accessToken, required this.deviceKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceKey, r'GetDeviceRequest', 'deviceKey');
  }

  @override
  GetDeviceRequest rebuild(void Function(GetDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeviceRequestBuilder toBuilder() =>
      new GetDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeviceRequest &&
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

class GetDeviceRequestBuilder
    implements Builder<GetDeviceRequest, GetDeviceRequestBuilder> {
  _$GetDeviceRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  GetDeviceRequestBuilder() {
    GetDeviceRequest._init(this);
  }

  GetDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _deviceKey = $v.deviceKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeviceRequest;
  }

  @override
  void update(void Function(GetDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeviceRequest build() => _build();

  _$GetDeviceRequest _build() {
    final _$result = _$v ??
        new _$GetDeviceRequest._(
            accessToken: accessToken,
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, r'GetDeviceRequest', 'deviceKey'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
