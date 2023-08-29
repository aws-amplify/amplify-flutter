// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRule extends ConfigRule {
  @override
  final String? configRuleName;
  @override
  final String? configRuleArn;
  @override
  final String? configRuleId;
  @override
  final String? description;
  @override
  final Scope? scope;
  @override
  final Source source;
  @override
  final String? inputParameters;
  @override
  final MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final ConfigRuleState? configRuleState;
  @override
  final String? createdBy;
  @override
  final _i2.BuiltList<EvaluationModeConfiguration>? evaluationModes;

  factory _$ConfigRule([void Function(ConfigRuleBuilder)? updates]) =>
      (new ConfigRuleBuilder()..update(updates))._build();

  _$ConfigRule._(
      {this.configRuleName,
      this.configRuleArn,
      this.configRuleId,
      this.description,
      this.scope,
      required this.source,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.configRuleState,
      this.createdBy,
      this.evaluationModes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(source, r'ConfigRule', 'source');
  }

  @override
  ConfigRule rebuild(void Function(ConfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigRuleBuilder toBuilder() => new ConfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigRule &&
        configRuleName == other.configRuleName &&
        configRuleArn == other.configRuleArn &&
        configRuleId == other.configRuleId &&
        description == other.description &&
        scope == other.scope &&
        source == other.source &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        configRuleState == other.configRuleState &&
        createdBy == other.createdBy &&
        evaluationModes == other.evaluationModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, configRuleArn.hashCode);
    _$hash = $jc(_$hash, configRuleId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, configRuleState.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, evaluationModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigRuleBuilder implements Builder<ConfigRule, ConfigRuleBuilder> {
  _$ConfigRule? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _configRuleArn;
  String? get configRuleArn => _$this._configRuleArn;
  set configRuleArn(String? configRuleArn) =>
      _$this._configRuleArn = configRuleArn;

  String? _configRuleId;
  String? get configRuleId => _$this._configRuleId;
  set configRuleId(String? configRuleId) => _$this._configRuleId = configRuleId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ScopeBuilder? _scope;
  ScopeBuilder get scope => _$this._scope ??= new ScopeBuilder();
  set scope(ScopeBuilder? scope) => _$this._scope = scope;

  SourceBuilder? _source;
  SourceBuilder get source => _$this._source ??= new SourceBuilder();
  set source(SourceBuilder? source) => _$this._source = source;

  String? _inputParameters;
  String? get inputParameters => _$this._inputParameters;
  set inputParameters(String? inputParameters) =>
      _$this._inputParameters = inputParameters;

  MaximumExecutionFrequency? _maximumExecutionFrequency;
  MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  ConfigRuleState? _configRuleState;
  ConfigRuleState? get configRuleState => _$this._configRuleState;
  set configRuleState(ConfigRuleState? configRuleState) =>
      _$this._configRuleState = configRuleState;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  _i2.ListBuilder<EvaluationModeConfiguration>? _evaluationModes;
  _i2.ListBuilder<EvaluationModeConfiguration> get evaluationModes =>
      _$this._evaluationModes ??=
          new _i2.ListBuilder<EvaluationModeConfiguration>();
  set evaluationModes(
          _i2.ListBuilder<EvaluationModeConfiguration>? evaluationModes) =>
      _$this._evaluationModes = evaluationModes;

  ConfigRuleBuilder();

  ConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _configRuleArn = $v.configRuleArn;
      _configRuleId = $v.configRuleId;
      _description = $v.description;
      _scope = $v.scope?.toBuilder();
      _source = $v.source.toBuilder();
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _configRuleState = $v.configRuleState;
      _createdBy = $v.createdBy;
      _evaluationModes = $v.evaluationModes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigRule;
  }

  @override
  void update(void Function(ConfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigRule build() => _build();

  _$ConfigRule _build() {
    _$ConfigRule _$result;
    try {
      _$result = _$v ??
          new _$ConfigRule._(
              configRuleName: configRuleName,
              configRuleArn: configRuleArn,
              configRuleId: configRuleId,
              description: description,
              scope: _scope?.build(),
              source: source.build(),
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              configRuleState: configRuleState,
              createdBy: createdBy,
              evaluationModes: _evaluationModes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();
        _$failedField = 'source';
        source.build();

        _$failedField = 'evaluationModes';
        _evaluationModes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfigRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
