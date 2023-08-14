// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_security_group_rules_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupRulesResult
    extends DescribeSecurityGroupRulesResult {
  @override
  final _i2.BuiltList<SecurityGroupRule>? securityGroupRules;
  @override
  final String? nextToken;

  factory _$DescribeSecurityGroupRulesResult(
          [void Function(DescribeSecurityGroupRulesResultBuilder)? updates]) =>
      (new DescribeSecurityGroupRulesResultBuilder()..update(updates))._build();

  _$DescribeSecurityGroupRulesResult._(
      {this.securityGroupRules, this.nextToken})
      : super._();

  @override
  DescribeSecurityGroupRulesResult rebuild(
          void Function(DescribeSecurityGroupRulesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupRulesResultBuilder toBuilder() =>
      new DescribeSecurityGroupRulesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupRulesResult &&
        securityGroupRules == other.securityGroupRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupRules.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupRulesResultBuilder
    implements
        Builder<DescribeSecurityGroupRulesResult,
            DescribeSecurityGroupRulesResultBuilder> {
  _$DescribeSecurityGroupRulesResult? _$v;

  _i2.ListBuilder<SecurityGroupRule>? _securityGroupRules;
  _i2.ListBuilder<SecurityGroupRule> get securityGroupRules =>
      _$this._securityGroupRules ??= new _i2.ListBuilder<SecurityGroupRule>();
  set securityGroupRules(
          _i2.ListBuilder<SecurityGroupRule>? securityGroupRules) =>
      _$this._securityGroupRules = securityGroupRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSecurityGroupRulesResultBuilder();

  DescribeSecurityGroupRulesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupRules = $v.securityGroupRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupRulesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupRulesResult;
  }

  @override
  void update(void Function(DescribeSecurityGroupRulesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupRulesResult build() => _build();

  _$DescribeSecurityGroupRulesResult _build() {
    _$DescribeSecurityGroupRulesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupRulesResult._(
              securityGroupRules: _securityGroupRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupRules';
        _securityGroupRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupRulesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
