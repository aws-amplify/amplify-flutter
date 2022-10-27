// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.base_configuration_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseConfigurationItem extends BaseConfigurationItem {
  @override
  final String? accountId;
  @override
  final String? arn;
  @override
  final String? availabilityZone;
  @override
  final String? awsRegion;
  @override
  final String? configuration;
  @override
  final DateTime? configurationItemCaptureTime;
  @override
  final _i2.ConfigurationItemStatus? configurationItemStatus;
  @override
  final String? configurationStateId;
  @override
  final DateTime? resourceCreationTime;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final _i3.ResourceType? resourceType;
  @override
  final _i4.BuiltMap<String, String>? supplementaryConfiguration;
  @override
  final String? version;

  factory _$BaseConfigurationItem(
          [void Function(BaseConfigurationItemBuilder)? updates]) =>
      (new BaseConfigurationItemBuilder()..update(updates))._build();

  _$BaseConfigurationItem._(
      {this.accountId,
      this.arn,
      this.availabilityZone,
      this.awsRegion,
      this.configuration,
      this.configurationItemCaptureTime,
      this.configurationItemStatus,
      this.configurationStateId,
      this.resourceCreationTime,
      this.resourceId,
      this.resourceName,
      this.resourceType,
      this.supplementaryConfiguration,
      this.version})
      : super._();

  @override
  BaseConfigurationItem rebuild(
          void Function(BaseConfigurationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseConfigurationItemBuilder toBuilder() =>
      new BaseConfigurationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseConfigurationItem &&
        accountId == other.accountId &&
        arn == other.arn &&
        availabilityZone == other.availabilityZone &&
        awsRegion == other.awsRegion &&
        configuration == other.configuration &&
        configurationItemCaptureTime == other.configurationItemCaptureTime &&
        configurationItemStatus == other.configurationItemStatus &&
        configurationStateId == other.configurationStateId &&
        resourceCreationTime == other.resourceCreationTime &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType &&
        supplementaryConfiguration == other.supplementaryConfiguration &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            accountId.hashCode),
                                                        arn.hashCode),
                                                    availabilityZone.hashCode),
                                                awsRegion.hashCode),
                                            configuration.hashCode),
                                        configurationItemCaptureTime.hashCode),
                                    configurationItemStatus.hashCode),
                                configurationStateId.hashCode),
                            resourceCreationTime.hashCode),
                        resourceId.hashCode),
                    resourceName.hashCode),
                resourceType.hashCode),
            supplementaryConfiguration.hashCode),
        version.hashCode));
  }
}

class BaseConfigurationItemBuilder
    implements Builder<BaseConfigurationItem, BaseConfigurationItemBuilder> {
  _$BaseConfigurationItem? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  String? _configuration;
  String? get configuration => _$this._configuration;
  set configuration(String? configuration) =>
      _$this._configuration = configuration;

  DateTime? _configurationItemCaptureTime;
  DateTime? get configurationItemCaptureTime =>
      _$this._configurationItemCaptureTime;
  set configurationItemCaptureTime(DateTime? configurationItemCaptureTime) =>
      _$this._configurationItemCaptureTime = configurationItemCaptureTime;

  _i2.ConfigurationItemStatus? _configurationItemStatus;
  _i2.ConfigurationItemStatus? get configurationItemStatus =>
      _$this._configurationItemStatus;
  set configurationItemStatus(
          _i2.ConfigurationItemStatus? configurationItemStatus) =>
      _$this._configurationItemStatus = configurationItemStatus;

  String? _configurationStateId;
  String? get configurationStateId => _$this._configurationStateId;
  set configurationStateId(String? configurationStateId) =>
      _$this._configurationStateId = configurationStateId;

  DateTime? _resourceCreationTime;
  DateTime? get resourceCreationTime => _$this._resourceCreationTime;
  set resourceCreationTime(DateTime? resourceCreationTime) =>
      _$this._resourceCreationTime = resourceCreationTime;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.MapBuilder<String, String>? _supplementaryConfiguration;
  _i4.MapBuilder<String, String> get supplementaryConfiguration =>
      _$this._supplementaryConfiguration ??=
          new _i4.MapBuilder<String, String>();
  set supplementaryConfiguration(
          _i4.MapBuilder<String, String>? supplementaryConfiguration) =>
      _$this._supplementaryConfiguration = supplementaryConfiguration;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  BaseConfigurationItemBuilder() {
    BaseConfigurationItem._init(this);
  }

  BaseConfigurationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _arn = $v.arn;
      _availabilityZone = $v.availabilityZone;
      _awsRegion = $v.awsRegion;
      _configuration = $v.configuration;
      _configurationItemCaptureTime = $v.configurationItemCaptureTime;
      _configurationItemStatus = $v.configurationItemStatus;
      _configurationStateId = $v.configurationStateId;
      _resourceCreationTime = $v.resourceCreationTime;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _supplementaryConfiguration = $v.supplementaryConfiguration?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseConfigurationItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BaseConfigurationItem;
  }

  @override
  void update(void Function(BaseConfigurationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseConfigurationItem build() => _build();

  _$BaseConfigurationItem _build() {
    _$BaseConfigurationItem _$result;
    try {
      _$result = _$v ??
          new _$BaseConfigurationItem._(
              accountId: accountId,
              arn: arn,
              availabilityZone: availabilityZone,
              awsRegion: awsRegion,
              configuration: configuration,
              configurationItemCaptureTime: configurationItemCaptureTime,
              configurationItemStatus: configurationItemStatus,
              configurationStateId: configurationStateId,
              resourceCreationTime: resourceCreationTime,
              resourceId: resourceId,
              resourceName: resourceName,
              resourceType: resourceType,
              supplementaryConfiguration: _supplementaryConfiguration?.build(),
              version: version);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supplementaryConfiguration';
        _supplementaryConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BaseConfigurationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
