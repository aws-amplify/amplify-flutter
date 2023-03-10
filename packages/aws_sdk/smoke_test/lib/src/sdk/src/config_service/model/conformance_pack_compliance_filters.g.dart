// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_compliance_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackComplianceFilters
    extends ConformancePackComplianceFilters {
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final _i3.BuiltList<String>? configRuleNames;

  factory _$ConformancePackComplianceFilters(
          [void Function(ConformancePackComplianceFiltersBuilder)? updates]) =>
      (new ConformancePackComplianceFiltersBuilder()..update(updates))._build();

  _$ConformancePackComplianceFilters._(
      {this.complianceType, this.configRuleNames})
      : super._();

  @override
  ConformancePackComplianceFilters rebuild(
          void Function(ConformancePackComplianceFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackComplianceFiltersBuilder toBuilder() =>
      new ConformancePackComplianceFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackComplianceFilters &&
        complianceType == other.complianceType &&
        configRuleNames == other.configRuleNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackComplianceFiltersBuilder
    implements
        Builder<ConformancePackComplianceFilters,
            ConformancePackComplianceFiltersBuilder> {
  _$ConformancePackComplianceFilters? _$v;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  ConformancePackComplianceFiltersBuilder() {
    ConformancePackComplianceFilters._init(this);
  }

  ConformancePackComplianceFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackComplianceFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackComplianceFilters;
  }

  @override
  void update(void Function(ConformancePackComplianceFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackComplianceFilters build() => _build();

  _$ConformancePackComplianceFilters _build() {
    _$ConformancePackComplianceFilters _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackComplianceFilters._(
              complianceType: complianceType,
              configRuleNames: _configRuleNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConformancePackComplianceFilters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
