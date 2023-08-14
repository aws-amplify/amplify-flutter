// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_analyses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAnalysesResult
    extends DescribeNetworkInsightsAnalysesResult {
  @override
  final _i2.BuiltList<NetworkInsightsAnalysis>? networkInsightsAnalyses;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAnalysesResult(
          [void Function(DescribeNetworkInsightsAnalysesResultBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAnalysesResultBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsAnalysesResult._(
      {this.networkInsightsAnalyses, this.nextToken})
      : super._();

  @override
  DescribeNetworkInsightsAnalysesResult rebuild(
          void Function(DescribeNetworkInsightsAnalysesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAnalysesResultBuilder toBuilder() =>
      new DescribeNetworkInsightsAnalysesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAnalysesResult &&
        networkInsightsAnalyses == other.networkInsightsAnalyses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalyses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAnalysesResultBuilder
    implements
        Builder<DescribeNetworkInsightsAnalysesResult,
            DescribeNetworkInsightsAnalysesResultBuilder> {
  _$DescribeNetworkInsightsAnalysesResult? _$v;

  _i2.ListBuilder<NetworkInsightsAnalysis>? _networkInsightsAnalyses;
  _i2.ListBuilder<NetworkInsightsAnalysis> get networkInsightsAnalyses =>
      _$this._networkInsightsAnalyses ??=
          new _i2.ListBuilder<NetworkInsightsAnalysis>();
  set networkInsightsAnalyses(
          _i2.ListBuilder<NetworkInsightsAnalysis>? networkInsightsAnalyses) =>
      _$this._networkInsightsAnalyses = networkInsightsAnalyses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsAnalysesResultBuilder();

  DescribeNetworkInsightsAnalysesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalyses = $v.networkInsightsAnalyses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAnalysesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAnalysesResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAnalysesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAnalysesResult build() => _build();

  _$DescribeNetworkInsightsAnalysesResult _build() {
    _$DescribeNetworkInsightsAnalysesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAnalysesResult._(
              networkInsightsAnalyses: _networkInsightsAnalyses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAnalyses';
        _networkInsightsAnalyses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAnalysesResult',
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
