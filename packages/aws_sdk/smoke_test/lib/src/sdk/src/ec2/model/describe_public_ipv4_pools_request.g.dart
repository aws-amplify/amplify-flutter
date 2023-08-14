// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_public_ipv4_pools_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePublicIpv4PoolsRequest extends DescribePublicIpv4PoolsRequest {
  @override
  final _i3.BuiltList<String>? poolIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribePublicIpv4PoolsRequest(
          [void Function(DescribePublicIpv4PoolsRequestBuilder)? updates]) =>
      (new DescribePublicIpv4PoolsRequestBuilder()..update(updates))._build();

  _$DescribePublicIpv4PoolsRequest._(
      {this.poolIds, this.nextToken, required this.maxResults, this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribePublicIpv4PoolsRequest', 'maxResults');
  }

  @override
  DescribePublicIpv4PoolsRequest rebuild(
          void Function(DescribePublicIpv4PoolsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePublicIpv4PoolsRequestBuilder toBuilder() =>
      new DescribePublicIpv4PoolsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePublicIpv4PoolsRequest &&
        poolIds == other.poolIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePublicIpv4PoolsRequestBuilder
    implements
        Builder<DescribePublicIpv4PoolsRequest,
            DescribePublicIpv4PoolsRequestBuilder> {
  _$DescribePublicIpv4PoolsRequest? _$v;

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

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribePublicIpv4PoolsRequestBuilder() {
    DescribePublicIpv4PoolsRequest._init(this);
  }

  DescribePublicIpv4PoolsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolIds = $v.poolIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePublicIpv4PoolsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePublicIpv4PoolsRequest;
  }

  @override
  void update(void Function(DescribePublicIpv4PoolsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePublicIpv4PoolsRequest build() => _build();

  _$DescribePublicIpv4PoolsRequest _build() {
    _$DescribePublicIpv4PoolsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribePublicIpv4PoolsRequest._(
              poolIds: _poolIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribePublicIpv4PoolsRequest', 'maxResults'),
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
            r'DescribePublicIpv4PoolsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
