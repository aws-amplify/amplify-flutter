// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateItemInput extends UpdateItemInput {
  @override
  final String tableName;
  @override
  final _i10.BuiltMap<String, _i3.AttributeValue> key;
  @override
  final _i10.BuiltMap<String, _i4.AttributeValueUpdate>? attributeUpdates;
  @override
  final _i10.BuiltMap<String, _i5.ExpectedAttributeValue>? expected;
  @override
  final _i6.ConditionalOperator? conditionalOperator;
  @override
  final _i7.ReturnValue? returnValues;
  @override
  final _i8.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i9.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final String? updateExpression;
  @override
  final String? conditionExpression;
  @override
  final _i10.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i10.BuiltMap<String, _i3.AttributeValue>? expressionAttributeValues;

  factory _$UpdateItemInput([void Function(UpdateItemInputBuilder)? updates]) =>
      (new UpdateItemInputBuilder()..update(updates))._build();

  _$UpdateItemInput._(
      {required this.tableName,
      required this.key,
      this.attributeUpdates,
      this.expected,
      this.conditionalOperator,
      this.returnValues,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.updateExpression,
      this.conditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateItemInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(key, r'UpdateItemInput', 'key');
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
        tableName == other.tableName &&
        key == other.key &&
        attributeUpdates == other.attributeUpdates &&
        expected == other.expected &&
        conditionalOperator == other.conditionalOperator &&
        returnValues == other.returnValues &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        updateExpression == other.updateExpression &&
        conditionExpression == other.conditionExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, attributeUpdates.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, returnValues.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, updateExpression.hashCode);
    _$hash = $jc(_$hash, conditionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateItemInputBuilder
    implements Builder<UpdateItemInput, UpdateItemInputBuilder> {
  _$UpdateItemInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i10.MapBuilder<String, _i3.AttributeValue>? _key;
  _i10.MapBuilder<String, _i3.AttributeValue> get key =>
      _$this._key ??= new _i10.MapBuilder<String, _i3.AttributeValue>();
  set key(_i10.MapBuilder<String, _i3.AttributeValue>? key) =>
      _$this._key = key;

  _i10.MapBuilder<String, _i4.AttributeValueUpdate>? _attributeUpdates;
  _i10.MapBuilder<String, _i4.AttributeValueUpdate> get attributeUpdates =>
      _$this._attributeUpdates ??=
          new _i10.MapBuilder<String, _i4.AttributeValueUpdate>();
  set attributeUpdates(
          _i10.MapBuilder<String, _i4.AttributeValueUpdate>?
              attributeUpdates) =>
      _$this._attributeUpdates = attributeUpdates;

  _i10.MapBuilder<String, _i5.ExpectedAttributeValue>? _expected;
  _i10.MapBuilder<String, _i5.ExpectedAttributeValue> get expected =>
      _$this._expected ??=
          new _i10.MapBuilder<String, _i5.ExpectedAttributeValue>();
  set expected(_i10.MapBuilder<String, _i5.ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

  _i6.ConditionalOperator? _conditionalOperator;
  _i6.ConditionalOperator? get conditionalOperator =>
      _$this._conditionalOperator;
  set conditionalOperator(_i6.ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  _i7.ReturnValue? _returnValues;
  _i7.ReturnValue? get returnValues => _$this._returnValues;
  set returnValues(_i7.ReturnValue? returnValues) =>
      _$this._returnValues = returnValues;

  _i8.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i8.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i8.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i9.ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  _i9.ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          _i9.ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  String? _updateExpression;
  String? get updateExpression => _$this._updateExpression;
  set updateExpression(String? updateExpression) =>
      _$this._updateExpression = updateExpression;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i10.MapBuilder<String, String>? _expressionAttributeNames;
  _i10.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??=
          new _i10.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i10.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i10.MapBuilder<String, _i3.AttributeValue>? _expressionAttributeValues;
  _i10.MapBuilder<String, _i3.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i10.MapBuilder<String, _i3.AttributeValue>();
  set expressionAttributeValues(
          _i10.MapBuilder<String, _i3.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  UpdateItemInputBuilder() {
    UpdateItemInput._init(this);
  }

  UpdateItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _key = $v.key.toBuilder();
      _attributeUpdates = $v.attributeUpdates?.toBuilder();
      _expected = $v.expected?.toBuilder();
      _conditionalOperator = $v.conditionalOperator;
      _returnValues = $v.returnValues;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _updateExpression = $v.updateExpression;
      _conditionExpression = $v.conditionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
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
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateItemInput', 'tableName'),
              key: key.build(),
              attributeUpdates: _attributeUpdates?.build(),
              expected: _expected?.build(),
              conditionalOperator: conditionalOperator,
              returnValues: returnValues,
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              updateExpression: updateExpression,
              conditionExpression: conditionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();
        _$failedField = 'attributeUpdates';
        _attributeUpdates?.build();
        _$failedField = 'expected';
        _expected?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
