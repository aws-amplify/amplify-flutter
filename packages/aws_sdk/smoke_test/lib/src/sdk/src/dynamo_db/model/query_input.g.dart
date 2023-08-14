// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryInput extends QueryInput {
  @override
  final String tableName;
  @override
  final String? indexName;
  @override
  final Select? select;
  @override
  final _i3.BuiltList<String>? attributesToGet;
  @override
  final int? limit;
  @override
  final bool? consistentRead;
  @override
  final _i3.BuiltMap<String, Condition>? keyConditions;
  @override
  final _i3.BuiltMap<String, Condition>? queryFilter;
  @override
  final ConditionalOperator? conditionalOperator;
  @override
  final bool? scanIndexForward;
  @override
  final _i3.BuiltMap<String, AttributeValue>? exclusiveStartKey;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final String? projectionExpression;
  @override
  final String? filterExpression;
  @override
  final String? keyConditionExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltMap<String, AttributeValue>? expressionAttributeValues;

  factory _$QueryInput([void Function(QueryInputBuilder)? updates]) =>
      (new QueryInputBuilder()..update(updates))._build();

  _$QueryInput._(
      {required this.tableName,
      this.indexName,
      this.select,
      this.attributesToGet,
      this.limit,
      this.consistentRead,
      this.keyConditions,
      this.queryFilter,
      this.conditionalOperator,
      this.scanIndexForward,
      this.exclusiveStartKey,
      this.returnConsumedCapacity,
      this.projectionExpression,
      this.filterExpression,
      this.keyConditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues})
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
        tableName == other.tableName &&
        indexName == other.indexName &&
        select == other.select &&
        attributesToGet == other.attributesToGet &&
        limit == other.limit &&
        consistentRead == other.consistentRead &&
        keyConditions == other.keyConditions &&
        queryFilter == other.queryFilter &&
        conditionalOperator == other.conditionalOperator &&
        scanIndexForward == other.scanIndexForward &&
        exclusiveStartKey == other.exclusiveStartKey &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        projectionExpression == other.projectionExpression &&
        filterExpression == other.filterExpression &&
        keyConditionExpression == other.keyConditionExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, select.hashCode);
    _$hash = $jc(_$hash, attributesToGet.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, keyConditions.hashCode);
    _$hash = $jc(_$hash, queryFilter.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, scanIndexForward.hashCode);
    _$hash = $jc(_$hash, exclusiveStartKey.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, filterExpression.hashCode);
    _$hash = $jc(_$hash, keyConditionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryInputBuilder implements Builder<QueryInput, QueryInputBuilder> {
  _$QueryInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  Select? _select;
  Select? get select => _$this._select;
  set select(Select? select) => _$this._select = select;

  _i3.ListBuilder<String>? _attributesToGet;
  _i3.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i3.ListBuilder<String>();
  set attributesToGet(_i3.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i3.MapBuilder<String, Condition>? _keyConditions;
  _i3.MapBuilder<String, Condition> get keyConditions =>
      _$this._keyConditions ??= new _i3.MapBuilder<String, Condition>();
  set keyConditions(_i3.MapBuilder<String, Condition>? keyConditions) =>
      _$this._keyConditions = keyConditions;

  _i3.MapBuilder<String, Condition>? _queryFilter;
  _i3.MapBuilder<String, Condition> get queryFilter =>
      _$this._queryFilter ??= new _i3.MapBuilder<String, Condition>();
  set queryFilter(_i3.MapBuilder<String, Condition>? queryFilter) =>
      _$this._queryFilter = queryFilter;

  ConditionalOperator? _conditionalOperator;
  ConditionalOperator? get conditionalOperator => _$this._conditionalOperator;
  set conditionalOperator(ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

  bool? _scanIndexForward;
  bool? get scanIndexForward => _$this._scanIndexForward;
  set scanIndexForward(bool? scanIndexForward) =>
      _$this._scanIndexForward = scanIndexForward;

  _i3.MapBuilder<String, AttributeValue>? _exclusiveStartKey;
  _i3.MapBuilder<String, AttributeValue> get exclusiveStartKey =>
      _$this._exclusiveStartKey ??=
          new _i3.MapBuilder<String, AttributeValue>();
  set exclusiveStartKey(
          _i3.MapBuilder<String, AttributeValue>? exclusiveStartKey) =>
      _$this._exclusiveStartKey = exclusiveStartKey;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  String? _filterExpression;
  String? get filterExpression => _$this._filterExpression;
  set filterExpression(String? filterExpression) =>
      _$this._filterExpression = filterExpression;

  String? _keyConditionExpression;
  String? get keyConditionExpression => _$this._keyConditionExpression;
  set keyConditionExpression(String? keyConditionExpression) =>
      _$this._keyConditionExpression = keyConditionExpression;

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

  QueryInputBuilder();

  QueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _indexName = $v.indexName;
      _select = $v.select;
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _limit = $v.limit;
      _consistentRead = $v.consistentRead;
      _keyConditions = $v.keyConditions?.toBuilder();
      _queryFilter = $v.queryFilter?.toBuilder();
      _conditionalOperator = $v.conditionalOperator;
      _scanIndexForward = $v.scanIndexForward;
      _exclusiveStartKey = $v.exclusiveStartKey?.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _projectionExpression = $v.projectionExpression;
      _filterExpression = $v.filterExpression;
      _keyConditionExpression = $v.keyConditionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
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
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'QueryInput', 'tableName'),
              indexName: indexName,
              select: select,
              attributesToGet: _attributesToGet?.build(),
              limit: limit,
              consistentRead: consistentRead,
              keyConditions: _keyConditions?.build(),
              queryFilter: _queryFilter?.build(),
              conditionalOperator: conditionalOperator,
              scanIndexForward: scanIndexForward,
              exclusiveStartKey: _exclusiveStartKey?.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              projectionExpression: projectionExpression,
              filterExpression: filterExpression,
              keyConditionExpression: keyConditionExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'keyConditions';
        _keyConditions?.build();
        _$failedField = 'queryFilter';
        _queryFilter?.build();

        _$failedField = 'exclusiveStartKey';
        _exclusiveStartKey?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
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
