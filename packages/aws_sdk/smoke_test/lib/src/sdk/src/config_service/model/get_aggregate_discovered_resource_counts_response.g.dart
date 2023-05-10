// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_discovered_resource_counts_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateDiscoveredResourceCountsResponse
    extends GetAggregateDiscoveredResourceCountsResponse {
  @override
  final _i2.Int64 totalDiscoveredResources;
  @override
  final String? groupByKey;
  @override
  final _i4.BuiltList<_i3.GroupedResourceCount>? groupedResourceCounts;
  @override
  final String? nextToken;

  factory _$GetAggregateDiscoveredResourceCountsResponse(
          [void Function(GetAggregateDiscoveredResourceCountsResponseBuilder)?
              updates]) =>
      (new GetAggregateDiscoveredResourceCountsResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateDiscoveredResourceCountsResponse._(
      {required this.totalDiscoveredResources,
      this.groupByKey,
      this.groupedResourceCounts,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalDiscoveredResources,
        r'GetAggregateDiscoveredResourceCountsResponse',
        'totalDiscoveredResources');
  }

  @override
  GetAggregateDiscoveredResourceCountsResponse rebuild(
          void Function(GetAggregateDiscoveredResourceCountsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateDiscoveredResourceCountsResponseBuilder toBuilder() =>
      new GetAggregateDiscoveredResourceCountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateDiscoveredResourceCountsResponse &&
        totalDiscoveredResources == other.totalDiscoveredResources &&
        groupByKey == other.groupByKey &&
        groupedResourceCounts == other.groupedResourceCounts &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalDiscoveredResources.hashCode);
    _$hash = $jc(_$hash, groupByKey.hashCode);
    _$hash = $jc(_$hash, groupedResourceCounts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateDiscoveredResourceCountsResponseBuilder
    implements
        Builder<GetAggregateDiscoveredResourceCountsResponse,
            GetAggregateDiscoveredResourceCountsResponseBuilder> {
  _$GetAggregateDiscoveredResourceCountsResponse? _$v;

  _i2.Int64? _totalDiscoveredResources;
  _i2.Int64? get totalDiscoveredResources => _$this._totalDiscoveredResources;
  set totalDiscoveredResources(_i2.Int64? totalDiscoveredResources) =>
      _$this._totalDiscoveredResources = totalDiscoveredResources;

  String? _groupByKey;
  String? get groupByKey => _$this._groupByKey;
  set groupByKey(String? groupByKey) => _$this._groupByKey = groupByKey;

  _i4.ListBuilder<_i3.GroupedResourceCount>? _groupedResourceCounts;
  _i4.ListBuilder<_i3.GroupedResourceCount> get groupedResourceCounts =>
      _$this._groupedResourceCounts ??=
          new _i4.ListBuilder<_i3.GroupedResourceCount>();
  set groupedResourceCounts(
          _i4.ListBuilder<_i3.GroupedResourceCount>? groupedResourceCounts) =>
      _$this._groupedResourceCounts = groupedResourceCounts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateDiscoveredResourceCountsResponseBuilder() {
    GetAggregateDiscoveredResourceCountsResponse._init(this);
  }

  GetAggregateDiscoveredResourceCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalDiscoveredResources = $v.totalDiscoveredResources;
      _groupByKey = $v.groupByKey;
      _groupedResourceCounts = $v.groupedResourceCounts?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateDiscoveredResourceCountsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateDiscoveredResourceCountsResponse;
  }

  @override
  void update(
      void Function(GetAggregateDiscoveredResourceCountsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateDiscoveredResourceCountsResponse build() => _build();

  _$GetAggregateDiscoveredResourceCountsResponse _build() {
    _$GetAggregateDiscoveredResourceCountsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateDiscoveredResourceCountsResponse._(
              totalDiscoveredResources: BuiltValueNullFieldError.checkNotNull(
                  totalDiscoveredResources,
                  r'GetAggregateDiscoveredResourceCountsResponse',
                  'totalDiscoveredResources'),
              groupByKey: groupByKey,
              groupedResourceCounts: _groupedResourceCounts?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupedResourceCounts';
        _groupedResourceCounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateDiscoveredResourceCountsResponse',
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
