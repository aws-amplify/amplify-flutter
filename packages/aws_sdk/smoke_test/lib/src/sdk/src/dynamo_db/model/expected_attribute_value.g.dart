// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.expected_attribute_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedAttributeValue extends ExpectedAttributeValue {
  @override
  final _i4.BuiltList<_i2.AttributeValue>? attributeValueList;
  @override
  final _i3.ComparisonOperator? comparisonOperator;
  @override
  final bool? exists;
  @override
  final _i2.AttributeValue? value;

  factory _$ExpectedAttributeValue(
          [void Function(ExpectedAttributeValueBuilder)? updates]) =>
      (new ExpectedAttributeValueBuilder()..update(updates))._build();

  _$ExpectedAttributeValue._(
      {this.attributeValueList,
      this.comparisonOperator,
      this.exists,
      this.value})
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
        attributeValueList == other.attributeValueList &&
        comparisonOperator == other.comparisonOperator &&
        exists == other.exists &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, attributeValueList.hashCode),
                comparisonOperator.hashCode),
            exists.hashCode),
        value.hashCode));
  }
}

class ExpectedAttributeValueBuilder
    implements Builder<ExpectedAttributeValue, ExpectedAttributeValueBuilder> {
  _$ExpectedAttributeValue? _$v;

  _i4.ListBuilder<_i2.AttributeValue>? _attributeValueList;
  _i4.ListBuilder<_i2.AttributeValue> get attributeValueList =>
      _$this._attributeValueList ??= new _i4.ListBuilder<_i2.AttributeValue>();
  set attributeValueList(
          _i4.ListBuilder<_i2.AttributeValue>? attributeValueList) =>
      _$this._attributeValueList = attributeValueList;

  _i3.ComparisonOperator? _comparisonOperator;
  _i3.ComparisonOperator? get comparisonOperator => _$this._comparisonOperator;
  set comparisonOperator(_i3.ComparisonOperator? comparisonOperator) =>
      _$this._comparisonOperator = comparisonOperator;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  _i2.AttributeValue? _value;
  _i2.AttributeValue? get value => _$this._value;
  set value(_i2.AttributeValue? value) => _$this._value = value;

  ExpectedAttributeValueBuilder() {
    ExpectedAttributeValue._init(this);
  }

  ExpectedAttributeValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeValueList = $v.attributeValueList?.toBuilder();
      _comparisonOperator = $v.comparisonOperator;
      _exists = $v.exists;
      _value = $v.value;
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
              attributeValueList: _attributeValueList?.build(),
              comparisonOperator: comparisonOperator,
              exists: exists,
              value: value);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
