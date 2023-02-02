// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeviceResponse extends GetDeviceResponse {
  @override
  final _i2.DeviceType device;

  factory _$GetDeviceResponse(
          [void Function(GetDeviceResponseBuilder)? updates]) =>
      (new GetDeviceResponseBuilder()..update(updates))._build();

  _$GetDeviceResponse._({required this.device}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        device, r'GetDeviceResponse', 'device');
  }

  @override
  GetDeviceResponse rebuild(void Function(GetDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeviceResponseBuilder toBuilder() =>
      new GetDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeviceResponse && device == other.device;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDeviceResponseBuilder
    implements Builder<GetDeviceResponse, GetDeviceResponseBuilder> {
  _$GetDeviceResponse? _$v;

  _i2.DeviceTypeBuilder? _device;
  _i2.DeviceTypeBuilder get device =>
      _$this._device ??= new _i2.DeviceTypeBuilder();
  set device(_i2.DeviceTypeBuilder? device) => _$this._device = device;

  GetDeviceResponseBuilder() {
    GetDeviceResponse._init(this);
  }

  GetDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeviceResponse;
  }

  @override
  void update(void Function(GetDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeviceResponse build() => _build();

  _$GetDeviceResponse _build() {
    _$GetDeviceResponse _$result;
    try {
      _$result = _$v ?? new _$GetDeviceResponse._(device: device.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        device.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
