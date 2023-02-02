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
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, configurationItemCaptureTime.hashCode);
    _$hash = $jc(_$hash, configurationItemStatus.hashCode);
    _$hash = $jc(_$hash, configurationStateId.hashCode);
    _$hash = $jc(_$hash, resourceCreationTime.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, supplementaryConfiguration.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
