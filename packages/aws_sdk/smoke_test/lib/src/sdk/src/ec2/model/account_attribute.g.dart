// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAttribute extends AccountAttribute {
  @override
  final String? attributeName;
  @override
  final _i2.BuiltList<AccountAttributeValue>? attributeValues;

  factory _$AccountAttribute(
          [void Function(AccountAttributeBuilder)? updates]) =>
      (new AccountAttributeBuilder()..update(updates))._build();

  _$AccountAttribute._({this.attributeName, this.attributeValues}) : super._();

  @override
  AccountAttribute rebuild(void Function(AccountAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAttributeBuilder toBuilder() =>
      new AccountAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAttribute &&
        attributeName == other.attributeName &&
        attributeValues == other.attributeValues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jc(_$hash, attributeValues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountAttributeBuilder
    implements Builder<AccountAttribute, AccountAttributeBuilder> {
  _$AccountAttribute? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.ListBuilder<AccountAttributeValue>? _attributeValues;
  _i2.ListBuilder<AccountAttributeValue> get attributeValues =>
      _$this._attributeValues ??= new _i2.ListBuilder<AccountAttributeValue>();
  set attributeValues(
          _i2.ListBuilder<AccountAttributeValue>? attributeValues) =>
      _$this._attributeValues = attributeValues;

  AccountAttributeBuilder();

  AccountAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _attributeValues = $v.attributeValues?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAttribute;
  }

  @override
  void update(void Function(AccountAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountAttribute build() => _build();

  _$AccountAttribute _build() {
    _$AccountAttribute _$result;
    try {
      _$result = _$v ??
          new _$AccountAttribute._(
              attributeName: attributeName,
              attributeValues: _attributeValues?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeValues';
        _attributeValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
