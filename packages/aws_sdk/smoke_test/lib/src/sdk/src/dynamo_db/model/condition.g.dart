// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Condition extends Condition {
  @override
  final _i2.BuiltList<AttributeValue>? attributeValueList;
  @override
  final ComparisonOperator comparisonOperator;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeValueList.hashCode);
    _$hash = $jc(_$hash, comparisonOperator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition? _$v;

  _i2.ListBuilder<AttributeValue>? _attributeValueList;
  _i2.ListBuilder<AttributeValue> get attributeValueList =>
      _$this._attributeValueList ??= new _i2.ListBuilder<AttributeValue>();
  set attributeValueList(_i2.ListBuilder<AttributeValue>? attributeValueList) =>
      _$this._attributeValueList = attributeValueList;

  ComparisonOperator? _comparisonOperator;
  ComparisonOperator? get comparisonOperator => _$this._comparisonOperator;
  set comparisonOperator(ComparisonOperator? comparisonOperator) =>
      _$this._comparisonOperator = comparisonOperator;

  ConditionBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
