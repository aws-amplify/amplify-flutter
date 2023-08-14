// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_scopes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamScopesRequest extends DescribeIpamScopesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? ipamScopeIds;

  factory _$DescribeIpamScopesRequest(
          [void Function(DescribeIpamScopesRequestBuilder)? updates]) =>
      (new DescribeIpamScopesRequestBuilder()..update(updates))._build();

  _$DescribeIpamScopesRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.ipamScopeIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpamScopesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeIpamScopesRequest', 'maxResults');
  }

  @override
  DescribeIpamScopesRequest rebuild(
          void Function(DescribeIpamScopesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamScopesRequestBuilder toBuilder() =>
      new DescribeIpamScopesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamScopesRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        ipamScopeIds == other.ipamScopeIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamScopeIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamScopesRequestBuilder
    implements
        Builder<DescribeIpamScopesRequest, DescribeIpamScopesRequestBuilder> {
  _$DescribeIpamScopesRequest? _$v;

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

  _i3.ListBuilder<String>? _ipamScopeIds;
  _i3.ListBuilder<String> get ipamScopeIds =>
      _$this._ipamScopeIds ??= new _i3.ListBuilder<String>();
  set ipamScopeIds(_i3.ListBuilder<String>? ipamScopeIds) =>
      _$this._ipamScopeIds = ipamScopeIds;

  DescribeIpamScopesRequestBuilder() {
    DescribeIpamScopesRequest._init(this);
  }

  DescribeIpamScopesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _ipamScopeIds = $v.ipamScopeIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamScopesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamScopesRequest;
  }

  @override
  void update(void Function(DescribeIpamScopesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamScopesRequest build() => _build();

  _$DescribeIpamScopesRequest _build() {
    _$DescribeIpamScopesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamScopesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeIpamScopesRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeIpamScopesRequest', 'maxResults'),
              nextToken: nextToken,
              ipamScopeIds: _ipamScopeIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'ipamScopeIds';
        _ipamScopeIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamScopesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
