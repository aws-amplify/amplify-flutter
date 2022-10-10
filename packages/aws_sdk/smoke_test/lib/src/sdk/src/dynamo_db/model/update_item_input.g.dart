// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemInput extends UpdateItemInput {
  @override
  final _i10.BuiltMap<String, _i3.AttributeValueUpdate>? attributeUpdates;
  @override
  final String? conditionExpression;
  @override
  final _i4.ConditionalOperator? conditionalOperator;
  @override
  final _i10.BuiltMap<String, _i5.ExpectedAttributeValue>? expected;
  @override
  final _i10.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i10.BuiltMap<String, _i6.AttributeValue>? expressionAttributeValues;
  @override
  final _i10.BuiltMap<String, _i6.AttributeValue> key;
  @override
  final _i7.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i8.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final _i9.ReturnValue? returnValues;
  @override
  final String tableName;
  @override
  final String? updateExpression;

  factory _$UpdateItemInput([void Function(UpdateItemInputBuilder)? updates]) =>
      (new UpdateItemInputBuilder()..update(updates))._build();

  _$UpdateItemInput._(
      {this.attributeUpdates,
      this.conditionExpression,
      this.conditionalOperator,
      this.expected,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      required this.key,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.returnValues,
      required this.tableName,
      this.updateExpression})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'UpdateItemInput', 'key');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateItemInput', 'tableName');
  }

  @override
  UpdateItemInput rebuild(void Function(UpdateItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateItemInputBuilder toBuilder() =>
      new UpdateItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateItemInput &&
        attributeUpdates == other.attributeUpdates &&
        conditionExpression == other.conditionExpression &&
        conditionalOperator == other.conditionalOperator &&
        expected == other.expected &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        key == other.key &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        returnValues == other.returnValues &&
        tableName == other.tableName &&
        updateExpression == other.updateExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(0,
                                                    attributeUpdates.hashCode),
                                                conditionExpression.hashCode),
                                            conditionalOperator.hashCode),
                                        expected.hashCode),
                                    expressionAttributeNames.hashCode),
                                expressionAttributeValues.hashCode),
                            key.hashCode),
                        returnConsumedCapacity.hashCode),
                    returnItemCollectionMetrics.hashCode),
                returnValues.hashCode),
            tableName.hashCode),
        updateExpression.hashCode));
  }
}

class UpdateItemInputBuilder
    implements Builder<UpdateItemInput, UpdateItemInputBuilder> {
  _$UpdateItemInput? _$v;

  _i10.MapBuilder<String, _i3.AttributeValueUpdate>? _attributeUpdates;
  _i10.MapBuilder<String, _i3.AttributeValueUpdate> get attributeUpdates =>
      _$this._attributeUpdates ??=
          new _i10.MapBuilder<String, _i3.AttributeValueUpdate>();
  set attributeUpdates(
          _i10.MapBuilder<String, _i3.AttributeValueUpdate>?
              attributeUpdates) =>
      _$this._attributeUpdates = attributeUpdates;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i4.ConditionalOperator? _conditionalOperator;
  _i4.ConditionalOperator? get conditionalOperator =>
      _$this._conditionalOperator;
  set conditionalOperator(_i4.ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  _i10.MapBuilder<String, _i5.ExpectedAttributeValue>? _expected;
  _i10.MapBuilder<String, _i5.ExpectedAttributeValue> get expected =>
      _$this._expected ??=
          new _i10.MapBuilder<String, _i5.ExpectedAttributeValue>();
  set expected(_i10.MapBuilder<String, _i5.ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

  _i10.MapBuilder<String, String>? _expressionAttributeNames;
  _i10.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??=
          new _i10.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i10.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i10.MapBuilder<String, _i6.AttributeValue>? _expressionAttributeValues;
  _i10.MapBuilder<String, _i6.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i10.MapBuilder<String, _i6.AttributeValue>();
  set expressionAttributeValues(
          _i10.MapBuilder<String, _i6.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  _i10.MapBuilder<String, _i6.AttributeValue>? _key;
  _i10.MapBuilder<String, _i6.AttributeValue> get key =>
      _$this._key ??= new _i10.MapBuilder<String, _i6.AttributeValue>();
  set key(_i10.MapBuilder<String, _i6.AttributeValue>? key) =>
      _$this._key = key;

  _i7.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i7.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i7.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i8.ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  _i8.ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          _i8.ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  _i9.ReturnValue? _returnValues;
  _i9.ReturnValue? get returnValues => _$this._returnValues;
  set returnValues(_i9.ReturnValue? returnValues) =>
      _$this._returnValues = returnValues;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _updateExpression;
  String? get updateExpression => _$this._updateExpression;
  set updateExpression(String? updateExpression) =>
      _$this._updateExpression = updateExpression;

  UpdateItemInputBuilder() {
    UpdateItemInput._init(this);
  }

  UpdateItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeUpdates = $v.attributeUpdates?.toBuilder();
      _conditionExpression = $v.conditionExpression;
      _conditionalOperator = $v.conditionalOperator;
      _expected = $v.expected?.toBuilder();
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _key = $v.key.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _returnValues = $v.returnValues;
      _tableName = $v.tableName;
      _updateExpression = $v.updateExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateItemInput;
  }

  @override
  void update(void Function(UpdateItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateItemInput build() => _build();

  _$UpdateItemInput _build() {
    _$UpdateItemInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateItemInput._(
              attributeUpdates: _attributeUpdates?.build(),
              conditionExpression: conditionExpression,
              conditionalOperator: conditionalOperator,
              expected: _expected?.build(),
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              key: key.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              returnValues: returnValues,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateItemInput', 'tableName'),
              updateExpression: updateExpression);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeUpdates';
        _attributeUpdates?.build();

        _$failedField = 'expected';
        _expected?.build();
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
        _$failedField = 'key';
        key.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
