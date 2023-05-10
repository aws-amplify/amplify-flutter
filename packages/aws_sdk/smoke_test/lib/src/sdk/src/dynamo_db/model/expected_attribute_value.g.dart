// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.expected_attribute_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedAttributeValue extends ExpectedAttributeValue {
  @override
  final _i2.AttributeValue? value;
  @override
  final bool? exists;
  @override
  final _i3.ComparisonOperator? comparisonOperator;
  @override
  final _i4.BuiltList<_i2.AttributeValue>? attributeValueList;

  factory _$ExpectedAttributeValue(
          [void Function(ExpectedAttributeValueBuilder)? updates]) =>
      (new ExpectedAttributeValueBuilder()..update(updates))._build();

  _$ExpectedAttributeValue._(
      {this.value,
      this.exists,
      this.comparisonOperator,
      this.attributeValueList})
      : super._();

  @override
  ExpectedAttributeValue rebuild(
          void Function(ExpectedAttributeValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpectedAttributeValueBuilder toBuilder() =>
      new ExpectedAttributeValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpectedAttributeValue &&
        value == other.value &&
        exists == other.exists &&
        comparisonOperator == other.comparisonOperator &&
        attributeValueList == other.attributeValueList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jc(_$hash, comparisonOperator.hashCode);
    _$hash = $jc(_$hash, attributeValueList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExpectedAttributeValueBuilder
    implements Builder<ExpectedAttributeValue, ExpectedAttributeValueBuilder> {
  _$ExpectedAttributeValue? _$v;

  _i2.AttributeValue? _value;
  _i2.AttributeValue? get value => _$this._value;
  set value(_i2.AttributeValue? value) => _$this._value = value;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  _i3.ComparisonOperator? _comparisonOperator;
  _i3.ComparisonOperator? get comparisonOperator => _$this._comparisonOperator;
  set comparisonOperator(_i3.ComparisonOperator? comparisonOperator) =>
      _$this._comparisonOperator = comparisonOperator;

  _i4.ListBuilder<_i2.AttributeValue>? _attributeValueList;
  _i4.ListBuilder<_i2.AttributeValue> get attributeValueList =>
      _$this._attributeValueList ??= new _i4.ListBuilder<_i2.AttributeValue>();
  set attributeValueList(
          _i4.ListBuilder<_i2.AttributeValue>? attributeValueList) =>
      _$this._attributeValueList = attributeValueList;

  ExpectedAttributeValueBuilder() {
    ExpectedAttributeValue._init(this);
  }

  ExpectedAttributeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _exists = $v.exists;
      _comparisonOperator = $v.comparisonOperator;
      _attributeValueList = $v.attributeValueList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpectedAttributeValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpectedAttributeValue;
  }

  @override
  void update(void Function(ExpectedAttributeValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpectedAttributeValue build() => _build();

  _$ExpectedAttributeValue _build() {
    _$ExpectedAttributeValue _$result;
    try {
      _$result = _$v ??
          new _$ExpectedAttributeValue._(
              value: value,
              exists: exists,
              comparisonOperator: comparisonOperator,
              attributeValueList: _attributeValueList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeValueList';
        _attributeValueList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExpectedAttributeValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
