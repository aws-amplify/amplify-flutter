// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_address_transfer_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptAddressTransferResult extends AcceptAddressTransferResult {
  @override
  final AddressTransfer? addressTransfer;

  factory _$AcceptAddressTransferResult(
          [void Function(AcceptAddressTransferResultBuilder)? updates]) =>
      (new AcceptAddressTransferResultBuilder()..update(updates))._build();

  _$AcceptAddressTransferResult._({this.addressTransfer}) : super._();

  @override
  AcceptAddressTransferResult rebuild(
          void Function(AcceptAddressTransferResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptAddressTransferResultBuilder toBuilder() =>
      new AcceptAddressTransferResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptAddressTransferResult &&
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

class AcceptAddressTransferResultBuilder
    implements
        Builder<AcceptAddressTransferResult,
            AcceptAddressTransferResultBuilder> {
  _$AcceptAddressTransferResult? _$v;

  AddressTransferBuilder? _addressTransfer;
  AddressTransferBuilder get addressTransfer =>
      _$this._addressTransfer ??= new AddressTransferBuilder();
  set addressTransfer(AddressTransferBuilder? addressTransfer) =>
      _$this._addressTransfer = addressTransfer;

  AcceptAddressTransferResultBuilder();

  AcceptAddressTransferResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressTransfer = $v.addressTransfer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptAddressTransferResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptAddressTransferResult;
  }

  @override
  void update(void Function(AcceptAddressTransferResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptAddressTransferResult build() => _build();

  _$AcceptAddressTransferResult _build() {
    _$AcceptAddressTransferResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptAddressTransferResult._(
              addressTransfer: _addressTransfer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addressTransfer';
        _addressTransfer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptAddressTransferResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
