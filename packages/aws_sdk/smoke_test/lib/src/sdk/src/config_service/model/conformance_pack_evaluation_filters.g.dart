// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_evaluation_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackEvaluationFilters
    extends ConformancePackEvaluationFilters {
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final _i3.BuiltList<String>? configRuleNames;
  @override
  final _i3.BuiltList<String>? resourceIds;
  @override
  final String? resourceType;

  factory _$ConformancePackEvaluationFilters(
          [void Function(ConformancePackEvaluationFiltersBuilder)? updates]) =>
      (new ConformancePackEvaluationFiltersBuilder()..update(updates))._build();

  _$ConformancePackEvaluationFilters._(
      {this.complianceType,
      this.configRuleNames,
      this.resourceIds,
      this.resourceType})
      : super._();

  @override
  ConformancePackEvaluationFilters rebuild(
          void Function(ConformancePackEvaluationFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackEvaluationFiltersBuilder toBuilder() =>
      new ConformancePackEvaluationFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackEvaluationFilters &&
        complianceType == other.complianceType &&
        configRuleNames == other.configRuleNames &&
        resourceIds == other.resourceIds &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, complianceType.hashCode), configRuleNames.hashCode),
            resourceIds.hashCode),
        resourceType.hashCode));
  }
}

class ConformancePackEvaluationFiltersBuilder
    implements
        Builder<ConformancePackEvaluationFilters,
            ConformancePackEvaluationFiltersBuilder> {
  _$ConformancePackEvaluationFilters? _$v;

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

  _i3.ListBuilder<String>? _resourceIds;
  _i3.ListBuilder<String> get resourceIds =>
      _$this._resourceIds ??= new _i3.ListBuilder<String>();
  set resourceIds(_i3.ListBuilder<String>? resourceIds) =>
      _$this._resourceIds = resourceIds;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  ConformancePackEvaluationFiltersBuilder() {
    ConformancePackEvaluationFilters._init(this);
  }

  ConformancePackEvaluationFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _resourceIds = $v.resourceIds?.toBuilder();
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackEvaluationFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackEvaluationFilters;
  }

  @override
  void update(void Function(ConformancePackEvaluationFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackEvaluationFilters build() => _build();

  _$ConformancePackEvaluationFilters _build() {
    _$ConformancePackEvaluationFilters _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackEvaluationFilters._(
              complianceType: complianceType,
              configRuleNames: _configRuleNames?.build(),
              resourceIds: _resourceIds?.build(),
              resourceType: resourceType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
        _$failedField = 'resourceIds';
        _resourceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConformancePackEvaluationFilters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
