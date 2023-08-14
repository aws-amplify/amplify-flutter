// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_access_scope_analysis_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAccessScopeAnalysisResult
    extends DeleteNetworkInsightsAccessScopeAnalysisResult {
  @override
  final String? networkInsightsAccessScopeAnalysisId;

  factory _$DeleteNetworkInsightsAccessScopeAnalysisResult(
          [void Function(DeleteNetworkInsightsAccessScopeAnalysisResultBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAccessScopeAnalysisResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteNetworkInsightsAccessScopeAnalysisResult._(
      {this.networkInsightsAccessScopeAnalysisId})
      : super._();

  @override
  DeleteNetworkInsightsAccessScopeAnalysisResult rebuild(
          void Function(DeleteNetworkInsightsAccessScopeAnalysisResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAccessScopeAnalysisResultBuilder toBuilder() =>
      new DeleteNetworkInsightsAccessScopeAnalysisResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAccessScopeAnalysisResult &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAccessScopeAnalysisResultBuilder
    implements
        Builder<DeleteNetworkInsightsAccessScopeAnalysisResult,
            DeleteNetworkInsightsAccessScopeAnalysisResultBuilder> {
  _$DeleteNetworkInsightsAccessScopeAnalysisResult? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  DeleteNetworkInsightsAccessScopeAnalysisResultBuilder();

  DeleteNetworkInsightsAccessScopeAnalysisResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAccessScopeAnalysisResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAccessScopeAnalysisResult;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAccessScopeAnalysisResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAccessScopeAnalysisResult build() => _build();

  _$DeleteNetworkInsightsAccessScopeAnalysisResult _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAccessScopeAnalysisResult._(
            networkInsightsAccessScopeAnalysisId:
                networkInsightsAccessScopeAnalysisId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
