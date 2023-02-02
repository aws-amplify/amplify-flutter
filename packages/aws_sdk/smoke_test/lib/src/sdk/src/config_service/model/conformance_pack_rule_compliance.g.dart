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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, controls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
