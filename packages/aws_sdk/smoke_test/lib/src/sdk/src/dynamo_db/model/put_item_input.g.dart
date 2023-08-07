// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutItemInput extends PutItemInput {
  @override
  final String tableName;
  @override
  final _i3.BuiltMap<String, AttributeValue> item;
  @override
  final _i3.BuiltMap<String, ExpectedAttributeValue>? expected;
  @override
  final ReturnValue? returnValues;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final ConditionalOperator? conditionalOperator;
  @override
  final String? conditionExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltMap<String, AttributeValue>? expressionAttributeValues;
  @override
  final ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;

  factory _$PutItemInput([void Function(PutItemInputBuilder)? updates]) =>
      (new PutItemInputBuilder()..update(updates))._build();

  _$PutItemInput._(
      {required this.tableName,
      required this.item,
      this.expected,
      this.returnValues,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.conditionalOperator,
      this.conditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      this.returnValuesOnConditionCheckFailure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'PutItemInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(item, r'PutItemInput', 'item');
  }

  @override
  PutItemInput rebuild(void Function(PutItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutItemInputBuilder toBuilder() => new PutItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutItemInput &&
        tableName == other.tableName &&
        item == other.item &&
        expected == other.expected &&
        returnValues == other.returnValues &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        conditionalOperator == other.conditionalOperator &&
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
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, returnValues.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, conditionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, returnValuesOnConditionCheckFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutItemInputBuilder
    implements Builder<PutItemInput, PutItemInputBuilder> {
  _$PutItemInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.MapBuilder<String, AttributeValue>? _item;
  _i3.MapBuilder<String, AttributeValue> get item =>
      _$this._item ??= new _i3.MapBuilder<String, AttributeValue>();
  set item(_i3.MapBuilder<String, AttributeValue>? item) => _$this._item = item;

  _i3.MapBuilder<String, ExpectedAttributeValue>? _expected;
  _i3.MapBuilder<String, ExpectedAttributeValue> get expected =>
      _$this._expected ??= new _i3.MapBuilder<String, ExpectedAttributeValue>();
  set expected(_i3.MapBuilder<String, ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

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

  ConditionalOperator? _conditionalOperator;
  ConditionalOperator? get conditionalOperator => _$this._conditionalOperator;
  set conditionalOperator(ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

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

  PutItemInputBuilder();

  PutItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _item = $v.item.toBuilder();
      _expected = $v.expected?.toBuilder();
      _returnValues = $v.returnValues;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _conditionalOperator = $v.conditionalOperator;
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
  void replace(PutItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutItemInput;
  }

  @override
  void update(void Function(PutItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutItemInput build() => _build();

  _$PutItemInput _build() {
    _$PutItemInput _$result;
    try {
      _$result = _$v ??
          new _$PutItemInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'PutItemInput', 'tableName'),
              item: item.build(),
              expected: _expected?.build(),
              returnValues: returnValues,
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              conditionalOperator: conditionalOperator,
              conditionExpression: conditionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
        _$failedField = 'expected';
        _expected?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
