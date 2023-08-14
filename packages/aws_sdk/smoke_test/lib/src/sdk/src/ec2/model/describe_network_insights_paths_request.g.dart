// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_paths_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsPathsRequest
    extends DescribeNetworkInsightsPathsRequest {
  @override
  final _i3.BuiltList<String>? networkInsightsPathIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final bool dryRun;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsPathsRequest(
          [void Function(DescribeNetworkInsightsPathsRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsPathsRequestBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsPathsRequest._(
      {this.networkInsightsPathIds,
      this.filters,
      required this.maxResults,
      required this.dryRun,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeNetworkInsightsPathsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInsightsPathsRequest', 'dryRun');
  }

  @override
  DescribeNetworkInsightsPathsRequest rebuild(
          void Function(DescribeNetworkInsightsPathsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsPathsRequestBuilder toBuilder() =>
      new DescribeNetworkInsightsPathsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsPathsRequest &&
        networkInsightsPathIds == other.networkInsightsPathIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPathIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsPathsRequestBuilder
    implements
        Builder<DescribeNetworkInsightsPathsRequest,
            DescribeNetworkInsightsPathsRequestBuilder> {
  _$DescribeNetworkInsightsPathsRequest? _$v;

  _i3.ListBuilder<String>? _networkInsightsPathIds;
  _i3.ListBuilder<String> get networkInsightsPathIds =>
      _$this._networkInsightsPathIds ??= new _i3.ListBuilder<String>();
  set networkInsightsPathIds(_i3.ListBuilder<String>? networkInsightsPathIds) =>
      _$this._networkInsightsPathIds = networkInsightsPathIds;

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

  DescribeNetworkInsightsPathsRequestBuilder() {
    DescribeNetworkInsightsPathsRequest._init(this);
  }

  DescribeNetworkInsightsPathsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPathIds = $v.networkInsightsPathIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsPathsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsPathsRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsPathsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsPathsRequest build() => _build();

  _$DescribeNetworkInsightsPathsRequest _build() {
    _$DescribeNetworkInsightsPathsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsPathsRequest._(
              networkInsightsPathIds: _networkInsightsPathIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeNetworkInsightsPathsRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeNetworkInsightsPathsRequest', 'dryRun'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsPathIds';
        _networkInsightsPathIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsPathsRequest',
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
