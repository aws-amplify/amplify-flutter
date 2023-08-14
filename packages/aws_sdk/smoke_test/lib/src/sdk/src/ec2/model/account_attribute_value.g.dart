// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_attribute_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAttributeValue extends AccountAttributeValue {
  @override
  final String? attributeValue;

  factory _$AccountAttributeValue(
          [void Function(AccountAttributeValueBuilder)? updates]) =>
      (new AccountAttributeValueBuilder()..update(updates))._build();

  _$AccountAttributeValue._({this.attributeValue}) : super._();

  @override
  AccountAttributeValue rebuild(
          void Function(AccountAttributeValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAttributeValueBuilder toBuilder() =>
      new AccountAttributeValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAttributeValue &&
        attributeValue == other.attributeValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountAttributeValueBuilder
    implements Builder<AccountAttributeValue, AccountAttributeValueBuilder> {
  _$AccountAttributeValue? _$v;

  String? _attributeValue;
  String? get attributeValue => _$this._attributeValue;
  set attributeValue(String? attributeValue) =>
      _$this._attributeValue = attributeValue;

  AccountAttributeValueBuilder();

  AccountAttributeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeValue = $v.attributeValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAttributeValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAttributeValue;
  }

  @override
  void update(void Function(AccountAttributeValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountAttributeValue build() => _build();

  _$AccountAttributeValue _build() {
    final _$result =
        _$v ?? new _$AccountAttributeValue._(attributeValue: attributeValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
