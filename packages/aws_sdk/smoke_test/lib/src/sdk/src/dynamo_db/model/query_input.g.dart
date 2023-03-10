// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.query_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryInput extends QueryInput {
  @override
  final _i8.BuiltList<String>? attributesToGet;
  @override
  final _i3.ConditionalOperator? conditionalOperator;
  @override
  final bool? consistentRead;
  @override
  final _i8.BuiltMap<String, _i4.AttributeValue>? exclusiveStartKey;
  @override
  final _i8.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i8.BuiltMap<String, _i4.AttributeValue>? expressionAttributeValues;
  @override
  final String? filterExpression;
  @override
  final String? indexName;
  @override
  final String? keyConditionExpression;
  @override
  final _i8.BuiltMap<String, _i5.Condition>? keyConditions;
  @override
  final int? limit;
  @override
  final String? projectionExpression;
  @override
  final _i8.BuiltMap<String, _i5.Condition>? queryFilter;
  @override
  final _i6.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final bool? scanIndexForward;
  @override
  final _i7.Select? select;
  @override
  final String tableName;

  factory _$QueryInput([void Function(QueryInputBuilder)? updates]) =>
      (new QueryInputBuilder()..update(updates))._build();

  _$QueryInput._(
      {this.attributesToGet,
      this.conditionalOperator,
      this.consistentRead,
      this.exclusiveStartKey,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      this.filterExpression,
      this.indexName,
      this.keyConditionExpression,
      this.keyConditions,
      this.limit,
      this.projectionExpression,
      this.queryFilter,
      this.returnConsumedCapacity,
      this.scanIndexForward,
      this.select,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'QueryInput', 'tableName');
  }

  @override
  QueryInput rebuild(void Function(QueryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryInputBuilder toBuilder() => new QueryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryInput &&
        attributesToGet == other.attributesToGet &&
        conditionalOperator == other.conditionalOperator &&
        consistentRead == other.consistentRead &&
        exclusiveStartKey == other.exclusiveStartKey &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        filterExpression == other.filterExpression &&
        indexName == other.indexName &&
        keyConditionExpression == other.keyConditionExpression &&
        keyConditions == other.keyConditions &&
        limit == other.limit &&
        projectionExpression == other.projectionExpression &&
        queryFilter == other.queryFilter &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        scanIndexForward == other.scanIndexForward &&
        select == other.select &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributesToGet.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, exclusiveStartKey.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, filterExpression.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keyConditionExpression.hashCode);
    _$hash = $jc(_$hash, keyConditions.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, queryFilter.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, scanIndexForward.hashCode);
    _$hash = $jc(_$hash, select.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryInputBuilder implements Builder<QueryInput, QueryInputBuilder> {
  _$QueryInput? _$v;

  _i8.ListBuilder<String>? _attributesToGet;
  _i8.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i8.ListBuilder<String>();
  set attributesToGet(_i8.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  _i3.ConditionalOperator? _conditionalOperator;
  _i3.ConditionalOperator? get conditionalOperator =>
      _$this._conditionalOperator;
  set conditionalOperator(_i3.ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i8.MapBuilder<String, _i4.AttributeValue>? _exclusiveStartKey;
  _i8.MapBuilder<String, _i4.AttributeValue> get exclusiveStartKey =>
      _$this._exclusiveStartKey ??=
          new _i8.MapBuilder<String, _i4.AttributeValue>();
  set exclusiveStartKey(
          _i8.MapBuilder<String, _i4.AttributeValue>? exclusiveStartKey) =>
      _$this._exclusiveStartKey = exclusiveStartKey;

  _i8.MapBuilder<String, String>? _expressionAttributeNames;
  _i8.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i8.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i8.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i8.MapBuilder<String, _i4.AttributeValue>? _expressionAttributeValues;
  _i8.MapBuilder<String, _i4.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i8.MapBuilder<String, _i4.AttributeValue>();
  set expressionAttributeValues(
          _i8.MapBuilder<String, _i4.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  String? _filterExpression;
  String? get filterExpression => _$this._filterExpression;
  set filterExpression(String? filterExpression) =>
      _$this._filterExpression = filterExpression;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  String? _keyConditionExpression;
  String? get keyConditionExpression => _$this._keyConditionExpression;
  set keyConditionExpression(String? keyConditionExpression) =>
      _$this._keyConditionExpression = keyConditionExpression;

  _i8.MapBuilder<String, _i5.Condition>? _keyConditions;
  _i8.MapBuilder<String, _i5.Condition> get keyConditions =>
      _$this._keyConditions ??= new _i8.MapBuilder<String, _i5.Condition>();
  set keyConditions(_i8.MapBuilder<String, _i5.Condition>? keyConditions) =>
      _$this._keyConditions = keyConditions;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  _i8.MapBuilder<String, _i5.Condition>? _queryFilter;
  _i8.MapBuilder<String, _i5.Condition> get queryFilter =>
      _$this._queryFilter ??= new _i8.MapBuilder<String, _i5.Condition>();
  set queryFilter(_i8.MapBuilder<String, _i5.Condition>? queryFilter) =>
      _$this._queryFilter = queryFilter;

  _i6.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i6.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i6.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  bool? _scanIndexForward;
  bool? get scanIndexForward => _$this._scanIndexForward;
  set scanIndexForward(bool? scanIndexForward) =>
      _$this._scanIndexForward = scanIndexForward;

  _i7.Select? _select;
  _i7.Select? get select => _$this._select;
  set select(_i7.Select? select) => _$this._select = select;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  QueryInputBuilder() {
    QueryInput._init(this);
  }

  QueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _conditionalOperator = $v.conditionalOperator;
      _consistentRead = $v.consistentRead;
      _exclusiveStartKey = $v.exclusiveStartKey?.toBuilder();
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _filterExpression = $v.filterExpression;
      _indexName = $v.indexName;
      _keyConditionExpression = $v.keyConditionExpression;
      _keyConditions = $v.keyConditions?.toBuilder();
      _limit = $v.limit;
      _projectionExpression = $v.projectionExpression;
      _queryFilter = $v.queryFilter?.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _scanIndexForward = $v.scanIndexForward;
      _select = $v.select;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryInput;
  }

  @override
  void update(void Function(QueryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryInput build() => _build();

  _$QueryInput _build() {
    _$QueryInput _$result;
    try {
      _$result = _$v ??
          new _$QueryInput._(
              attributesToGet: _attributesToGet?.build(),
              conditionalOperator: conditionalOperator,
              consistentRead: consistentRead,
              exclusiveStartKey: _exclusiveStartKey?.build(),
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              filterExpression: filterExpression,
              indexName: indexName,
              keyConditionExpression: keyConditionExpression,
              keyConditions: _keyConditions?.build(),
              limit: limit,
              projectionExpression: projectionExpression,
              queryFilter: _queryFilter?.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              scanIndexForward: scanIndexForward,
              select: select,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'QueryInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'exclusiveStartKey';
        _exclusiveStartKey?.build();
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();

        _$failedField = 'keyConditions';
        _keyConditions?.build();

        _$failedField = 'queryFilter';
        _queryFilter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
