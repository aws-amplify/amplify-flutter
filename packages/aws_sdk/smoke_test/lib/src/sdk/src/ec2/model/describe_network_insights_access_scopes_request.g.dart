// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_access_scopes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAccessScopesRequest
    extends DescribeNetworkInsightsAccessScopesRequest {
  @override
  final _i3.BuiltList<String>? networkInsightsAccessScopeIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final bool dryRun;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAccessScopesRequest(
          [void Function(DescribeNetworkInsightsAccessScopesRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAccessScopesRequestBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsAccessScopesRequest._(
      {this.networkInsightsAccessScopeIds,
      this.filters,
      required this.maxResults,
      required this.dryRun,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeNetworkInsightsAccessScopesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInsightsAccessScopesRequest', 'dryRun');
  }

  @override
  DescribeNetworkInsightsAccessScopesRequest rebuild(
          void Function(DescribeNetworkInsightsAccessScopesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAccessScopesRequestBuilder toBuilder() =>
      new DescribeNetworkInsightsAccessScopesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAccessScopesRequest &&
        networkInsightsAccessScopeIds == other.networkInsightsAccessScopeIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAccessScopesRequestBuilder
    implements
        Builder<DescribeNetworkInsightsAccessScopesRequest,
            DescribeNetworkInsightsAccessScopesRequestBuilder> {
  _$DescribeNetworkInsightsAccessScopesRequest? _$v;

  _i3.ListBuilder<String>? _networkInsightsAccessScopeIds;
  _i3.ListBuilder<String> get networkInsightsAccessScopeIds =>
      _$this._networkInsightsAccessScopeIds ??= new _i3.ListBuilder<String>();
  set networkInsightsAccessScopeIds(
          _i3.ListBuilder<String>? networkInsightsAccessScopeIds) =>
      _$this._networkInsightsAccessScopeIds = networkInsightsAccessScopeIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsAccessScopesRequestBuilder() {
    DescribeNetworkInsightsAccessScopesRequest._init(this);
  }

  DescribeNetworkInsightsAccessScopesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeIds =
          $v.networkInsightsAccessScopeIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAccessScopesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAccessScopesRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAccessScopesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAccessScopesRequest build() => _build();

  _$DescribeNetworkInsightsAccessScopesRequest _build() {
    _$DescribeNetworkInsightsAccessScopesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAccessScopesRequest._(
              networkInsightsAccessScopeIds:
                  _networkInsightsAccessScopeIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeNetworkInsightsAccessScopesRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeNetworkInsightsAccessScopesRequest', 'dryRun'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopeIds';
        _networkInsightsAccessScopeIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAccessScopesRequest',
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
