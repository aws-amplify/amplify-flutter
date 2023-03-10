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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, resourceIds.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
