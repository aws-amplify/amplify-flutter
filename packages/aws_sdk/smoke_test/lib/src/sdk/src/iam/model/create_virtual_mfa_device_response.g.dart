// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_virtual_mfa_device_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVirtualMfaDeviceResponse extends CreateVirtualMfaDeviceResponse {
  @override
  final _i2.VirtualMfaDevice virtualMfaDevice;

  factory _$CreateVirtualMfaDeviceResponse(
          [void Function(CreateVirtualMfaDeviceResponseBuilder)? updates]) =>
      (new CreateVirtualMfaDeviceResponseBuilder()..update(updates))._build();

  _$CreateVirtualMfaDeviceResponse._({required this.virtualMfaDevice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(virtualMfaDevice,
        r'CreateVirtualMfaDeviceResponse', 'virtualMfaDevice');
  }

  @override
  CreateVirtualMfaDeviceResponse rebuild(
          void Function(CreateVirtualMfaDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVirtualMfaDeviceResponseBuilder toBuilder() =>
      new CreateVirtualMfaDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVirtualMfaDeviceResponse &&
        virtualMfaDevice == other.virtualMfaDevice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, virtualMfaDevice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVirtualMfaDeviceResponseBuilder
    implements
        Builder<CreateVirtualMfaDeviceResponse,
            CreateVirtualMfaDeviceResponseBuilder> {
  _$CreateVirtualMfaDeviceResponse? _$v;

  _i2.VirtualMfaDeviceBuilder? _virtualMfaDevice;
  _i2.VirtualMfaDeviceBuilder get virtualMfaDevice =>
      _$this._virtualMfaDevice ??= new _i2.VirtualMfaDeviceBuilder();
  set virtualMfaDevice(_i2.VirtualMfaDeviceBuilder? virtualMfaDevice) =>
      _$this._virtualMfaDevice = virtualMfaDevice;

  CreateVirtualMfaDeviceResponseBuilder() {
    CreateVirtualMfaDeviceResponse._init(this);
  }

  CreateVirtualMfaDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _virtualMfaDevice = $v.virtualMfaDevice.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVirtualMfaDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVirtualMfaDeviceResponse;
  }

  @override
  void update(void Function(CreateVirtualMfaDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVirtualMfaDeviceResponse build() => _build();

  _$CreateVirtualMfaDeviceResponse _build() {
    _$CreateVirtualMfaDeviceResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateVirtualMfaDeviceResponse._(
              virtualMfaDevice: virtualMfaDevice.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'virtualMfaDevice';
        virtualMfaDevice.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVirtualMfaDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
