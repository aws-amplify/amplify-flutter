// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteItemInput extends DeleteItemInput {
  @override
  final String? conditionExpression;
  @override
  final _i3.ConditionalOperator? conditionalOperator;
  @override
  final _i9.BuiltMap<String, _i4.ExpectedAttributeValue>? expected;
  @override
  final _i9.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i9.BuiltMap<String, _i5.AttributeValue>? expressionAttributeValues;
  @override
  final _i9.BuiltMap<String, _i5.AttributeValue> key;
  @override
  final _i6.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i7.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final _i8.ReturnValue? returnValues;
  @override
  final String tableName;

  factory _$DeleteItemInput([void Function(DeleteItemInputBuilder)? updates]) =>
      (new DeleteItemInputBuilder()..update(updates))._build();

  _$DeleteItemInput._(
      {this.conditionExpression,
      this.conditionalOperator,
      this.expected,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      required this.key,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.returnValues,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'DeleteItemInput', 'key');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DeleteItemInput', 'tableName');
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
        conditionExpression == other.conditionExpression &&
        conditionalOperator == other.conditionalOperator &&
        expected == other.expected &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        key == other.key &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        returnValues == other.returnValues &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conditionExpression.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jc(_$hash, returnValues.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteItemInputBuilder
    implements Builder<DeleteItemInput, DeleteItemInputBuilder> {
  _$DeleteItemInput? _$v;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i3.ConditionalOperator? _conditionalOperator;
  _i3.ConditionalOperator? get conditionalOperator =>
      _$this._conditionalOperator;
  set conditionalOperator(_i3.ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  _i9.MapBuilder<String, _i4.ExpectedAttributeValue>? _expected;
  _i9.MapBuilder<String, _i4.ExpectedAttributeValue> get expected =>
      _$this._expected ??=
          new _i9.MapBuilder<String, _i4.ExpectedAttributeValue>();
  set expected(_i9.MapBuilder<String, _i4.ExpectedAttributeValue>? expected) =>
      _$this._expected = expected;

  _i9.MapBuilder<String, String>? _expressionAttributeNames;
  _i9.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i9.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i9.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i9.MapBuilder<String, _i5.AttributeValue>? _expressionAttributeValues;
  _i9.MapBuilder<String, _i5.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i9.MapBuilder<String, _i5.AttributeValue>();
  set expressionAttributeValues(
          _i9.MapBuilder<String, _i5.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  _i9.MapBuilder<String, _i5.AttributeValue>? _key;
  _i9.MapBuilder<String, _i5.AttributeValue> get key =>
      _$this._key ??= new _i9.MapBuilder<String, _i5.AttributeValue>();
  set key(_i9.MapBuilder<String, _i5.AttributeValue>? key) => _$this._key = key;

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

  _i8.ReturnValue? _returnValues;
  _i8.ReturnValue? get returnValues => _$this._returnValues;
  set returnValues(_i8.ReturnValue? returnValues) =>
      _$this._returnValues = returnValues;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DeleteItemInputBuilder() {
    DeleteItemInput._init(this);
  }

  DeleteItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
                  tableName, r'DeleteItemInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
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
            r'DeleteItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
