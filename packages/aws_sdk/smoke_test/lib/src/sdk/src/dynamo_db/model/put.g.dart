// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.put;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Put extends Put {
  @override
  final String? conditionExpression;
  @override
  final _i4.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i4.BuiltMap<String, _i2.AttributeValue>? expressionAttributeValues;
  @override
  final _i4.BuiltMap<String, _i2.AttributeValue> item;
  @override
  final _i3.ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;
  @override
  final String tableName;

  factory _$Put([void Function(PutBuilder)? updates]) =>
      (new PutBuilder()..update(updates))._build();

  _$Put._(
      {this.conditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      required this.item,
      this.returnValuesOnConditionCheckFailure,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(item, r'Put', 'item');
    BuiltValueNullFieldError.checkNotNull(tableName, r'Put', 'tableName');
  }

  @override
  Put rebuild(void Function(PutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBuilder toBuilder() => new PutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Put &&
        conditionExpression == other.conditionExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        item == other.item &&
        returnValuesOnConditionCheckFailure ==
            other.returnValuesOnConditionCheckFailure &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, conditionExpression.hashCode),
                        expressionAttributeNames.hashCode),
                    expressionAttributeValues.hashCode),
                item.hashCode),
            returnValuesOnConditionCheckFailure.hashCode),
        tableName.hashCode));
  }
}

class PutBuilder implements Builder<Put, PutBuilder> {
  _$Put? _$v;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i4.MapBuilder<String, String>? _expressionAttributeNames;
  _i4.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i4.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i4.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i4.MapBuilder<String, _i2.AttributeValue>? _expressionAttributeValues;
  _i4.MapBuilder<String, _i2.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i4.MapBuilder<String, _i2.AttributeValue>();
  set expressionAttributeValues(
          _i4.MapBuilder<String, _i2.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  _i4.MapBuilder<String, _i2.AttributeValue>? _item;
  _i4.MapBuilder<String, _i2.AttributeValue> get item =>
      _$this._item ??= new _i4.MapBuilder<String, _i2.AttributeValue>();
  set item(_i4.MapBuilder<String, _i2.AttributeValue>? item) =>
      _$this._item = item;

  _i3.ReturnValuesOnConditionCheckFailure? _returnValuesOnConditionCheckFailure;
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure =>
          _$this._returnValuesOnConditionCheckFailure;
  set returnValuesOnConditionCheckFailure(
          _i3.ReturnValuesOnConditionCheckFailure?
              returnValuesOnConditionCheckFailure) =>
      _$this._returnValuesOnConditionCheckFailure =
          returnValuesOnConditionCheckFailure;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  PutBuilder() {
    Put._init(this);
  }

  PutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditionExpression = $v.conditionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _item = $v.item.toBuilder();
      _returnValuesOnConditionCheckFailure =
          $v.returnValuesOnConditionCheckFailure;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Put other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Put;
  }

  @override
  void update(void Function(PutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Put build() => _build();

  _$Put _build() {
    _$Put _$result;
    try {
      _$result = _$v ??
          new _$Put._(
              conditionExpression: conditionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              item: item.build(),
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'Put', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Put', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
