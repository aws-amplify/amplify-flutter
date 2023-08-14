// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_insights_access_scopes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAccessScopesResult
    extends DescribeNetworkInsightsAccessScopesResult {
  @override
  final _i2.BuiltList<NetworkInsightsAccessScope>? networkInsightsAccessScopes;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAccessScopesResult(
          [void Function(DescribeNetworkInsightsAccessScopesResultBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAccessScopesResultBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsAccessScopesResult._(
      {this.networkInsightsAccessScopes, this.nextToken})
      : super._();

  @override
  DescribeNetworkInsightsAccessScopesResult rebuild(
          void Function(DescribeNetworkInsightsAccessScopesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAccessScopesResultBuilder toBuilder() =>
      new DescribeNetworkInsightsAccessScopesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAccessScopesResult &&
        networkInsightsAccessScopes == other.networkInsightsAccessScopes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAccessScopesResultBuilder
    implements
        Builder<DescribeNetworkInsightsAccessScopesResult,
            DescribeNetworkInsightsAccessScopesResultBuilder> {
  _$DescribeNetworkInsightsAccessScopesResult? _$v;

  _i2.ListBuilder<NetworkInsightsAccessScope>? _networkInsightsAccessScopes;
  _i2.ListBuilder<NetworkInsightsAccessScope> get networkInsightsAccessScopes =>
      _$this._networkInsightsAccessScopes ??=
          new _i2.ListBuilder<NetworkInsightsAccessScope>();
  set networkInsightsAccessScopes(
          _i2.ListBuilder<NetworkInsightsAccessScope>?
              networkInsightsAccessScopes) =>
      _$this._networkInsightsAccessScopes = networkInsightsAccessScopes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsAccessScopesResultBuilder();

  DescribeNetworkInsightsAccessScopesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopes =
          $v.networkInsightsAccessScopes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAccessScopesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAccessScopesResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAccessScopesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAccessScopesResult build() => _build();

  _$DescribeNetworkInsightsAccessScopesResult _build() {
    _$DescribeNetworkInsightsAccessScopesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAccessScopesResult._(
              networkInsightsAccessScopes:
                  _networkInsightsAccessScopes?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopes';
        _networkInsightsAccessScopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAccessScopesResult',
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
