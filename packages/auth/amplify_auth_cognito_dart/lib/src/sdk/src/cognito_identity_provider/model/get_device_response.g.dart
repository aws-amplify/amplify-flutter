// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_device_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeviceResponse extends GetDeviceResponse {
  @override
  final DeviceType device;

  factory _$GetDeviceResponse([
    void Function(GetDeviceResponseBuilder)? updates,
  ]) => (GetDeviceResponseBuilder()..update(updates))._build();

  _$GetDeviceResponse._({required this.device}) : super._();
  @override
  GetDeviceResponse rebuild(void Function(GetDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeviceResponseBuilder toBuilder() =>
      GetDeviceResponseBuilder()..replace(this);

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

  DeviceTypeBuilder? _device;
  DeviceTypeBuilder get device => _$this._device ??= DeviceTypeBuilder();
  set device(DeviceTypeBuilder? device) => _$this._device = device;

  GetDeviceResponseBuilder();

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
      _$result = _$v ?? _$GetDeviceResponse._(device: device.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        device.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetDeviceResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
