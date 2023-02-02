// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_compliance_by_config_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateComplianceByConfigRule
    extends AggregateComplianceByConfigRule {
  @override
  final String? accountId;
  @override
  final String? awsRegion;
  @override
  final _i2.Compliance? compliance;
  @override
  final String? configRuleName;

  factory _$AggregateComplianceByConfigRule(
          [void Function(AggregateComplianceByConfigRuleBuilder)? updates]) =>
      (new AggregateComplianceByConfigRuleBuilder()..update(updates))._build();

  _$AggregateComplianceByConfigRule._(
      {this.accountId, this.awsRegion, this.compliance, this.configRuleName})
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
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        compliance == other.compliance &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateComplianceByConfigRuleBuilder
    implements
        Builder<AggregateComplianceByConfigRule,
            AggregateComplianceByConfigRuleBuilder> {
  _$AggregateComplianceByConfigRule? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  AggregateComplianceByConfigRuleBuilder() {
    AggregateComplianceByConfigRule._init(this);
  }

  AggregateComplianceByConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _compliance = $v.compliance?.toBuilder();
      _configRuleName = $v.configRuleName;
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
              accountId: accountId,
              awsRegion: awsRegion,
              compliance: _compliance?.build(),
              configRuleName: configRuleName);
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
