// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_address_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetAddressAttributeResult extends ResetAddressAttributeResult {
  @override
  final AddressAttribute? address;

  factory _$ResetAddressAttributeResult(
          [void Function(ResetAddressAttributeResultBuilder)? updates]) =>
      (new ResetAddressAttributeResultBuilder()..update(updates))._build();

  _$ResetAddressAttributeResult._({this.address}) : super._();

  @override
  ResetAddressAttributeResult rebuild(
          void Function(ResetAddressAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetAddressAttributeResultBuilder toBuilder() =>
      new ResetAddressAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetAddressAttributeResult && address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetAddressAttributeResultBuilder
    implements
        Builder<ResetAddressAttributeResult,
            ResetAddressAttributeResultBuilder> {
  _$ResetAddressAttributeResult? _$v;

  AddressAttributeBuilder? _address;
  AddressAttributeBuilder get address =>
      _$this._address ??= new AddressAttributeBuilder();
  set address(AddressAttributeBuilder? address) => _$this._address = address;

  ResetAddressAttributeResultBuilder();

  ResetAddressAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetAddressAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetAddressAttributeResult;
  }

  @override
  void update(void Function(ResetAddressAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetAddressAttributeResult build() => _build();

  _$ResetAddressAttributeResult _build() {
    _$ResetAddressAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$ResetAddressAttributeResult._(address: _address?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResetAddressAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
