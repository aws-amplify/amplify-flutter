// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeviceRequest extends GetDeviceRequest {
  @override
  final String deviceKey;
  @override
  final String? accessToken;

  factory _$GetDeviceRequest(
          [void Function(GetDeviceRequestBuilder)? updates]) =>
      (new GetDeviceRequestBuilder()..update(updates))._build();

  _$GetDeviceRequest._({required this.deviceKey, this.accessToken})
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
        deviceKey == other.deviceKey &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDeviceRequestBuilder
    implements Builder<GetDeviceRequest, GetDeviceRequestBuilder> {
  _$GetDeviceRequest? _$v;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  GetDeviceRequestBuilder();

  GetDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceKey = $v.deviceKey;
      _accessToken = $v.accessToken;
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
            deviceKey: BuiltValueNullFieldError.checkNotNull(
                deviceKey, r'GetDeviceRequest', 'deviceKey'),
            accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
