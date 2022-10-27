// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.put_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutItemInput extends PutItemInput {
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
  final _i9.BuiltMap<String, _i5.AttributeValue> item;
  @override
  final _i6.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i7.ReturnItemCollectionMetrics? returnItemCollectionMetrics;
  @override
  final _i8.ReturnValue? returnValues;
  @override
  final String tableName;

  factory _$PutItemInput([void Function(PutItemInputBuilder)? updates]) =>
      (new PutItemInputBuilder()..update(updates))._build();

  _$PutItemInput._(
      {this.conditionExpression,
      this.conditionalOperator,
      this.expected,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      required this.item,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics,
      this.returnValues,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(item, r'PutItemInput', 'item');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'PutItemInput', 'tableName');
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
        conditionExpression == other.conditionExpression &&
        conditionalOperator == other.conditionalOperator &&
        expected == other.expected &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        item == other.item &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics &&
        returnValues == other.returnValues &&
        tableName == other.tableName;
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
                                    $jc($jc(0, conditionExpression.hashCode),
                                        conditionalOperator.hashCode),
                                    expected.hashCode),
                                expressionAttributeNames.hashCode),
                            expressionAttributeValues.hashCode),
                        item.hashCode),
                    returnConsumedCapacity.hashCode),
                returnItemCollectionMetrics.hashCode),
            returnValues.hashCode),
        tableName.hashCode));
  }
}

class PutItemInputBuilder
    implements Builder<PutItemInput, PutItemInputBuilder> {
  _$PutItemInput? _$v;

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

  _i9.MapBuilder<String, _i5.AttributeValue>? _item;
  _i9.MapBuilder<String, _i5.AttributeValue> get item =>
      _$this._item ??= new _i9.MapBuilder<String, _i5.AttributeValue>();
  set item(_i9.MapBuilder<String, _i5.AttributeValue>? item) =>
      _$this._item = item;

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

  PutItemInputBuilder() {
    PutItemInput._init(this);
  }

  PutItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditionExpression = $v.conditionExpression;
      _conditionalOperator = $v.conditionalOperator;
      _expected = $v.expected?.toBuilder();
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _item = $v.item.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _returnValues = $v.returnValues;
      _tableName = $v.tableName;
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
              conditionExpression: conditionExpression,
              conditionalOperator: conditionalOperator,
              expected: _expected?.build(),
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              item: item.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics,
              returnValues: returnValues,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'PutItemInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expected';
        _expected?.build();
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
        _$failedField = 'item';
        item.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
