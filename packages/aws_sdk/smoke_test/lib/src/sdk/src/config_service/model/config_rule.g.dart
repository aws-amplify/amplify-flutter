// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRule extends ConfigRule {
  @override
  final String? configRuleArn;
  @override
  final String? configRuleId;
  @override
  final String? configRuleName;
  @override
  final _i2.ConfigRuleState? configRuleState;
  @override
  final String? createdBy;
  @override
  final String? description;
  @override
  final String? inputParameters;
  @override
  final _i3.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final _i4.Scope? scope;
  @override
  final _i5.Source source;

  factory _$ConfigRule([void Function(ConfigRuleBuilder)? updates]) =>
      (new ConfigRuleBuilder()..update(updates))._build();

  _$ConfigRule._(
      {this.configRuleArn,
      this.configRuleId,
      this.configRuleName,
      this.configRuleState,
      this.createdBy,
      this.description,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.scope,
      required this.source})
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
        configRuleArn == other.configRuleArn &&
        configRuleId == other.configRuleId &&
        configRuleName == other.configRuleName &&
        configRuleState == other.configRuleState &&
        createdBy == other.createdBy &&
        description == other.description &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        scope == other.scope &&
        source == other.source;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleArn.hashCode);
    _$hash = $jc(_$hash, configRuleId.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, configRuleState.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigRuleBuilder implements Builder<ConfigRule, ConfigRuleBuilder> {
  _$ConfigRule? _$v;

  String? _configRuleArn;
  String? get configRuleArn => _$this._configRuleArn;
  set configRuleArn(String? configRuleArn) =>
      _$this._configRuleArn = configRuleArn;

  String? _configRuleId;
  String? get configRuleId => _$this._configRuleId;
  set configRuleId(String? configRuleId) => _$this._configRuleId = configRuleId;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i2.ConfigRuleState? _configRuleState;
  _i2.ConfigRuleState? get configRuleState => _$this._configRuleState;
  set configRuleState(_i2.ConfigRuleState? configRuleState) =>
      _$this._configRuleState = configRuleState;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _inputParameters;
  String? get inputParameters => _$this._inputParameters;
  set inputParameters(String? inputParameters) =>
      _$this._inputParameters = inputParameters;

  _i3.MaximumExecutionFrequency? _maximumExecutionFrequency;
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          _i3.MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  _i4.ScopeBuilder? _scope;
  _i4.ScopeBuilder get scope => _$this._scope ??= new _i4.ScopeBuilder();
  set scope(_i4.ScopeBuilder? scope) => _$this._scope = scope;

  _i5.SourceBuilder? _source;
  _i5.SourceBuilder get source => _$this._source ??= new _i5.SourceBuilder();
  set source(_i5.SourceBuilder? source) => _$this._source = source;

  ConfigRuleBuilder() {
    ConfigRule._init(this);
  }

  ConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleArn = $v.configRuleArn;
      _configRuleId = $v.configRuleId;
      _configRuleName = $v.configRuleName;
      _configRuleState = $v.configRuleState;
      _createdBy = $v.createdBy;
      _description = $v.description;
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _scope = $v.scope?.toBuilder();
      _source = $v.source.toBuilder();
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
              configRuleArn: configRuleArn,
              configRuleId: configRuleId,
              configRuleName: configRuleName,
              configRuleState: configRuleState,
              createdBy: createdBy,
              description: description,
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              scope: _scope?.build(),
              source: source.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();
        _$failedField = 'source';
        source.build();
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
