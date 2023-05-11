// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.put_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutItemInput extends PutItemInput {
  @override
  final String tableName;
  @override
  final _i9.BuiltMap<String, _i3.AttributeValue> item;
  @override
  final _i9.BuiltMap<String, _i4.ExpectedAttributeValue>? expected;
  @override
  final _i5.ReturnValue? returnValues;
  @override
  final _i6.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i7.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final _i8.ConditionalOperator? conditionalOperator;
  @override
  final String? conditionExpression;
  @override
  final _i9.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i9.BuiltMap<String, _i3.AttributeValue>? expressionAttributeValues;

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
      this.expressionAttributeValues})
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
        expressionAttributeValues == other.expressionAttributeValues;
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

  _i9.MapBuilder<String, _i3.AttributeValue>? _item;
  _i9.MapBuilder<String, _i3.AttributeValue> get item =>
      _$this._item ??= new _i9.MapBuilder<String, _i3.AttributeValue>();
  set item(_i9.MapBuilder<String, _i3.AttributeValue>? item) =>
      _$this._item = item;

  _i9.MapBuilder<String, _i4.ExpectedAttributeValue>? _expected;
  _i9.MapBuilder<String, _i4.ExpectedAttributeValue> get expected =>
      _$this._expected ??=
          new _i9.MapBuilder<String, _i4.ExpectedAttributeValue>();
  set expected(_i9.MapBuilder<String, _i4.ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

  _i5.ReturnValue? _returnValues;
  _i5.ReturnValue? get returnValues => _$this._returnValues;
  set returnValues(_i5.ReturnValue? returnValues) =>
      _$this._returnValues = returnValues;

  _i6.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i6.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i6.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i7.ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  _i7.ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          _i7.ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  _i8.ConditionalOperator? _conditionalOperator;
  _i8.ConditionalOperator? get conditionalOperator =>
      _$this._conditionalOperator;
  set conditionalOperator(_i8.ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i9.MapBuilder<String, String>? _expressionAttributeNames;
  _i9.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i9.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i9.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i9.MapBuilder<String, _i3.AttributeValue>? _expressionAttributeValues;
  _i9.MapBuilder<String, _i3.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i9.MapBuilder<String, _i3.AttributeValue>();
  set expressionAttributeValues(
          _i9.MapBuilder<String, _i3.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  PutItemInputBuilder() {
    PutItemInput._init(this);
  }

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
              expressionAttributeValues: _expressionAttributeValues?.build());
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
