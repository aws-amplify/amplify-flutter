// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_address_transfer_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableAddressTransferResult extends EnableAddressTransferResult {
  @override
  final AddressTransfer? addressTransfer;

  factory _$EnableAddressTransferResult(
          [void Function(EnableAddressTransferResultBuilder)? updates]) =>
      (new EnableAddressTransferResultBuilder()..update(updates))._build();

  _$EnableAddressTransferResult._({this.addressTransfer}) : super._();

  @override
  EnableAddressTransferResult rebuild(
          void Function(EnableAddressTransferResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableAddressTransferResultBuilder toBuilder() =>
      new EnableAddressTransferResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableAddressTransferResult &&
        addressTransfer == other.addressTransfer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addressTransfer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableAddressTransferResultBuilder
    implements
        Builder<EnableAddressTransferResult,
            EnableAddressTransferResultBuilder> {
  _$EnableAddressTransferResult? _$v;

  AddressTransferBuilder? _addressTransfer;
  AddressTransferBuilder get addressTransfer =>
      _$this._addressTransfer ??= new AddressTransferBuilder();
  set addressTransfer(AddressTransferBuilder? addressTransfer) =>
      _$this._addressTransfer = addressTransfer;

  EnableAddressTransferResultBuilder();

  EnableAddressTransferResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressTransfer = $v.addressTransfer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableAddressTransferResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableAddressTransferResult;
  }

  @override
  void update(void Function(EnableAddressTransferResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableAddressTransferResult build() => _build();

  _$EnableAddressTransferResult _build() {
    _$EnableAddressTransferResult _$result;
    try {
      _$result = _$v ??
          new _$EnableAddressTransferResult._(
              addressTransfer: _addressTransfer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addressTransfer';
        _addressTransfer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableAddressTransferResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
