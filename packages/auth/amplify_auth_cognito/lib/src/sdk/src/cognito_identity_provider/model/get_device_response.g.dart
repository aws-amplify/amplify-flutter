// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_device_response;

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
        device, 'GetDeviceResponse', 'device');
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
    return $jf($jc(0, device.hashCode));
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
            'GetDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
