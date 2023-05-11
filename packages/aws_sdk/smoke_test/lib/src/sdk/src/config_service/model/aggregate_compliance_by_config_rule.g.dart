// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_compliance_by_config_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateComplianceByConfigRule
    extends AggregateComplianceByConfigRule {
  @override
  final String? configRuleName;
  @override
  final _i2.Compliance? compliance;
  @override
  final String? accountId;
  @override
  final String? awsRegion;

  factory _$AggregateComplianceByConfigRule(
          [void Function(AggregateComplianceByConfigRuleBuilder)? updates]) =>
      (new AggregateComplianceByConfigRuleBuilder()..update(updates))._build();

  _$AggregateComplianceByConfigRule._(
      {this.configRuleName, this.compliance, this.accountId, this.awsRegion})
      : super._();

  @override
  AggregateComplianceByConfigRule rebuild(
          void Function(AggregateComplianceByConfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateComplianceByConfigRuleBuilder toBuilder() =>
      new AggregateComplianceByConfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateComplianceByConfigRule &&
        configRuleName == other.configRuleName &&
        compliance == other.compliance &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateComplianceByConfigRuleBuilder
    implements
        Builder<AggregateComplianceByConfigRule,
            AggregateComplianceByConfigRuleBuilder> {
  _$AggregateComplianceByConfigRule? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  AggregateComplianceByConfigRuleBuilder() {
    AggregateComplianceByConfigRule._init(this);
  }

  AggregateComplianceByConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _compliance = $v.compliance?.toBuilder();
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateComplianceByConfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateComplianceByConfigRule;
  }

  @override
  void update(void Function(AggregateComplianceByConfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateComplianceByConfigRule build() => _build();

  _$AggregateComplianceByConfigRule _build() {
    _$AggregateComplianceByConfigRule _$result;
    try {
      _$result = _$v ??
          new _$AggregateComplianceByConfigRule._(
              configRuleName: configRuleName,
              compliance: _compliance?.build(),
              accountId: accountId,
              awsRegion: awsRegion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliance';
        _compliance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AggregateComplianceByConfigRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
