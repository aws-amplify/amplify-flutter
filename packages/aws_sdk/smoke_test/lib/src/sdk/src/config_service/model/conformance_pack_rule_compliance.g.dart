// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_rule_compliance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackRuleCompliance extends ConformancePackRuleCompliance {
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final String? configRuleName;
  @override
  final _i3.BuiltList<String>? controls;

  factory _$ConformancePackRuleCompliance(
          [void Function(ConformancePackRuleComplianceBuilder)? updates]) =>
      (new ConformancePackRuleComplianceBuilder()..update(updates))._build();

  _$ConformancePackRuleCompliance._(
      {this.complianceType, this.configRuleName, this.controls})
      : super._();

  @override
  ConformancePackRuleCompliance rebuild(
          void Function(ConformancePackRuleComplianceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackRuleComplianceBuilder toBuilder() =>
      new ConformancePackRuleComplianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackRuleCompliance &&
        complianceType == other.complianceType &&
        configRuleName == other.configRuleName &&
        controls == other.controls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, complianceType.hashCode), configRuleName.hashCode),
        controls.hashCode));
  }
}

class ConformancePackRuleComplianceBuilder
    implements
        Builder<ConformancePackRuleCompliance,
            ConformancePackRuleComplianceBuilder> {
  _$ConformancePackRuleCompliance? _$v;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i3.ListBuilder<String>? _controls;
  _i3.ListBuilder<String> get controls =>
      _$this._controls ??= new _i3.ListBuilder<String>();
  set controls(_i3.ListBuilder<String>? controls) =>
      _$this._controls = controls;

  ConformancePackRuleComplianceBuilder() {
    ConformancePackRuleCompliance._init(this);
  }

  ConformancePackRuleComplianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _configRuleName = $v.configRuleName;
      _controls = $v.controls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackRuleCompliance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackRuleCompliance;
  }

  @override
  void update(void Function(ConformancePackRuleComplianceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackRuleCompliance build() => _build();

  _$ConformancePackRuleCompliance _build() {
    _$ConformancePackRuleCompliance _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackRuleCompliance._(
              complianceType: complianceType,
              configRuleName: configRuleName,
              controls: _controls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'controls';
        _controls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConformancePackRuleCompliance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
