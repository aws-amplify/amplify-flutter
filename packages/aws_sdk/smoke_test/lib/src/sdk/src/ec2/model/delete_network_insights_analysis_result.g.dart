// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_analysis_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsAnalysisResult
    extends DeleteNetworkInsightsAnalysisResult {
  @override
  final String? networkInsightsAnalysisId;

  factory _$DeleteNetworkInsightsAnalysisResult(
          [void Function(DeleteNetworkInsightsAnalysisResultBuilder)?
              updates]) =>
      (new DeleteNetworkInsightsAnalysisResultBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInsightsAnalysisResult._({this.networkInsightsAnalysisId})
      : super._();

  @override
  DeleteNetworkInsightsAnalysisResult rebuild(
          void Function(DeleteNetworkInsightsAnalysisResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsAnalysisResultBuilder toBuilder() =>
      new DeleteNetworkInsightsAnalysisResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsAnalysisResult &&
        networkInsightsAnalysisId == other.networkInsightsAnalysisId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalysisId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsAnalysisResultBuilder
    implements
        Builder<DeleteNetworkInsightsAnalysisResult,
            DeleteNetworkInsightsAnalysisResultBuilder> {
  _$DeleteNetworkInsightsAnalysisResult? _$v;

  String? _networkInsightsAnalysisId;
  String? get networkInsightsAnalysisId => _$this._networkInsightsAnalysisId;
  set networkInsightsAnalysisId(String? networkInsightsAnalysisId) =>
      _$this._networkInsightsAnalysisId = networkInsightsAnalysisId;

  DeleteNetworkInsightsAnalysisResultBuilder();

  DeleteNetworkInsightsAnalysisResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalysisId = $v.networkInsightsAnalysisId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsAnalysisResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsAnalysisResult;
  }

  @override
  void update(
      void Function(DeleteNetworkInsightsAnalysisResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsAnalysisResult build() => _build();

  _$DeleteNetworkInsightsAnalysisResult _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsAnalysisResult._(
            networkInsightsAnalysisId: networkInsightsAnalysisId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
