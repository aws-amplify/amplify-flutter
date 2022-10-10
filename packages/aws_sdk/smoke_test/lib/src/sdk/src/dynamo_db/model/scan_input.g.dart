// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.scan_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScanInput extends ScanInput {
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
  final int? limit;
  @override
  final String? projectionExpression;
  @override
  final _i5.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i8.BuiltMap<String, _i6.Condition>? scanFilter;
  @override
  final int? segment;
  @override
  final _i7.Select? select;
  @override
  final String tableName;
  @override
  final int? totalSegments;

  factory _$ScanInput([void Function(ScanInputBuilder)? updates]) =>
      (new ScanInputBuilder()..update(updates))._build();

  _$ScanInput._(
      {this.attributesToGet,
      this.conditionalOperator,
      this.consistentRead,
      this.exclusiveStartKey,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      this.filterExpression,
      this.indexName,
      this.limit,
      this.projectionExpression,
      this.returnConsumedCapacity,
      this.scanFilter,
      this.segment,
      this.select,
      required this.tableName,
      this.totalSegments})
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
        attributesToGet == other.attributesToGet &&
        conditionalOperator == other.conditionalOperator &&
        consistentRead == other.consistentRead &&
        exclusiveStartKey == other.exclusiveStartKey &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        filterExpression == other.filterExpression &&
        indexName == other.indexName &&
        limit == other.limit &&
        projectionExpression == other.projectionExpression &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        scanFilter == other.scanFilter &&
        segment == other.segment &&
        select == other.select &&
        tableName == other.tableName &&
        totalSegments == other.totalSegments;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    attributesToGet
                                                                        .hashCode),
                                                                conditionalOperator
                                                                    .hashCode),
                                                            consistentRead
                                                                .hashCode),
                                                        exclusiveStartKey
                                                            .hashCode),
                                                    expressionAttributeNames
                                                        .hashCode),
                                                expressionAttributeValues
                                                    .hashCode),
                                            filterExpression.hashCode),
                                        indexName.hashCode),
                                    limit.hashCode),
                                projectionExpression.hashCode),
                            returnConsumedCapacity.hashCode),
                        scanFilter.hashCode),
                    segment.hashCode),
                select.hashCode),
            tableName.hashCode),
        totalSegments.hashCode));
  }
}

class ScanInputBuilder implements Builder<ScanInput, ScanInputBuilder> {
  _$ScanInput? _$v;

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

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  _i5.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i5.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i5.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i8.MapBuilder<String, _i6.Condition>? _scanFilter;
  _i8.MapBuilder<String, _i6.Condition> get scanFilter =>
      _$this._scanFilter ??= new _i8.MapBuilder<String, _i6.Condition>();
  set scanFilter(_i8.MapBuilder<String, _i6.Condition>? scanFilter) =>
      _$this._scanFilter = scanFilter;

  int? _segment;
  int? get segment => _$this._segment;
  set segment(int? segment) => _$this._segment = segment;

  _i7.Select? _select;
  _i7.Select? get select => _$this._select;
  set select(_i7.Select? select) => _$this._select = select;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  int? _totalSegments;
  int? get totalSegments => _$this._totalSegments;
  set totalSegments(int? totalSegments) =>
      _$this._totalSegments = totalSegments;

  ScanInputBuilder() {
    ScanInput._init(this);
  }

  ScanInputBuilder get _$this {
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
      _limit = $v.limit;
      _projectionExpression = $v.projectionExpression;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _scanFilter = $v.scanFilter?.toBuilder();
      _segment = $v.segment;
      _select = $v.select;
      _tableName = $v.tableName;
      _totalSegments = $v.totalSegments;
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
              attributesToGet: _attributesToGet?.build(),
              conditionalOperator: conditionalOperator,
              consistentRead: consistentRead,
              exclusiveStartKey: _exclusiveStartKey?.build(),
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              filterExpression: filterExpression,
              indexName: indexName,
              limit: limit,
              projectionExpression: projectionExpression,
              returnConsumedCapacity: returnConsumedCapacity,
              scanFilter: _scanFilter?.build(),
              segment: segment,
              select: select,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'ScanInput', 'tableName'),
              totalSegments: totalSegments);
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

        _$failedField = 'scanFilter';
        _scanFilter?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
