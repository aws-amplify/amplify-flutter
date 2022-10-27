// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_byconfig_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceByconfigRule extends ComplianceByconfigRule {
  @override
  final _i2.Compliance? compliance;
  @override
  final String? configRuleName;

  factory _$ComplianceByconfigRule(
          [void Function(ComplianceByconfigRuleBuilder)? updates]) =>
      (new ComplianceByconfigRuleBuilder()..update(updates))._build();

  _$ComplianceByconfigRule._({this.compliance, this.configRuleName})
      : super._();

  @override
  ComplianceByconfigRule rebuild(
          void Function(ComplianceByconfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceByconfigRuleBuilder toBuilder() =>
      new ComplianceByconfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceByconfigRule &&
        compliance == other.compliance &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, compliance.hashCode), configRuleName.hashCode));
  }
}

class ComplianceByconfigRuleBuilder
    implements Builder<ComplianceByconfigRule, ComplianceByconfigRuleBuilder> {
  _$ComplianceByconfigRule? _$v;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  ComplianceByconfigRuleBuilder() {
    ComplianceByconfigRule._init(this);
  }

  ComplianceByconfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _compliance = $v.compliance?.toBuilder();
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceByconfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceByconfigRule;
  }

  @override
  void update(void Function(ComplianceByconfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceByconfigRule build() => _build();

  _$ComplianceByconfigRule _build() {
    _$ComplianceByconfigRule _$result;
    try {
      _$result = _$v ??
          new _$ComplianceByconfigRule._(
              compliance: _compliance?.build(), configRuleName: configRuleName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliance';
        _compliance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceByconfigRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
