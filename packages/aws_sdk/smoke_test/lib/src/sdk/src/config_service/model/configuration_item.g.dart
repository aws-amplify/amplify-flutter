// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationItem extends ConfigurationItem {
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
  final String? configurationItemMd5Hash;
  @override
  final _i2.ConfigurationItemStatus? configurationItemStatus;
  @override
  final String? configurationStateId;
  @override
  final _i5.BuiltList<String>? relatedEvents;
  @override
  final _i5.BuiltList<_i3.Relationship>? relationships;
  @override
  final DateTime? resourceCreationTime;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final _i4.ResourceType? resourceType;
  @override
  final _i5.BuiltMap<String, String>? supplementaryConfiguration;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final String? version;

  factory _$ConfigurationItem(
          [void Function(ConfigurationItemBuilder)? updates]) =>
      (new ConfigurationItemBuilder()..update(updates))._build();

  _$ConfigurationItem._(
      {this.accountId,
      this.arn,
      this.availabilityZone,
      this.awsRegion,
      this.configuration,
      this.configurationItemCaptureTime,
      this.configurationItemMd5Hash,
      this.configurationItemStatus,
      this.configurationStateId,
      this.relatedEvents,
      this.relationships,
      this.resourceCreationTime,
      this.resourceId,
      this.resourceName,
      this.resourceType,
      this.supplementaryConfiguration,
      this.tags,
      this.version})
      : super._();

  @override
  ConfigurationItem rebuild(void Function(ConfigurationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationItemBuilder toBuilder() =>
      new ConfigurationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationItem &&
        accountId == other.accountId &&
        arn == other.arn &&
        availabilityZone == other.availabilityZone &&
        awsRegion == other.awsRegion &&
        configuration == other.configuration &&
        configurationItemCaptureTime == other.configurationItemCaptureTime &&
        configurationItemMd5Hash == other.configurationItemMd5Hash &&
        configurationItemStatus == other.configurationItemStatus &&
        configurationStateId == other.configurationStateId &&
        relatedEvents == other.relatedEvents &&
        relationships == other.relationships &&
        resourceCreationTime == other.resourceCreationTime &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType &&
        supplementaryConfiguration == other.supplementaryConfiguration &&
        tags == other.tags &&
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
    _$hash = $jc(_$hash, configurationItemMd5Hash.hashCode);
    _$hash = $jc(_$hash, configurationItemStatus.hashCode);
    _$hash = $jc(_$hash, configurationStateId.hashCode);
    _$hash = $jc(_$hash, relatedEvents.hashCode);
    _$hash = $jc(_$hash, relationships.hashCode);
    _$hash = $jc(_$hash, resourceCreationTime.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, supplementaryConfiguration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationItemBuilder
    implements Builder<ConfigurationItem, ConfigurationItemBuilder> {
  _$ConfigurationItem? _$v;

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

  String? _configurationItemMd5Hash;
  String? get configurationItemMd5Hash => _$this._configurationItemMd5Hash;
  set configurationItemMd5Hash(String? configurationItemMd5Hash) =>
      _$this._configurationItemMd5Hash = configurationItemMd5Hash;

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

  _i5.ListBuilder<String>? _relatedEvents;
  _i5.ListBuilder<String> get relatedEvents =>
      _$this._relatedEvents ??= new _i5.ListBuilder<String>();
  set relatedEvents(_i5.ListBuilder<String>? relatedEvents) =>
      _$this._relatedEvents = relatedEvents;

  _i5.ListBuilder<_i3.Relationship>? _relationships;
  _i5.ListBuilder<_i3.Relationship> get relationships =>
      _$this._relationships ??= new _i5.ListBuilder<_i3.Relationship>();
  set relationships(_i5.ListBuilder<_i3.Relationship>? relationships) =>
      _$this._relationships = relationships;

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

  _i4.ResourceType? _resourceType;
  _i4.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i4.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i5.MapBuilder<String, String>? _supplementaryConfiguration;
  _i5.MapBuilder<String, String> get supplementaryConfiguration =>
      _$this._supplementaryConfiguration ??=
          new _i5.MapBuilder<String, String>();
  set supplementaryConfiguration(
          _i5.MapBuilder<String, String>? supplementaryConfiguration) =>
      _$this._supplementaryConfiguration = supplementaryConfiguration;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ConfigurationItemBuilder() {
    ConfigurationItem._init(this);
  }

  ConfigurationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _arn = $v.arn;
      _availabilityZone = $v.availabilityZone;
      _awsRegion = $v.awsRegion;
      _configuration = $v.configuration;
      _configurationItemCaptureTime = $v.configurationItemCaptureTime;
      _configurationItemMd5Hash = $v.configurationItemMd5Hash;
      _configurationItemStatus = $v.configurationItemStatus;
      _configurationStateId = $v.configurationStateId;
      _relatedEvents = $v.relatedEvents?.toBuilder();
      _relationships = $v.relationships?.toBuilder();
      _resourceCreationTime = $v.resourceCreationTime;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _supplementaryConfiguration = $v.supplementaryConfiguration?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurationItem;
  }

  @override
  void update(void Function(ConfigurationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurationItem build() => _build();

  _$ConfigurationItem _build() {
    _$ConfigurationItem _$result;
    try {
      _$result = _$v ??
          new _$ConfigurationItem._(
              accountId: accountId,
              arn: arn,
              availabilityZone: availabilityZone,
              awsRegion: awsRegion,
              configuration: configuration,
              configurationItemCaptureTime: configurationItemCaptureTime,
              configurationItemMd5Hash: configurationItemMd5Hash,
              configurationItemStatus: configurationItemStatus,
              configurationStateId: configurationStateId,
              relatedEvents: _relatedEvents?.build(),
              relationships: _relationships?.build(),
              resourceCreationTime: resourceCreationTime,
              resourceId: resourceId,
              resourceName: resourceName,
              resourceType: resourceType,
              supplementaryConfiguration: _supplementaryConfiguration?.build(),
              tags: _tags?.build(),
              version: version);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'relatedEvents';
        _relatedEvents?.build();
        _$failedField = 'relationships';
        _relationships?.build();

        _$failedField = 'supplementaryConfiguration';
        _supplementaryConfiguration?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfigurationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
