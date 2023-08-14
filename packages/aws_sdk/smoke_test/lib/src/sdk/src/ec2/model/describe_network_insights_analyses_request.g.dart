// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_analyses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAnalysesRequest
    extends DescribeNetworkInsightsAnalysesRequest {
  @override
  final _i3.BuiltList<String>? networkInsightsAnalysisIds;
  @override
  final String? networkInsightsPathId;
  @override
  final DateTime? analysisStartTime;
  @override
  final DateTime? analysisEndTime;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final bool dryRun;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAnalysesRequest(
          [void Function(DescribeNetworkInsightsAnalysesRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAnalysesRequestBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsAnalysesRequest._(
      {this.networkInsightsAnalysisIds,
      this.networkInsightsPathId,
      this.analysisStartTime,
      this.analysisEndTime,
      this.filters,
      required this.maxResults,
      required this.dryRun,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeNetworkInsightsAnalysesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInsightsAnalysesRequest', 'dryRun');
  }

  @override
  DescribeNetworkInsightsAnalysesRequest rebuild(
          void Function(DescribeNetworkInsightsAnalysesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAnalysesRequestBuilder toBuilder() =>
      new DescribeNetworkInsightsAnalysesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAnalysesRequest &&
        networkInsightsAnalysisIds == other.networkInsightsAnalysisIds &&
        networkInsightsPathId == other.networkInsightsPathId &&
        analysisStartTime == other.analysisStartTime &&
        analysisEndTime == other.analysisEndTime &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalysisIds.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, analysisStartTime.hashCode);
    _$hash = $jc(_$hash, analysisEndTime.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAnalysesRequestBuilder
    implements
        Builder<DescribeNetworkInsightsAnalysesRequest,
            DescribeNetworkInsightsAnalysesRequestBuilder> {
  _$DescribeNetworkInsightsAnalysesRequest? _$v;

  _i3.ListBuilder<String>? _networkInsightsAnalysisIds;
  _i3.ListBuilder<String> get networkInsightsAnalysisIds =>
      _$this._networkInsightsAnalysisIds ??= new _i3.ListBuilder<String>();
  set networkInsightsAnalysisIds(
          _i3.ListBuilder<String>? networkInsightsAnalysisIds) =>
      _$this._networkInsightsAnalysisIds = networkInsightsAnalysisIds;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  DateTime? _analysisStartTime;
  DateTime? get analysisStartTime => _$this._analysisStartTime;
  set analysisStartTime(DateTime? analysisStartTime) =>
      _$this._analysisStartTime = analysisStartTime;

  DateTime? _analysisEndTime;
  DateTime? get analysisEndTime => _$this._analysisEndTime;
  set analysisEndTime(DateTime? analysisEndTime) =>
      _$this._analysisEndTime = analysisEndTime;

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

  DescribeNetworkInsightsAnalysesRequestBuilder() {
    DescribeNetworkInsightsAnalysesRequest._init(this);
  }

  DescribeNetworkInsightsAnalysesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalysisIds = $v.networkInsightsAnalysisIds?.toBuilder();
      _networkInsightsPathId = $v.networkInsightsPathId;
      _analysisStartTime = $v.analysisStartTime;
      _analysisEndTime = $v.analysisEndTime;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAnalysesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAnalysesRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAnalysesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAnalysesRequest build() => _build();

  _$DescribeNetworkInsightsAnalysesRequest _build() {
    _$DescribeNetworkInsightsAnalysesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAnalysesRequest._(
              networkInsightsAnalysisIds: _networkInsightsAnalysisIds?.build(),
              networkInsightsPathId: networkInsightsPathId,
              analysisStartTime: analysisStartTime,
              analysisEndTime: analysisEndTime,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeNetworkInsightsAnalysesRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeNetworkInsightsAnalysesRequest', 'dryRun'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAnalysisIds';
        _networkInsightsAnalysisIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAnalysesRequest',
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
