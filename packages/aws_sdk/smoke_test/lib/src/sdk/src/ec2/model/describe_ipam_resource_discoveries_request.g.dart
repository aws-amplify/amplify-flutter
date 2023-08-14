// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_resource_discoveries_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamResourceDiscoveriesRequest
    extends DescribeIpamResourceDiscoveriesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? ipamResourceDiscoveryIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeIpamResourceDiscoveriesRequest(
          [void Function(DescribeIpamResourceDiscoveriesRequestBuilder)?
              updates]) =>
      (new DescribeIpamResourceDiscoveriesRequestBuilder()..update(updates))
          ._build();

  _$DescribeIpamResourceDiscoveriesRequest._(
      {required this.dryRun,
      this.ipamResourceDiscoveryIds,
      this.nextToken,
      required this.maxResults,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpamResourceDiscoveriesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeIpamResourceDiscoveriesRequest', 'maxResults');
  }

  @override
  DescribeIpamResourceDiscoveriesRequest rebuild(
          void Function(DescribeIpamResourceDiscoveriesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamResourceDiscoveriesRequestBuilder toBuilder() =>
      new DescribeIpamResourceDiscoveriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamResourceDiscoveriesRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryIds == other.ipamResourceDiscoveryIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamResourceDiscoveriesRequestBuilder
    implements
        Builder<DescribeIpamResourceDiscoveriesRequest,
            DescribeIpamResourceDiscoveriesRequestBuilder> {
  _$DescribeIpamResourceDiscoveriesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _ipamResourceDiscoveryIds;
  _i3.ListBuilder<String> get ipamResourceDiscoveryIds =>
      _$this._ipamResourceDiscoveryIds ??= new _i3.ListBuilder<String>();
  set ipamResourceDiscoveryIds(
          _i3.ListBuilder<String>? ipamResourceDiscoveryIds) =>
      _$this._ipamResourceDiscoveryIds = ipamResourceDiscoveryIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeIpamResourceDiscoveriesRequestBuilder() {
    DescribeIpamResourceDiscoveriesRequest._init(this);
  }

  DescribeIpamResourceDiscoveriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryIds = $v.ipamResourceDiscoveryIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamResourceDiscoveriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamResourceDiscoveriesRequest;
  }

  @override
  void update(
      void Function(DescribeIpamResourceDiscoveriesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamResourceDiscoveriesRequest build() => _build();

  _$DescribeIpamResourceDiscoveriesRequest _build() {
    _$DescribeIpamResourceDiscoveriesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamResourceDiscoveriesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeIpamResourceDiscoveriesRequest', 'dryRun'),
              ipamResourceDiscoveryIds: _ipamResourceDiscoveryIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeIpamResourceDiscoveriesRequest', 'maxResults'),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveryIds';
        _ipamResourceDiscoveryIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamResourceDiscoveriesRequest',
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
