// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_network_insights_access_scope_analysis_findings_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNetworkInsightsAccessScopeAnalysisFindingsResult
    extends GetNetworkInsightsAccessScopeAnalysisFindingsResult {
  @override
  final String? networkInsightsAccessScopeAnalysisId;
  @override
  final AnalysisStatus? analysisStatus;
  @override
  final _i2.BuiltList<AccessScopeAnalysisFinding>? analysisFindings;
  @override
  final String? nextToken;

  factory _$GetNetworkInsightsAccessScopeAnalysisFindingsResult(
          [void Function(
                  GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder)?
              updates]) =>
      (new GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder()
            ..update(updates))
          ._build();

  _$GetNetworkInsightsAccessScopeAnalysisFindingsResult._(
      {this.networkInsightsAccessScopeAnalysisId,
      this.analysisStatus,
      this.analysisFindings,
      this.nextToken})
      : super._();

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsResult rebuild(
          void Function(
                  GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder toBuilder() =>
      new GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNetworkInsightsAccessScopeAnalysisFindingsResult &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId &&
        analysisStatus == other.analysisStatus &&
        analysisFindings == other.analysisFindings &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jc(_$hash, analysisStatus.hashCode);
    _$hash = $jc(_$hash, analysisFindings.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder
    implements
        Builder<GetNetworkInsightsAccessScopeAnalysisFindingsResult,
            GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder> {
  _$GetNetworkInsightsAccessScopeAnalysisFindingsResult? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  AnalysisStatus? _analysisStatus;
  AnalysisStatus? get analysisStatus => _$this._analysisStatus;
  set analysisStatus(AnalysisStatus? analysisStatus) =>
      _$this._analysisStatus = analysisStatus;

  _i2.ListBuilder<AccessScopeAnalysisFinding>? _analysisFindings;
  _i2.ListBuilder<AccessScopeAnalysisFinding> get analysisFindings =>
      _$this._analysisFindings ??=
          new _i2.ListBuilder<AccessScopeAnalysisFinding>();
  set analysisFindings(
          _i2.ListBuilder<AccessScopeAnalysisFinding>? analysisFindings) =>
      _$this._analysisFindings = analysisFindings;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder();

  GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _analysisStatus = $v.analysisStatus;
      _analysisFindings = $v.analysisFindings?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNetworkInsightsAccessScopeAnalysisFindingsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNetworkInsightsAccessScopeAnalysisFindingsResult;
  }

  @override
  void update(
      void Function(GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsResult build() => _build();

  _$GetNetworkInsightsAccessScopeAnalysisFindingsResult _build() {
    _$GetNetworkInsightsAccessScopeAnalysisFindingsResult _$result;
    try {
      _$result = _$v ??
          new _$GetNetworkInsightsAccessScopeAnalysisFindingsResult._(
              networkInsightsAccessScopeAnalysisId:
                  networkInsightsAccessScopeAnalysisId,
              analysisStatus: analysisStatus,
              analysisFindings: _analysisFindings?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analysisFindings';
        _analysisFindings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNetworkInsightsAccessScopeAnalysisFindingsResult',
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
