// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_virtual_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVirtualMfaDeviceRequest extends DeleteVirtualMfaDeviceRequest {
  @override
  final String serialNumber;

  factory _$DeleteVirtualMfaDeviceRequest(
          [void Function(DeleteVirtualMfaDeviceRequestBuilder)? updates]) =>
      (new DeleteVirtualMfaDeviceRequestBuilder()..update(updates))._build();

  _$DeleteVirtualMfaDeviceRequest._({required this.serialNumber}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'DeleteVirtualMfaDeviceRequest', 'serialNumber');
  }

  @override
  DeleteVirtualMfaDeviceRequest rebuild(
          void Function(DeleteVirtualMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVirtualMfaDeviceRequestBuilder toBuilder() =>
      new DeleteVirtualMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVirtualMfaDeviceRequest &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVirtualMfaDeviceRequestBuilder
    implements
        Builder<DeleteVirtualMfaDeviceRequest,
            DeleteVirtualMfaDeviceRequestBuilder> {
  _$DeleteVirtualMfaDeviceRequest? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  DeleteVirtualMfaDeviceRequestBuilder() {
    DeleteVirtualMfaDeviceRequest._init(this);
  }

  DeleteVirtualMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVirtualMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVirtualMfaDeviceRequest;
  }

  @override
  void update(void Function(DeleteVirtualMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVirtualMfaDeviceRequest build() => _build();

  _$DeleteVirtualMfaDeviceRequest _build() {
    final _$result = _$v ??
        new _$DeleteVirtualMfaDeviceRequest._(
            serialNumber: BuiltValueNullFieldError.checkNotNull(serialNumber,
                r'DeleteVirtualMfaDeviceRequest', 'serialNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
