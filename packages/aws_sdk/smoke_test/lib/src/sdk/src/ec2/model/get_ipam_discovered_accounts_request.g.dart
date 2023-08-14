// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_discovered_accounts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamDiscoveredAccountsRequest
    extends GetIpamDiscoveredAccountsRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? discoveryRegion;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$GetIpamDiscoveredAccountsRequest(
          [void Function(GetIpamDiscoveredAccountsRequestBuilder)? updates]) =>
      (new GetIpamDiscoveredAccountsRequestBuilder()..update(updates))._build();

  _$GetIpamDiscoveredAccountsRequest._(
      {required this.dryRun,
      this.ipamResourceDiscoveryId,
      this.discoveryRegion,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamDiscoveredAccountsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamDiscoveredAccountsRequest', 'maxResults');
  }

  @override
  GetIpamDiscoveredAccountsRequest rebuild(
          void Function(GetIpamDiscoveredAccountsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamDiscoveredAccountsRequestBuilder toBuilder() =>
      new GetIpamDiscoveredAccountsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamDiscoveredAccountsRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        discoveryRegion == other.discoveryRegion &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, discoveryRegion.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamDiscoveredAccountsRequestBuilder
    implements
        Builder<GetIpamDiscoveredAccountsRequest,
            GetIpamDiscoveredAccountsRequestBuilder> {
  _$GetIpamDiscoveredAccountsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _discoveryRegion;
  String? get discoveryRegion => _$this._discoveryRegion;
  set discoveryRegion(String? discoveryRegion) =>
      _$this._discoveryRegion = discoveryRegion;

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

  GetIpamDiscoveredAccountsRequestBuilder() {
    GetIpamDiscoveredAccountsRequest._init(this);
  }

  GetIpamDiscoveredAccountsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _discoveryRegion = $v.discoveryRegion;
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamDiscoveredAccountsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamDiscoveredAccountsRequest;
  }

  @override
  void update(void Function(GetIpamDiscoveredAccountsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamDiscoveredAccountsRequest build() => _build();

  _$GetIpamDiscoveredAccountsRequest _build() {
    _$GetIpamDiscoveredAccountsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetIpamDiscoveredAccountsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetIpamDiscoveredAccountsRequest', 'dryRun'),
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              discoveryRegion: discoveryRegion,
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'GetIpamDiscoveredAccountsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamDiscoveredAccountsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
