// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remediation_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationConfiguration extends RemediationConfiguration {
  @override
  final String configRuleName;
  @override
  final _i2.RemediationTargetType targetType;
  @override
  final String targetId;
  @override
  final String? targetVersion;
  @override
  final _i6.BuiltMap<String, _i3.RemediationParameterValue>? parameters;
  @override
  final String? resourceType;
  @override
  final bool automatic;
  @override
  final _i4.ExecutionControls? executionControls;
  @override
  final int? maximumAutomaticAttempts;
  @override
  final _i5.Int64? retryAttemptSeconds;
  @override
  final String? arn;
  @override
  final String? createdByService;

  factory _$RemediationConfiguration(
          [void Function(RemediationConfigurationBuilder)? updates]) =>
      (new RemediationConfigurationBuilder()..update(updates))._build();

  _$RemediationConfiguration._(
      {required this.configRuleName,
      required this.targetType,
      required this.targetId,
      this.targetVersion,
      this.parameters,
      this.resourceType,
      required this.automatic,
      this.executionControls,
      this.maximumAutomaticAttempts,
      this.retryAttemptSeconds,
      this.arn,
      this.createdByService})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'RemediationConfiguration', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        targetType, r'RemediationConfiguration', 'targetType');
    BuiltValueNullFieldError.checkNotNull(
        targetId, r'RemediationConfiguration', 'targetId');
    BuiltValueNullFieldError.checkNotNull(
        automatic, r'RemediationConfiguration', 'automatic');
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
        configRuleName == other.configRuleName &&
        targetType == other.targetType &&
        targetId == other.targetId &&
        targetVersion == other.targetVersion &&
        parameters == other.parameters &&
        resourceType == other.resourceType &&
        automatic == other.automatic &&
        executionControls == other.executionControls &&
        maximumAutomaticAttempts == other.maximumAutomaticAttempts &&
        retryAttemptSeconds == other.retryAttemptSeconds &&
        arn == other.arn &&
        createdByService == other.createdByService;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, targetVersion.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, automatic.hashCode);
    _$hash = $jc(_$hash, executionControls.hashCode);
    _$hash = $jc(_$hash, maximumAutomaticAttempts.hashCode);
    _$hash = $jc(_$hash, retryAttemptSeconds.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createdByService.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationConfigurationBuilder
    implements
        Builder<RemediationConfiguration, RemediationConfigurationBuilder> {
  _$RemediationConfiguration? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i2.RemediationTargetType? _targetType;
  _i2.RemediationTargetType? get targetType => _$this._targetType;
  set targetType(_i2.RemediationTargetType? targetType) =>
      _$this._targetType = targetType;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  String? _targetVersion;
  String? get targetVersion => _$this._targetVersion;
  set targetVersion(String? targetVersion) =>
      _$this._targetVersion = targetVersion;

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

  bool? _automatic;
  bool? get automatic => _$this._automatic;
  set automatic(bool? automatic) => _$this._automatic = automatic;

  _i4.ExecutionControlsBuilder? _executionControls;
  _i4.ExecutionControlsBuilder get executionControls =>
      _$this._executionControls ??= new _i4.ExecutionControlsBuilder();
  set executionControls(_i4.ExecutionControlsBuilder? executionControls) =>
      _$this._executionControls = executionControls;

  int? _maximumAutomaticAttempts;
  int? get maximumAutomaticAttempts => _$this._maximumAutomaticAttempts;
  set maximumAutomaticAttempts(int? maximumAutomaticAttempts) =>
      _$this._maximumAutomaticAttempts = maximumAutomaticAttempts;

  _i5.Int64? _retryAttemptSeconds;
  _i5.Int64? get retryAttemptSeconds => _$this._retryAttemptSeconds;
  set retryAttemptSeconds(_i5.Int64? retryAttemptSeconds) =>
      _$this._retryAttemptSeconds = retryAttemptSeconds;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _createdByService;
  String? get createdByService => _$this._createdByService;
  set createdByService(String? createdByService) =>
      _$this._createdByService = createdByService;

  RemediationConfigurationBuilder() {
    RemediationConfiguration._init(this);
  }

  RemediationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _targetType = $v.targetType;
      _targetId = $v.targetId;
      _targetVersion = $v.targetVersion;
      _parameters = $v.parameters?.toBuilder();
      _resourceType = $v.resourceType;
      _automatic = $v.automatic;
      _executionControls = $v.executionControls?.toBuilder();
      _maximumAutomaticAttempts = $v.maximumAutomaticAttempts;
      _retryAttemptSeconds = $v.retryAttemptSeconds;
      _arn = $v.arn;
      _createdByService = $v.createdByService;
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
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'RemediationConfiguration',
                  'configRuleName'),
              targetType: BuiltValueNullFieldError.checkNotNull(
                  targetType, r'RemediationConfiguration', 'targetType'),
              targetId: BuiltValueNullFieldError.checkNotNull(
                  targetId, r'RemediationConfiguration', 'targetId'),
              targetVersion: targetVersion,
              parameters: _parameters?.build(),
              resourceType: resourceType,
              automatic: BuiltValueNullFieldError.checkNotNull(
                  automatic, r'RemediationConfiguration', 'automatic'),
              executionControls: _executionControls?.build(),
              maximumAutomaticAttempts: maximumAutomaticAttempts,
              retryAttemptSeconds: retryAttemptSeconds,
              arn: arn,
              createdByService: createdByService);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'executionControls';
        _executionControls?.build();
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
