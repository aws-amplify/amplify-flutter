// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_evaluation_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackEvaluationFilters
    extends ConformancePackEvaluationFilters {
  @override
  final _i3.BuiltList<String>? configRuleNames;
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final String? resourceType;
  @override
  final _i3.BuiltList<String>? resourceIds;

  factory _$ConformancePackEvaluationFilters(
          [void Function(ConformancePackEvaluationFiltersBuilder)? updates]) =>
      (new ConformancePackEvaluationFiltersBuilder()..update(updates))._build();

  _$ConformancePackEvaluationFilters._(
      {this.configRuleNames,
      this.complianceType,
      this.resourceType,
      this.resourceIds})
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
        configRuleNames == other.configRuleNames &&
        complianceType == other.complianceType &&
        resourceType == other.resourceType &&
        resourceIds == other.resourceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackEvaluationFiltersBuilder
    implements
        Builder<ConformancePackEvaluationFilters,
            ConformancePackEvaluationFiltersBuilder> {
  _$ConformancePackEvaluationFilters? _$v;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i3.ListBuilder<String>? _resourceIds;
  _i3.ListBuilder<String> get resourceIds =>
      _$this._resourceIds ??= new _i3.ListBuilder<String>();
  set resourceIds(_i3.ListBuilder<String>? resourceIds) =>
      _$this._resourceIds = resourceIds;

  ConformancePackEvaluationFiltersBuilder() {
    ConformancePackEvaluationFilters._init(this);
  }

  ConformancePackEvaluationFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _complianceType = $v.complianceType;
      _resourceType = $v.resourceType;
      _resourceIds = $v.resourceIds?.toBuilder();
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
              configRuleNames: _configRuleNames?.build(),
              complianceType: complianceType,
              resourceType: resourceType,
              resourceIds: _resourceIds?.build());
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
