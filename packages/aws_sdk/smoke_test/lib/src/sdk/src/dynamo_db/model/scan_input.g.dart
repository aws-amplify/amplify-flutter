// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScanInput extends ScanInput {
  @override
  final String tableName;
  @override
  final String? indexName;
  @override
  final _i3.BuiltList<String>? attributesToGet;
  @override
  final int? limit;
  @override
  final Select? select;
  @override
  final _i3.BuiltMap<String, Condition>? scanFilter;
  @override
  final ConditionalOperator? conditionalOperator;
  @override
  final _i3.BuiltMap<String, AttributeValue>? exclusiveStartKey;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final int? totalSegments;
  @override
  final int? segment;
  @override
  final String? projectionExpression;
  @override
  final String? filterExpression;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltMap<String, AttributeValue>? expressionAttributeValues;
  @override
  final bool? consistentRead;

  factory _$ScanInput([void Function(ScanInputBuilder)? updates]) =>
      (new ScanInputBuilder()..update(updates))._build();

  _$ScanInput._(
      {required this.tableName,
      this.indexName,
      this.attributesToGet,
      this.limit,
      this.select,
      this.scanFilter,
      this.conditionalOperator,
      this.exclusiveStartKey,
      this.returnConsumedCapacity,
      this.totalSegments,
      this.segment,
      this.projectionExpression,
      this.filterExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      this.consistentRead})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(tableName, r'ScanInput', 'tableName');
  }

  @override
  ScanInput rebuild(void Function(ScanInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScanInputBuilder toBuilder() => new ScanInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScanInput &&
        tableName == other.tableName &&
        indexName == other.indexName &&
        attributesToGet == other.attributesToGet &&
        limit == other.limit &&
        select == other.select &&
        scanFilter == other.scanFilter &&
        conditionalOperator == other.conditionalOperator &&
        exclusiveStartKey == other.exclusiveStartKey &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        totalSegments == other.totalSegments &&
        segment == other.segment &&
        projectionExpression == other.projectionExpression &&
        filterExpression == other.filterExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        consistentRead == other.consistentRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, attributesToGet.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, select.hashCode);
    _$hash = $jc(_$hash, scanFilter.hashCode);
    _$hash = $jc(_$hash, conditionalOperator.hashCode);
    _$hash = $jc(_$hash, exclusiveStartKey.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, totalSegments.hashCode);
    _$hash = $jc(_$hash, segment.hashCode);
    _$hash = $jc(_$hash, projectionExpression.hashCode);
    _$hash = $jc(_$hash, filterExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScanInputBuilder implements Builder<ScanInput, ScanInputBuilder> {
  _$ScanInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i3.ListBuilder<String>? _attributesToGet;
  _i3.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i3.ListBuilder<String>();
  set attributesToGet(_i3.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  Select? _select;
  Select? get select => _$this._select;
  set select(Select? select) => _$this._select = select;

  _i3.MapBuilder<String, Condition>? _scanFilter;
  _i3.MapBuilder<String, Condition> get scanFilter =>
      _$this._scanFilter ??= new _i3.MapBuilder<String, Condition>();
  set scanFilter(_i3.MapBuilder<String, Condition>? scanFilter) =>
      _$this._scanFilter = scanFilter;

  ConditionalOperator? _conditionalOperator;
  ConditionalOperator? get conditionalOperator => _$this._conditionalOperator;
  set conditionalOperator(ConditionalOperator? conditionalOperator) =>
      _$this._conditionalOperator = conditionalOperator;

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

  int? _totalSegments;
  int? get totalSegments => _$this._totalSegments;
  set totalSegments(int? totalSegments) =>
      _$this._totalSegments = totalSegments;

  int? _segment;
  int? get segment => _$this._segment;
  set segment(int? segment) => _$this._segment = segment;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  String? _filterExpression;
  String? get filterExpression => _$this._filterExpression;
  set filterExpression(String? filterExpression) =>
      _$this._filterExpression = filterExpression;

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

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  ScanInputBuilder();

  ScanInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _indexName = $v.indexName;
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _limit = $v.limit;
      _select = $v.select;
      _scanFilter = $v.scanFilter?.toBuilder();
      _conditionalOperator = $v.conditionalOperator;
      _exclusiveStartKey = $v.exclusiveStartKey?.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _totalSegments = $v.totalSegments;
      _segment = $v.segment;
      _projectionExpression = $v.projectionExpression;
      _filterExpression = $v.filterExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _consistentRead = $v.consistentRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScanInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScanInput;
  }

  @override
  void update(void Function(ScanInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScanInput build() => _build();

  _$ScanInput _build() {
    _$ScanInput _$result;
    try {
      _$result = _$v ??
          new _$ScanInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'ScanInput', 'tableName'),
              indexName: indexName,
              attributesToGet: _attributesToGet?.build(),
              limit: limit,
              select: select,
              scanFilter: _scanFilter?.build(),
              conditionalOperator: conditionalOperator,
              exclusiveStartKey: _exclusiveStartKey?.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              totalSegments: totalSegments,
              segment: segment,
              projectionExpression: projectionExpression,
              filterExpression: filterExpression,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              consistentRead: consistentRead);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'scanFilter';
        _scanFilter?.build();

        _$failedField = 'exclusiveStartKey';
        _exclusiveStartKey?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScanInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
