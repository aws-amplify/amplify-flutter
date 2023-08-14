// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipv6_pools_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpv6PoolsRequest extends DescribeIpv6PoolsRequest {
  @override
  final _i3.BuiltList<String>? poolIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeIpv6PoolsRequest(
          [void Function(DescribeIpv6PoolsRequestBuilder)? updates]) =>
      (new DescribeIpv6PoolsRequestBuilder()..update(updates))._build();

  _$DescribeIpv6PoolsRequest._(
      {this.poolIds,
      this.nextToken,
      required this.maxResults,
      required this.dryRun,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeIpv6PoolsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpv6PoolsRequest', 'dryRun');
  }

  @override
  DescribeIpv6PoolsRequest rebuild(
          void Function(DescribeIpv6PoolsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpv6PoolsRequestBuilder toBuilder() =>
      new DescribeIpv6PoolsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpv6PoolsRequest &&
        poolIds == other.poolIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpv6PoolsRequestBuilder
    implements
        Builder<DescribeIpv6PoolsRequest, DescribeIpv6PoolsRequestBuilder> {
  _$DescribeIpv6PoolsRequest? _$v;

  _i3.ListBuilder<String>? _poolIds;
  _i3.ListBuilder<String> get poolIds =>
      _$this._poolIds ??= new _i3.ListBuilder<String>();
  set poolIds(_i3.ListBuilder<String>? poolIds) => _$this._poolIds = poolIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeIpv6PoolsRequestBuilder() {
    DescribeIpv6PoolsRequest._init(this);
  }

  DescribeIpv6PoolsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolIds = $v.poolIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpv6PoolsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpv6PoolsRequest;
  }

  @override
  void update(void Function(DescribeIpv6PoolsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpv6PoolsRequest build() => _build();

  _$DescribeIpv6PoolsRequest _build() {
    _$DescribeIpv6PoolsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpv6PoolsRequest._(
              poolIds: _poolIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeIpv6PoolsRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeIpv6PoolsRequest', 'dryRun'),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolIds';
        _poolIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpv6PoolsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
