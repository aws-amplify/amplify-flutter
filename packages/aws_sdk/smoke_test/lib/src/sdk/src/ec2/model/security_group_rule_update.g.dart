// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_rule_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupRuleUpdate extends SecurityGroupRuleUpdate {
  @override
  final String? securityGroupRuleId;
  @override
  final SecurityGroupRuleRequest? securityGroupRule;

  factory _$SecurityGroupRuleUpdate(
          [void Function(SecurityGroupRuleUpdateBuilder)? updates]) =>
      (new SecurityGroupRuleUpdateBuilder()..update(updates))._build();

  _$SecurityGroupRuleUpdate._(
      {this.securityGroupRuleId, this.securityGroupRule})
      : super._();

  @override
  SecurityGroupRuleUpdate rebuild(
          void Function(SecurityGroupRuleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupRuleUpdateBuilder toBuilder() =>
      new SecurityGroupRuleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupRuleUpdate &&
        securityGroupRuleId == other.securityGroupRuleId &&
        securityGroupRule == other.securityGroupRule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupRuleId.hashCode);
    _$hash = $jc(_$hash, securityGroupRule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupRuleUpdateBuilder
    implements
        Builder<SecurityGroupRuleUpdate, SecurityGroupRuleUpdateBuilder> {
  _$SecurityGroupRuleUpdate? _$v;

  String? _securityGroupRuleId;
  String? get securityGroupRuleId => _$this._securityGroupRuleId;
  set securityGroupRuleId(String? securityGroupRuleId) =>
      _$this._securityGroupRuleId = securityGroupRuleId;

  SecurityGroupRuleRequestBuilder? _securityGroupRule;
  SecurityGroupRuleRequestBuilder get securityGroupRule =>
      _$this._securityGroupRule ??= new SecurityGroupRuleRequestBuilder();
  set securityGroupRule(SecurityGroupRuleRequestBuilder? securityGroupRule) =>
      _$this._securityGroupRule = securityGroupRule;

  SecurityGroupRuleUpdateBuilder();

  SecurityGroupRuleUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupRuleId = $v.securityGroupRuleId;
      _securityGroupRule = $v.securityGroupRule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupRuleUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupRuleUpdate;
  }

  @override
  void update(void Function(SecurityGroupRuleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupRuleUpdate build() => _build();

  _$SecurityGroupRuleUpdate _build() {
    _$SecurityGroupRuleUpdate _$result;
    try {
      _$result = _$v ??
          new _$SecurityGroupRuleUpdate._(
              securityGroupRuleId: securityGroupRuleId,
              securityGroupRule: _securityGroupRule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupRule';
        _securityGroupRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SecurityGroupRuleUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
