// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_aggregate_discovered_resources_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAggregateDiscoveredResourcesRequest
    extends ListAggregateDiscoveredResourcesRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ResourceFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i4.ResourceType resourceType;

  factory _$ListAggregateDiscoveredResourcesRequest(
          [void Function(ListAggregateDiscoveredResourcesRequestBuilder)?
              updates]) =>
      (new ListAggregateDiscoveredResourcesRequestBuilder()..update(updates))
          ._build();

  _$ListAggregateDiscoveredResourcesRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      this.limit,
      this.nextToken,
      required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'ListAggregateDiscoveredResourcesRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(resourceType,
        r'ListAggregateDiscoveredResourcesRequest', 'resourceType');
  }

  @override
  ListAggregateDiscoveredResourcesRequest rebuild(
          void Function(ListAggregateDiscoveredResourcesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAggregateDiscoveredResourcesRequestBuilder toBuilder() =>
      new ListAggregateDiscoveredResourcesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAggregateDiscoveredResourcesRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, configurationAggregatorName.hashCode),
                    filters.hashCode),
                limit.hashCode),
            nextToken.hashCode),
        resourceType.hashCode));
  }
}

class ListAggregateDiscoveredResourcesRequestBuilder
    implements
        Builder<ListAggregateDiscoveredResourcesRequest,
            ListAggregateDiscoveredResourcesRequestBuilder> {
  _$ListAggregateDiscoveredResourcesRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ResourceFiltersBuilder? _filters;
  _i3.ResourceFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ResourceFiltersBuilder();
  set filters(_i3.ResourceFiltersBuilder? filters) => _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ResourceType? _resourceType;
  _i4.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i4.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  ListAggregateDiscoveredResourcesRequestBuilder() {
    ListAggregateDiscoveredResourcesRequest._init(this);
  }

  ListAggregateDiscoveredResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAggregateDiscoveredResourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAggregateDiscoveredResourcesRequest;
  }

  @override
  void update(
      void Function(ListAggregateDiscoveredResourcesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAggregateDiscoveredResourcesRequest build() => _build();

  _$ListAggregateDiscoveredResourcesRequest _build() {
    _$ListAggregateDiscoveredResourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$ListAggregateDiscoveredResourcesRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'ListAggregateDiscoveredResourcesRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              limit: limit,
              nextToken: nextToken,
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'ListAggregateDiscoveredResourcesRequest', 'resourceType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAggregateDiscoveredResourcesRequest',
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
