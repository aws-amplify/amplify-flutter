// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_discovered_resource_counts_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateDiscoveredResourceCountsResponse
    extends GetAggregateDiscoveredResourceCountsResponse {
  @override
  final String? groupByKey;
  @override
  final _i4.BuiltList<_i2.GroupedResourceCount>? groupedResourceCounts;
  @override
  final String? nextToken;
  @override
  final _i3.Int64 totalDiscoveredResources;

  factory _$GetAggregateDiscoveredResourceCountsResponse(
          [void Function(GetAggregateDiscoveredResourceCountsResponseBuilder)?
              updates]) =>
      (new GetAggregateDiscoveredResourceCountsResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateDiscoveredResourceCountsResponse._(
      {this.groupByKey,
      this.groupedResourceCounts,
      this.nextToken,
      required this.totalDiscoveredResources})
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
        groupByKey == other.groupByKey &&
        groupedResourceCounts == other.groupedResourceCounts &&
        nextToken == other.nextToken &&
        totalDiscoveredResources == other.totalDiscoveredResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupByKey.hashCode);
    _$hash = $jc(_$hash, groupedResourceCounts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, totalDiscoveredResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateDiscoveredResourceCountsResponseBuilder
    implements
        Builder<GetAggregateDiscoveredResourceCountsResponse,
            GetAggregateDiscoveredResourceCountsResponseBuilder> {
  _$GetAggregateDiscoveredResourceCountsResponse? _$v;

  String? _groupByKey;
  String? get groupByKey => _$this._groupByKey;
  set groupByKey(String? groupByKey) => _$this._groupByKey = groupByKey;

  _i4.ListBuilder<_i2.GroupedResourceCount>? _groupedResourceCounts;
  _i4.ListBuilder<_i2.GroupedResourceCount> get groupedResourceCounts =>
      _$this._groupedResourceCounts ??=
          new _i4.ListBuilder<_i2.GroupedResourceCount>();
  set groupedResourceCounts(
          _i4.ListBuilder<_i2.GroupedResourceCount>? groupedResourceCounts) =>
      _$this._groupedResourceCounts = groupedResourceCounts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.Int64? _totalDiscoveredResources;
  _i3.Int64? get totalDiscoveredResources => _$this._totalDiscoveredResources;
  set totalDiscoveredResources(_i3.Int64? totalDiscoveredResources) =>
      _$this._totalDiscoveredResources = totalDiscoveredResources;

  GetAggregateDiscoveredResourceCountsResponseBuilder() {
    GetAggregateDiscoveredResourceCountsResponse._init(this);
  }

  GetAggregateDiscoveredResourceCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupByKey = $v.groupByKey;
      _groupedResourceCounts = $v.groupedResourceCounts?.toBuilder();
      _nextToken = $v.nextToken;
      _totalDiscoveredResources = $v.totalDiscoveredResources;
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
              groupByKey: groupByKey,
              groupedResourceCounts: _groupedResourceCounts?.build(),
              nextToken: nextToken,
              totalDiscoveredResources: BuiltValueNullFieldError.checkNotNull(
                  totalDiscoveredResources,
                  r'GetAggregateDiscoveredResourceCountsResponse',
                  'totalDiscoveredResources'));
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
