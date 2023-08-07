// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteItemInput extends DeleteItemInput {
  @override
  final String tableName;
  @override
  final _i3.BuiltMap<String, AttributeValue> key;
  @override
  final _i3.BuiltMap<String, ExpectedAttributeValue>? expected;
  @override
  final ConditionalOperator? conditionalOperator;
  @override
  final ReturnValue? returnValues;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final String? conditionExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltMap<String, AttributeValue>? expressionAttributeValues;
  @override
  final ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;

  factory _$DeleteItemInput([void Function(DeleteItemInputBuilder)? updates]) =>
      (new DeleteItemInputBuilder()..update(updates))._build();

  _$DeleteItemInput._(
      {required this.tableName,
      required this.key,
      this.expected,
      this.conditionalOperator,
      this.returnValues,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.conditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      this.returnValuesOnConditionCheckFailure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DeleteItemInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(key, r'DeleteItemInput', 'key');
  }

  @override
  DeleteItemInput rebuild(void Function(DeleteItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteItemInputBuilder toBuilder() =>
      new DeleteItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteItemInput &&
        tableName == other.tableName &&
        key == other.key &&
        expected == other.expected &&
        conditionalOperator == other.conditionalOperator &&
        returnValues == other.returnValues &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        conditionExpression == other.conditionExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        returnValuesOnConditionCheckFailure ==
            other.returnValuesOnConditionCheckFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, returnValues.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, conditionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, returnValuesOnConditionCheckFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteItemInputBuilder
    implements Builder<DeleteItemInput, DeleteItemInputBuilder> {
  _$DeleteItemInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.MapBuilder<String, AttributeValue>? _key;
  _i3.MapBuilder<String, AttributeValue> get key =>
      _$this._key ??= new _i3.MapBuilder<String, AttributeValue>();
  set key(_i3.MapBuilder<String, AttributeValue>? key) => _$this._key = key;

  _i3.MapBuilder<String, ExpectedAttributeValue>? _expected;
  _i3.MapBuilder<String, ExpectedAttributeValue> get expected =>
      _$this._expected ??= new _i3.MapBuilder<String, ExpectedAttributeValue>();
  set expected(_i3.MapBuilder<String, ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

  ConditionalOperator? _conditionalOperator;
  ConditionalOperator? get conditionalOperator => _$this._conditionalOperator;
  set conditionalOperator(ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  ReturnValue? _returnValues;
  ReturnValue? get returnValues => _$this._returnValues;
  set returnValues(ReturnValue? returnValues) =>
      _$this._returnValues = returnValues;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i3.MapBuilder<String, String>? _expressionAttributeNames;
  _i3.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i3.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i3.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i3.MapBuilder<String, AttributeValue>? _expressionAttributeValues;
  _i3.MapBuilder<String, AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i3.MapBuilder<String, AttributeValue>();
  set expressionAttributeValues(
          _i3.MapBuilder<String, AttributeValue>? expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  ReturnValuesOnConditionCheckFailure? _returnValuesOnConditionCheckFailure;
  ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure =>
          _$this._returnValuesOnConditionCheckFailure;
  set returnValuesOnConditionCheckFailure(
          ReturnValuesOnConditionCheckFailure?
              returnValuesOnConditionCheckFailure) =>
      _$this._returnValuesOnConditionCheckFailure =
          returnValuesOnConditionCheckFailure;

  DeleteItemInputBuilder();

  DeleteItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _key = $v.key.toBuilder();
      _expected = $v.expected?.toBuilder();
      _conditionalOperator = $v.conditionalOperator;
      _returnValues = $v.returnValues;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _conditionExpression = $v.conditionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _returnValuesOnConditionCheckFailure =
          $v.returnValuesOnConditionCheckFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteItemInput;
  }

  @override
  void update(void Function(DeleteItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteItemInput build() => _build();

  _$DeleteItemInput _build() {
    _$DeleteItemInput _$result;
    try {
      _$result = _$v ??
          new _$DeleteItemInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'DeleteItemInput', 'tableName'),
              key: key.build(),
              expected: _expected?.build(),
              conditionalOperator: conditionalOperator,
              returnValues: returnValues,
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              conditionExpression: conditionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();
        _$failedField = 'expected';
        _expected?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
