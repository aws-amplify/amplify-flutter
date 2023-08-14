// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_authorization_rules_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnAuthorizationRulesResult
    extends DescribeClientVpnAuthorizationRulesResult {
  @override
  final _i2.BuiltList<AuthorizationRule>? authorizationRules;
  @override
  final String? nextToken;

  factory _$DescribeClientVpnAuthorizationRulesResult(
          [void Function(DescribeClientVpnAuthorizationRulesResultBuilder)?
              updates]) =>
      (new DescribeClientVpnAuthorizationRulesResultBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnAuthorizationRulesResult._(
      {this.authorizationRules, this.nextToken})
      : super._();

  @override
  DescribeClientVpnAuthorizationRulesResult rebuild(
          void Function(DescribeClientVpnAuthorizationRulesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnAuthorizationRulesResultBuilder toBuilder() =>
      new DescribeClientVpnAuthorizationRulesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnAuthorizationRulesResult &&
        authorizationRules == other.authorizationRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizationRules.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnAuthorizationRulesResultBuilder
    implements
        Builder<DescribeClientVpnAuthorizationRulesResult,
            DescribeClientVpnAuthorizationRulesResultBuilder> {
  _$DescribeClientVpnAuthorizationRulesResult? _$v;

  _i2.ListBuilder<AuthorizationRule>? _authorizationRules;
  _i2.ListBuilder<AuthorizationRule> get authorizationRules =>
      _$this._authorizationRules ??= new _i2.ListBuilder<AuthorizationRule>();
  set authorizationRules(
          _i2.ListBuilder<AuthorizationRule>? authorizationRules) =>
      _$this._authorizationRules = authorizationRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClientVpnAuthorizationRulesResultBuilder();

  DescribeClientVpnAuthorizationRulesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizationRules = $v.authorizationRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnAuthorizationRulesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnAuthorizationRulesResult;
  }

  @override
  void update(
      void Function(DescribeClientVpnAuthorizationRulesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnAuthorizationRulesResult build() => _build();

  _$DescribeClientVpnAuthorizationRulesResult _build() {
    _$DescribeClientVpnAuthorizationRulesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnAuthorizationRulesResult._(
              authorizationRules: _authorizationRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationRules';
        _authorizationRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnAuthorizationRulesResult',
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
