// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_analysis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAnalysisRequest
    extends DeleteNetworkInsightsAnalysisRequest {
  @override
  final bool dryRun;
  @override
  final String? networkInsightsAnalysisId;

  factory _$DeleteNetworkInsightsAnalysisRequest(
          [void Function(DeleteNetworkInsightsAnalysisRequestBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAnalysisRequestBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInsightsAnalysisRequest._(
      {required this.dryRun, this.networkInsightsAnalysisId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInsightsAnalysisRequest', 'dryRun');
  }

  @override
  DeleteNetworkInsightsAnalysisRequest rebuild(
          void Function(DeleteNetworkInsightsAnalysisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAnalysisRequestBuilder toBuilder() =>
      new DeleteNetworkInsightsAnalysisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAnalysisRequest &&
        dryRun == other.dryRun &&
        networkInsightsAnalysisId == other.networkInsightsAnalysisId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInsightsAnalysisId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAnalysisRequestBuilder
    implements
        Builder<DeleteNetworkInsightsAnalysisRequest,
            DeleteNetworkInsightsAnalysisRequestBuilder> {
  _$DeleteNetworkInsightsAnalysisRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInsightsAnalysisId;
  String? get networkInsightsAnalysisId => _$this._networkInsightsAnalysisId;
  set networkInsightsAnalysisId(String? networkInsightsAnalysisId) =>
      _$this._networkInsightsAnalysisId = networkInsightsAnalysisId;

  DeleteNetworkInsightsAnalysisRequestBuilder() {
    DeleteNetworkInsightsAnalysisRequest._init(this);
  }

  DeleteNetworkInsightsAnalysisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkInsightsAnalysisId = $v.networkInsightsAnalysisId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAnalysisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAnalysisRequest;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAnalysisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAnalysisRequest build() => _build();

  _$DeleteNetworkInsightsAnalysisRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAnalysisRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkInsightsAnalysisRequest', 'dryRun'),
            networkInsightsAnalysisId: networkInsightsAnalysisId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
