// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationConfiguration extends RemediationConfiguration {
  @override
  final String? arn;
  @override
  final bool? automatic;
  @override
  final String configRuleName;
  @override
  final String? createdByService;
  @override
  final _i2.ExecutionControls? executionControls;
  @override
  final int? maximumAutomaticAttempts;
  @override
  final _i6.BuiltMap<String, _i3.RemediationParameterValue>? parameters;
  @override
  final String? resourceType;
  @override
  final _i4.Int64? retryAttemptSeconds;
  @override
  final String targetId;
  @override
  final _i5.RemediationTargetType targetType;
  @override
  final String? targetVersion;

  factory _$RemediationConfiguration(
          [void Function(RemediationConfigurationBuilder)? updates]) =>
      (new RemediationConfigurationBuilder()..update(updates))._build();

  _$RemediationConfiguration._(
      {this.arn,
      this.automatic,
      required this.configRuleName,
      this.createdByService,
      this.executionControls,
      this.maximumAutomaticAttempts,
      this.parameters,
      this.resourceType,
      this.retryAttemptSeconds,
      required this.targetId,
      required this.targetType,
      this.targetVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'RemediationConfiguration', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        targetId, r'RemediationConfiguration', 'targetId');
    BuiltValueNullFieldError.checkNotNull(
        targetType, r'RemediationConfiguration', 'targetType');
  }

  @override
  RemediationConfiguration rebuild(
          void Function(RemediationConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationConfigurationBuilder toBuilder() =>
      new RemediationConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationConfiguration &&
        arn == other.arn &&
        automatic == other.automatic &&
        configRuleName == other.configRuleName &&
        createdByService == other.createdByService &&
        executionControls == other.executionControls &&
        maximumAutomaticAttempts == other.maximumAutomaticAttempts &&
        parameters == other.parameters &&
        resourceType == other.resourceType &&
        retryAttemptSeconds == other.retryAttemptSeconds &&
        targetId == other.targetId &&
        targetType == other.targetType &&
        targetVersion == other.targetVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, automatic.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, createdByService.hashCode);
    _$hash = $jc(_$hash, executionControls.hashCode);
    _$hash = $jc(_$hash, maximumAutomaticAttempts.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, retryAttemptSeconds.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, targetVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationConfigurationBuilder
    implements
        Builder<RemediationConfiguration, RemediationConfigurationBuilder> {
  _$RemediationConfiguration? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  bool? _automatic;
  bool? get automatic => _$this._automatic;
  set automatic(bool? automatic) => _$this._automatic = automatic;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _createdByService;
  String? get createdByService => _$this._createdByService;
  set createdByService(String? createdByService) =>
      _$this._createdByService = createdByService;

  _i2.ExecutionControlsBuilder? _executionControls;
  _i2.ExecutionControlsBuilder get executionControls =>
      _$this._executionControls ??= new _i2.ExecutionControlsBuilder();
  set executionControls(_i2.ExecutionControlsBuilder? executionControls) =>
      _$this._executionControls = executionControls;

  int? _maximumAutomaticAttempts;
  int? get maximumAutomaticAttempts => _$this._maximumAutomaticAttempts;
  set maximumAutomaticAttempts(int? maximumAutomaticAttempts) =>
      _$this._maximumAutomaticAttempts = maximumAutomaticAttempts;

  _i6.MapBuilder<String, _i3.RemediationParameterValue>? _parameters;
  _i6.MapBuilder<String, _i3.RemediationParameterValue> get parameters =>
      _$this._parameters ??=
          new _i6.MapBuilder<String, _i3.RemediationParameterValue>();
  set parameters(
          _i6.MapBuilder<String, _i3.RemediationParameterValue>? parameters) =>
      _$this._parameters = parameters;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i4.Int64? _retryAttemptSeconds;
  _i4.Int64? get retryAttemptSeconds => _$this._retryAttemptSeconds;
  set retryAttemptSeconds(_i4.Int64? retryAttemptSeconds) =>
      _$this._retryAttemptSeconds = retryAttemptSeconds;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  _i5.RemediationTargetType? _targetType;
  _i5.RemediationTargetType? get targetType => _$this._targetType;
  set targetType(_i5.RemediationTargetType? targetType) =>
      _$this._targetType = targetType;

  String? _targetVersion;
  String? get targetVersion => _$this._targetVersion;
  set targetVersion(String? targetVersion) =>
      _$this._targetVersion = targetVersion;

  RemediationConfigurationBuilder() {
    RemediationConfiguration._init(this);
  }

  RemediationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _automatic = $v.automatic;
      _configRuleName = $v.configRuleName;
      _createdByService = $v.createdByService;
      _executionControls = $v.executionControls?.toBuilder();
      _maximumAutomaticAttempts = $v.maximumAutomaticAttempts;
      _parameters = $v.parameters?.toBuilder();
      _resourceType = $v.resourceType;
      _retryAttemptSeconds = $v.retryAttemptSeconds;
      _targetId = $v.targetId;
      _targetType = $v.targetType;
      _targetVersion = $v.targetVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationConfiguration;
  }

  @override
  void update(void Function(RemediationConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationConfiguration build() => _build();

  _$RemediationConfiguration _build() {
    _$RemediationConfiguration _$result;
    try {
      _$result = _$v ??
          new _$RemediationConfiguration._(
              arn: arn,
              automatic: automatic,
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'RemediationConfiguration',
                  'configRuleName'),
              createdByService: createdByService,
              executionControls: _executionControls?.build(),
              maximumAutomaticAttempts: maximumAutomaticAttempts,
              parameters: _parameters?.build(),
              resourceType: resourceType,
              retryAttemptSeconds: retryAttemptSeconds,
              targetId: BuiltValueNullFieldError.checkNotNull(
                  targetId, r'RemediationConfiguration', 'targetId'),
              targetType: BuiltValueNullFieldError.checkNotNull(
                  targetType, r'RemediationConfiguration', 'targetType'),
              targetVersion: targetVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'executionControls';
        _executionControls?.build();

        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RemediationConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
