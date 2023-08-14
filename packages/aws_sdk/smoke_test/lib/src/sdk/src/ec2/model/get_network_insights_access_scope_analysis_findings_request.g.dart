// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_network_insights_access_scope_analysis_findings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest
    extends GetNetworkInsightsAccessScopeAnalysisFindingsRequest {
  @override
  final String? networkInsightsAccessScopeAnalysisId;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest(
          [void Function(
                  GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder)?
              updates]) =>
      (new GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest._(
      {this.networkInsightsAccessScopeAnalysisId,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetNetworkInsightsAccessScopeAnalysisFindingsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'GetNetworkInsightsAccessScopeAnalysisFindingsRequest', 'dryRun');
  }

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsRequest rebuild(
          void Function(
                  GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder toBuilder() =>
      new GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNetworkInsightsAccessScopeAnalysisFindingsRequest &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder
    implements
        Builder<GetNetworkInsightsAccessScopeAnalysisFindingsRequest,
            GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder> {
  _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder() {
    GetNetworkInsightsAccessScopeAnalysisFindingsRequest._init(this);
  }

  GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNetworkInsightsAccessScopeAnalysisFindingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest;
  }

  @override
  void update(
      void Function(
              GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsRequest build() => _build();

  _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest _build() {
    final _$result = _$v ??
        new _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest._(
            networkInsightsAccessScopeAnalysisId:
                networkInsightsAccessScopeAnalysisId,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults,
                r'GetNetworkInsightsAccessScopeAnalysisFindingsRequest',
                'maxResults'),
            nextToken: nextToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'GetNetworkInsightsAccessScopeAnalysisFindingsRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
