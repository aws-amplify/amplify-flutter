// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aggregate_discovered_resource_counts_request.dart';

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
  final int limit;
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
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateDiscoveredResourceCountsRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetAggregateDiscoveredResourceCountsRequest', 'limit');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, groupByKey.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'GetAggregateDiscoveredResourceCountsRequest', 'limit'),
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
