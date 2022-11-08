// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_discovered_resource_counts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateDiscoveredResourceCountsRequest
    extends GetAggregateDiscoveredResourceCountsRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ResourceCountFilters? filters;
  @override
  final _i4.ResourceCountGroupKey? groupByKey;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$GetAggregateDiscoveredResourceCountsRequest(
          [void Function(GetAggregateDiscoveredResourceCountsRequestBuilder)?
              updates]) =>
      (new GetAggregateDiscoveredResourceCountsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateDiscoveredResourceCountsRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      this.groupByKey,
      this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateDiscoveredResourceCountsRequest',
        'configurationAggregatorName');
  }

  @override
  GetAggregateDiscoveredResourceCountsRequest rebuild(
          void Function(GetAggregateDiscoveredResourceCountsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateDiscoveredResourceCountsRequestBuilder toBuilder() =>
      new GetAggregateDiscoveredResourceCountsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateDiscoveredResourceCountsRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        groupByKey == other.groupByKey &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, configurationAggregatorName.hashCode),
                    filters.hashCode),
                groupByKey.hashCode),
            limit.hashCode),
        nextToken.hashCode));
  }
}

class GetAggregateDiscoveredResourceCountsRequestBuilder
    implements
        Builder<GetAggregateDiscoveredResourceCountsRequest,
            GetAggregateDiscoveredResourceCountsRequestBuilder> {
  _$GetAggregateDiscoveredResourceCountsRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ResourceCountFiltersBuilder? _filters;
  _i3.ResourceCountFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ResourceCountFiltersBuilder();
  set filters(_i3.ResourceCountFiltersBuilder? filters) =>
      _$this._filters = filters;

  _i4.ResourceCountGroupKey? _groupByKey;
  _i4.ResourceCountGroupKey? get groupByKey => _$this._groupByKey;
  set groupByKey(_i4.ResourceCountGroupKey? groupByKey) =>
      _$this._groupByKey = groupByKey;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateDiscoveredResourceCountsRequestBuilder() {
    GetAggregateDiscoveredResourceCountsRequest._init(this);
  }

  GetAggregateDiscoveredResourceCountsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _filters = $v.filters?.toBuilder();
      _groupByKey = $v.groupByKey;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateDiscoveredResourceCountsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateDiscoveredResourceCountsRequest;
  }

  @override
  void update(
      void Function(GetAggregateDiscoveredResourceCountsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateDiscoveredResourceCountsRequest build() => _build();

  _$GetAggregateDiscoveredResourceCountsRequest _build() {
    _$GetAggregateDiscoveredResourceCountsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateDiscoveredResourceCountsRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'GetAggregateDiscoveredResourceCountsRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              groupByKey: groupByKey,
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateDiscoveredResourceCountsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
