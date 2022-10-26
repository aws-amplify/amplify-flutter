// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.condition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Condition extends Condition {
  @override
  final _i4.BuiltList<_i2.AttributeValue>? attributeValueList;
  @override
  final _i3.ComparisonOperator comparisonOperator;

  factory _$Condition([void Function(ConditionBuilder)? updates]) =>
      (new ConditionBuilder()..update(updates))._build();

  _$Condition._({this.attributeValueList, required this.comparisonOperator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        comparisonOperator, r'Condition', 'comparisonOperator');
  }

  @override
  Condition rebuild(void Function(ConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionBuilder toBuilder() => new ConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Condition &&
        attributeValueList == other.attributeValueList &&
        comparisonOperator == other.comparisonOperator;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, attributeValueList.hashCode), comparisonOperator.hashCode));
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition? _$v;

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

  ConditionBuilder() {
    Condition._init(this);
  }

  ConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeValueList = $v.attributeValueList?.toBuilder();
      _comparisonOperator = $v.comparisonOperator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Condition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Condition;
  }

  @override
  void update(void Function(ConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Condition build() => _build();

  _$Condition _build() {
    _$Condition _$result;
    try {
      _$result = _$v ??
          new _$Condition._(
              attributeValueList: _attributeValueList?.build(),
              comparisonOperator: BuiltValueNullFieldError.checkNotNull(
                  comparisonOperator, r'Condition', 'comparisonOperator'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeValueList';
        _attributeValueList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Condition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
