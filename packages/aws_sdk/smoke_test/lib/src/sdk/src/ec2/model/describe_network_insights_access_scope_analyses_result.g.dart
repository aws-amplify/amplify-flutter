// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_access_scope_analyses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAccessScopeAnalysesResult
    extends DescribeNetworkInsightsAccessScopeAnalysesResult {
  @override
  final _i2.BuiltList<NetworkInsightsAccessScopeAnalysis>?
      networkInsightsAccessScopeAnalyses;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAccessScopeAnalysesResult(
          [void Function(
                  DescribeNetworkInsightsAccessScopeAnalysesResultBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAccessScopeAnalysesResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeNetworkInsightsAccessScopeAnalysesResult._(
      {this.networkInsightsAccessScopeAnalyses, this.nextToken})
      : super._();

  @override
  DescribeNetworkInsightsAccessScopeAnalysesResult rebuild(
          void Function(DescribeNetworkInsightsAccessScopeAnalysesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAccessScopeAnalysesResultBuilder toBuilder() =>
      new DescribeNetworkInsightsAccessScopeAnalysesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAccessScopeAnalysesResult &&
        networkInsightsAccessScopeAnalyses ==
            other.networkInsightsAccessScopeAnalyses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalyses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAccessScopeAnalysesResultBuilder
    implements
        Builder<DescribeNetworkInsightsAccessScopeAnalysesResult,
            DescribeNetworkInsightsAccessScopeAnalysesResultBuilder> {
  _$DescribeNetworkInsightsAccessScopeAnalysesResult? _$v;

  _i2.ListBuilder<NetworkInsightsAccessScopeAnalysis>?
      _networkInsightsAccessScopeAnalyses;
  _i2.ListBuilder<NetworkInsightsAccessScopeAnalysis>
      get networkInsightsAccessScopeAnalyses =>
          _$this._networkInsightsAccessScopeAnalyses ??=
              new _i2.ListBuilder<NetworkInsightsAccessScopeAnalysis>();
  set networkInsightsAccessScopeAnalyses(
          _i2.ListBuilder<NetworkInsightsAccessScopeAnalysis>?
              networkInsightsAccessScopeAnalyses) =>
      _$this._networkInsightsAccessScopeAnalyses =
          networkInsightsAccessScopeAnalyses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsAccessScopeAnalysesResultBuilder();

  DescribeNetworkInsightsAccessScopeAnalysesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalyses =
          $v.networkInsightsAccessScopeAnalyses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAccessScopeAnalysesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAccessScopeAnalysesResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAccessScopeAnalysesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAccessScopeAnalysesResult build() => _build();

  _$DescribeNetworkInsightsAccessScopeAnalysesResult _build() {
    _$DescribeNetworkInsightsAccessScopeAnalysesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAccessScopeAnalysesResult._(
              networkInsightsAccessScopeAnalyses:
                  _networkInsightsAccessScopeAnalyses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopeAnalyses';
        _networkInsightsAccessScopeAnalyses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAccessScopeAnalysesResult',
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
