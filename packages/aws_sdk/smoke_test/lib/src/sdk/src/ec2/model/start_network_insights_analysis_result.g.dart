// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_network_insights_analysis_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartNetworkInsightsAnalysisResult
    extends StartNetworkInsightsAnalysisResult {
  @override
  final NetworkInsightsAnalysis? networkInsightsAnalysis;

  factory _$StartNetworkInsightsAnalysisResult(
          [void Function(StartNetworkInsightsAnalysisResultBuilder)?
              updates]) =>
      (new StartNetworkInsightsAnalysisResultBuilder()..update(updates))
          ._build();

  _$StartNetworkInsightsAnalysisResult._({this.networkInsightsAnalysis})
      : super._();

  @override
  StartNetworkInsightsAnalysisResult rebuild(
          void Function(StartNetworkInsightsAnalysisResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartNetworkInsightsAnalysisResultBuilder toBuilder() =>
      new StartNetworkInsightsAnalysisResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartNetworkInsightsAnalysisResult &&
        networkInsightsAnalysis == other.networkInsightsAnalysis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalysis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartNetworkInsightsAnalysisResultBuilder
    implements
        Builder<StartNetworkInsightsAnalysisResult,
            StartNetworkInsightsAnalysisResultBuilder> {
  _$StartNetworkInsightsAnalysisResult? _$v;

  NetworkInsightsAnalysisBuilder? _networkInsightsAnalysis;
  NetworkInsightsAnalysisBuilder get networkInsightsAnalysis =>
      _$this._networkInsightsAnalysis ??= new NetworkInsightsAnalysisBuilder();
  set networkInsightsAnalysis(
          NetworkInsightsAnalysisBuilder? networkInsightsAnalysis) =>
      _$this._networkInsightsAnalysis = networkInsightsAnalysis;

  StartNetworkInsightsAnalysisResultBuilder();

  StartNetworkInsightsAnalysisResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalysis = $v.networkInsightsAnalysis?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartNetworkInsightsAnalysisResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartNetworkInsightsAnalysisResult;
  }

  @override
  void update(
      void Function(StartNetworkInsightsAnalysisResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartNetworkInsightsAnalysisResult build() => _build();

  _$StartNetworkInsightsAnalysisResult _build() {
    _$StartNetworkInsightsAnalysisResult _$result;
    try {
      _$result = _$v ??
          new _$StartNetworkInsightsAnalysisResult._(
              networkInsightsAnalysis: _networkInsightsAnalysis?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAnalysis';
        _networkInsightsAnalysis?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartNetworkInsightsAnalysisResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
