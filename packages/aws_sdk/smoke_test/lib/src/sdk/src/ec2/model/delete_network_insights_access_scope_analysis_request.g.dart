// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_access_scope_analysis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAccessScopeAnalysisRequest
    extends DeleteNetworkInsightsAccessScopeAnalysisRequest {
  @override
  final String? networkInsightsAccessScopeAnalysisId;
  @override
  final bool dryRun;

  factory _$DeleteNetworkInsightsAccessScopeAnalysisRequest(
          [void Function(
                  DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteNetworkInsightsAccessScopeAnalysisRequest._(
      {this.networkInsightsAccessScopeAnalysisId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInsightsAccessScopeAnalysisRequest', 'dryRun');
  }

  @override
  DeleteNetworkInsightsAccessScopeAnalysisRequest rebuild(
          void Function(DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder toBuilder() =>
      new DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAccessScopeAnalysisRequest &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder
    implements
        Builder<DeleteNetworkInsightsAccessScopeAnalysisRequest,
            DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder> {
  _$DeleteNetworkInsightsAccessScopeAnalysisRequest? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder() {
    DeleteNetworkInsightsAccessScopeAnalysisRequest._init(this);
  }

  DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAccessScopeAnalysisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAccessScopeAnalysisRequest;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAccessScopeAnalysisRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAccessScopeAnalysisRequest build() => _build();

  _$DeleteNetworkInsightsAccessScopeAnalysisRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAccessScopeAnalysisRequest._(
            networkInsightsAccessScopeAnalysisId:
                networkInsightsAccessScopeAnalysisId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DeleteNetworkInsightsAccessScopeAnalysisRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
