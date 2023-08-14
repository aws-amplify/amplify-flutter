// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_pools_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamPoolsRequest extends DescribeIpamPoolsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? ipamPoolIds;

  factory _$DescribeIpamPoolsRequest(
          [void Function(DescribeIpamPoolsRequestBuilder)? updates]) =>
      (new DescribeIpamPoolsRequestBuilder()..update(updates))._build();

  _$DescribeIpamPoolsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.ipamPoolIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpamPoolsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeIpamPoolsRequest', 'maxResults');
  }

  @override
  DescribeIpamPoolsRequest rebuild(
          void Function(DescribeIpamPoolsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamPoolsRequestBuilder toBuilder() =>
      new DescribeIpamPoolsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamPoolsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        ipamPoolIds == other.ipamPoolIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamPoolIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamPoolsRequestBuilder
    implements
        Builder<DescribeIpamPoolsRequest, DescribeIpamPoolsRequestBuilder> {
  _$DescribeIpamPoolsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _ipamPoolIds;
  _i3.ListBuilder<String> get ipamPoolIds =>
      _$this._ipamPoolIds ??= new _i3.ListBuilder<String>();
  set ipamPoolIds(_i3.ListBuilder<String>? ipamPoolIds) =>
      _$this._ipamPoolIds = ipamPoolIds;

  DescribeIpamPoolsRequestBuilder() {
    DescribeIpamPoolsRequest._init(this);
  }

  DescribeIpamPoolsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _ipamPoolIds = $v.ipamPoolIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamPoolsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamPoolsRequest;
  }

  @override
  void update(void Function(DescribeIpamPoolsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamPoolsRequest build() => _build();

  _$DescribeIpamPoolsRequest _build() {
    _$DescribeIpamPoolsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamPoolsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeIpamPoolsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeIpamPoolsRequest', 'maxResults'),
              nextToken: nextToken,
              ipamPoolIds: _ipamPoolIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'ipamPoolIds';
        _ipamPoolIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamPoolsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
