// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_coip_pools_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCoipPoolsRequest extends DescribeCoipPoolsRequest {
  @override
  final _i3.BuiltList<String>? poolIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeCoipPoolsRequest(
          [void Function(DescribeCoipPoolsRequestBuilder)? updates]) =>
      (new DescribeCoipPoolsRequestBuilder()..update(updates))._build();

  _$DescribeCoipPoolsRequest._(
      {this.poolIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeCoipPoolsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeCoipPoolsRequest', 'dryRun');
  }

  @override
  DescribeCoipPoolsRequest rebuild(
          void Function(DescribeCoipPoolsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCoipPoolsRequestBuilder toBuilder() =>
      new DescribeCoipPoolsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCoipPoolsRequest &&
        poolIds == other.poolIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCoipPoolsRequestBuilder
    implements
        Builder<DescribeCoipPoolsRequest, DescribeCoipPoolsRequestBuilder> {
  _$DescribeCoipPoolsRequest? _$v;

  _i3.ListBuilder<String>? _poolIds;
  _i3.ListBuilder<String> get poolIds =>
      _$this._poolIds ??= new _i3.ListBuilder<String>();
  set poolIds(_i3.ListBuilder<String>? poolIds) => _$this._poolIds = poolIds;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeCoipPoolsRequestBuilder() {
    DescribeCoipPoolsRequest._init(this);
  }

  DescribeCoipPoolsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolIds = $v.poolIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCoipPoolsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCoipPoolsRequest;
  }

  @override
  void update(void Function(DescribeCoipPoolsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCoipPoolsRequest build() => _build();

  _$DescribeCoipPoolsRequest _build() {
    _$DescribeCoipPoolsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeCoipPoolsRequest._(
              poolIds: _poolIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeCoipPoolsRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeCoipPoolsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolIds';
        _poolIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCoipPoolsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
