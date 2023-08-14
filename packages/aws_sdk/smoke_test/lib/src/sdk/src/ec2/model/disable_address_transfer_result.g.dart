// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_address_transfer_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableAddressTransferResult extends DisableAddressTransferResult {
  @override
  final AddressTransfer? addressTransfer;

  factory _$DisableAddressTransferResult(
          [void Function(DisableAddressTransferResultBuilder)? updates]) =>
      (new DisableAddressTransferResultBuilder()..update(updates))._build();

  _$DisableAddressTransferResult._({this.addressTransfer}) : super._();

  @override
  DisableAddressTransferResult rebuild(
          void Function(DisableAddressTransferResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableAddressTransferResultBuilder toBuilder() =>
      new DisableAddressTransferResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableAddressTransferResult &&
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

class DisableAddressTransferResultBuilder
    implements
        Builder<DisableAddressTransferResult,
            DisableAddressTransferResultBuilder> {
  _$DisableAddressTransferResult? _$v;

  AddressTransferBuilder? _addressTransfer;
  AddressTransferBuilder get addressTransfer =>
      _$this._addressTransfer ??= new AddressTransferBuilder();
  set addressTransfer(AddressTransferBuilder? addressTransfer) =>
      _$this._addressTransfer = addressTransfer;

  DisableAddressTransferResultBuilder();

  DisableAddressTransferResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressTransfer = $v.addressTransfer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableAddressTransferResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableAddressTransferResult;
  }

  @override
  void update(void Function(DisableAddressTransferResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableAddressTransferResult build() => _build();

  _$DisableAddressTransferResult _build() {
    _$DisableAddressTransferResult _$result;
    try {
      _$result = _$v ??
          new _$DisableAddressTransferResult._(
              addressTransfer: _addressTransfer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addressTransfer';
        _addressTransfer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableAddressTransferResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
