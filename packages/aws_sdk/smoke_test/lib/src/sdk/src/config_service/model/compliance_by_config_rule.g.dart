// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_by_config_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceByConfigRule extends ComplianceByConfigRule {
  @override
  final _i2.Compliance? compliance;
  @override
  final String? configRuleName;

  factory _$ComplianceByConfigRule(
          [void Function(ComplianceByConfigRuleBuilder)? updates]) =>
      (new ComplianceByConfigRuleBuilder()..update(updates))._build();

  _$ComplianceByConfigRule._({this.compliance, this.configRuleName})
      : super._();

  @override
  ComplianceByConfigRule rebuild(
          void Function(ComplianceByConfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceByConfigRuleBuilder toBuilder() =>
      new ComplianceByConfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceByConfigRule &&
        compliance == other.compliance &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceByConfigRuleBuilder
    implements Builder<ComplianceByConfigRule, ComplianceByConfigRuleBuilder> {
  _$ComplianceByConfigRule? _$v;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  ComplianceByConfigRuleBuilder() {
    ComplianceByConfigRule._init(this);
  }

  ComplianceByConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _compliance = $v.compliance?.toBuilder();
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceByConfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceByConfigRule;
  }

  @override
  void update(void Function(ComplianceByConfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceByConfigRule build() => _build();

  _$ComplianceByConfigRule _build() {
    _$ComplianceByConfigRule _$result;
    try {
      _$result = _$v ??
          new _$ComplianceByConfigRule._(
              compliance: _compliance?.build(), configRuleName: configRuleName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliance';
        _compliance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceByConfigRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
