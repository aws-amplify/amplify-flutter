// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_aggregate_discovered_resources_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAggregateDiscoveredResourcesRequest
    extends ListAggregateDiscoveredResourcesRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ResourceType resourceType;
  @override
  final _i4.ResourceFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$ListAggregateDiscoveredResourcesRequest(
          [void Function(ListAggregateDiscoveredResourcesRequestBuilder)?
              updates]) =>
      (new ListAggregateDiscoveredResourcesRequestBuilder()..update(updates))
          ._build();

  _$ListAggregateDiscoveredResourcesRequest._(
      {required this.configurationAggregatorName,
      required this.resourceType,
      this.filters,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'ListAggregateDiscoveredResourcesRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(resourceType,
        r'ListAggregateDiscoveredResourcesRequest', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ListAggregateDiscoveredResourcesRequest', 'limit');
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
        resourceType == other.resourceType &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.ResourceFiltersBuilder? _filters;
  _i4.ResourceFiltersBuilder get filters =>
      _$this._filters ??= new _i4.ResourceFiltersBuilder();
  set filters(_i4.ResourceFiltersBuilder? filters) => _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListAggregateDiscoveredResourcesRequestBuilder() {
    ListAggregateDiscoveredResourcesRequest._init(this);
  }

  ListAggregateDiscoveredResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _resourceType = $v.resourceType;
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
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
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'ListAggregateDiscoveredResourcesRequest', 'resourceType'),
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'ListAggregateDiscoveredResourcesRequest', 'limit'),
              nextToken: nextToken);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
