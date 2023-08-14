// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_discovered_resource_cidrs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamDiscoveredResourceCidrsRequest
    extends GetIpamDiscoveredResourceCidrsRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? resourceRegion;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$GetIpamDiscoveredResourceCidrsRequest(
          [void Function(GetIpamDiscoveredResourceCidrsRequestBuilder)?
              updates]) =>
      (new GetIpamDiscoveredResourceCidrsRequestBuilder()..update(updates))
          ._build();

  _$GetIpamDiscoveredResourceCidrsRequest._(
      {required this.dryRun,
      this.ipamResourceDiscoveryId,
      this.resourceRegion,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamDiscoveredResourceCidrsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamDiscoveredResourceCidrsRequest', 'maxResults');
  }

  @override
  GetIpamDiscoveredResourceCidrsRequest rebuild(
          void Function(GetIpamDiscoveredResourceCidrsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamDiscoveredResourceCidrsRequestBuilder toBuilder() =>
      new GetIpamDiscoveredResourceCidrsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamDiscoveredResourceCidrsRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        resourceRegion == other.resourceRegion &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamDiscoveredResourceCidrsRequestBuilder
    implements
        Builder<GetIpamDiscoveredResourceCidrsRequest,
            GetIpamDiscoveredResourceCidrsRequestBuilder> {
  _$GetIpamDiscoveredResourceCidrsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  GetIpamDiscoveredResourceCidrsRequestBuilder() {
    GetIpamDiscoveredResourceCidrsRequest._init(this);
  }

  GetIpamDiscoveredResourceCidrsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _resourceRegion = $v.resourceRegion;
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamDiscoveredResourceCidrsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamDiscoveredResourceCidrsRequest;
  }

  @override
  void update(
      void Function(GetIpamDiscoveredResourceCidrsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamDiscoveredResourceCidrsRequest build() => _build();

  _$GetIpamDiscoveredResourceCidrsRequest _build() {
    _$GetIpamDiscoveredResourceCidrsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetIpamDiscoveredResourceCidrsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetIpamDiscoveredResourceCidrsRequest', 'dryRun'),
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              resourceRegion: resourceRegion,
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'GetIpamDiscoveredResourceCidrsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamDiscoveredResourceCidrsRequest',
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
