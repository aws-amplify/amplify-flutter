// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_address_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyAddressAttributeResult extends ModifyAddressAttributeResult {
  @override
  final AddressAttribute? address;

  factory _$ModifyAddressAttributeResult(
          [void Function(ModifyAddressAttributeResultBuilder)? updates]) =>
      (new ModifyAddressAttributeResultBuilder()..update(updates))._build();

  _$ModifyAddressAttributeResult._({this.address}) : super._();

  @override
  ModifyAddressAttributeResult rebuild(
          void Function(ModifyAddressAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyAddressAttributeResultBuilder toBuilder() =>
      new ModifyAddressAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyAddressAttributeResult && address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyAddressAttributeResultBuilder
    implements
        Builder<ModifyAddressAttributeResult,
            ModifyAddressAttributeResultBuilder> {
  _$ModifyAddressAttributeResult? _$v;

  AddressAttributeBuilder? _address;
  AddressAttributeBuilder get address =>
      _$this._address ??= new AddressAttributeBuilder();
  set address(AddressAttributeBuilder? address) => _$this._address = address;

  ModifyAddressAttributeResultBuilder();

  ModifyAddressAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyAddressAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyAddressAttributeResult;
  }

  @override
  void update(void Function(ModifyAddressAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyAddressAttributeResult build() => _build();

  _$ModifyAddressAttributeResult _build() {
    _$ModifyAddressAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyAddressAttributeResult._(address: _address?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyAddressAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
