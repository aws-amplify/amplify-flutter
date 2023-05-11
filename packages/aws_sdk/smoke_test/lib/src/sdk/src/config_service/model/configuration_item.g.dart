// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationItem extends ConfigurationItem {
  @override
  final String? version;
  @override
  final String? accountId;
  @override
  final DateTime? configurationItemCaptureTime;
  @override
  final _i2.ConfigurationItemStatus? configurationItemStatus;
  @override
  final String? configurationStateId;
  @override
  final String? configurationItemMd5Hash;
  @override
  final String? arn;
  @override
  final _i3.ResourceType? resourceType;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final String? awsRegion;
  @override
  final String? availabilityZone;
  @override
  final DateTime? resourceCreationTime;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final _i5.BuiltList<String>? relatedEvents;
  @override
  final _i5.BuiltList<_i4.Relationship>? relationships;
  @override
  final String? configuration;
  @override
  final _i5.BuiltMap<String, String>? supplementaryConfiguration;

  factory _$ConfigurationItem(
          [void Function(ConfigurationItemBuilder)? updates]) =>
      (new ConfigurationItemBuilder()..update(updates))._build();

  _$ConfigurationItem._(
      {this.version,
      this.accountId,
      this.configurationItemCaptureTime,
      this.configurationItemStatus,
      this.configurationStateId,
      this.configurationItemMd5Hash,
      this.arn,
      this.resourceType,
      this.resourceId,
      this.resourceName,
      this.awsRegion,
      this.availabilityZone,
      this.resourceCreationTime,
      this.tags,
      this.relatedEvents,
      this.relationships,
      this.configuration,
      this.supplementaryConfiguration})
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
        version == other.version &&
        accountId == other.accountId &&
        configurationItemCaptureTime == other.configurationItemCaptureTime &&
        configurationItemStatus == other.configurationItemStatus &&
        configurationStateId == other.configurationStateId &&
        configurationItemMd5Hash == other.configurationItemMd5Hash &&
        arn == other.arn &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        awsRegion == other.awsRegion &&
        availabilityZone == other.availabilityZone &&
        resourceCreationTime == other.resourceCreationTime &&
        tags == other.tags &&
        relatedEvents == other.relatedEvents &&
        relationships == other.relationships &&
        configuration == other.configuration &&
        supplementaryConfiguration == other.supplementaryConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, configurationItemCaptureTime.hashCode);
    _$hash = $jc(_$hash, configurationItemStatus.hashCode);
    _$hash = $jc(_$hash, configurationStateId.hashCode);
    _$hash = $jc(_$hash, configurationItemMd5Hash.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, resourceCreationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, relatedEvents.hashCode);
    _$hash = $jc(_$hash, relationships.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, supplementaryConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationItemBuilder
    implements Builder<ConfigurationItem, ConfigurationItemBuilder> {
  _$ConfigurationItem? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

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

  String? _configurationItemMd5Hash;
  String? get configurationItemMd5Hash => _$this._configurationItemMd5Hash;
  set configurationItemMd5Hash(String? configurationItemMd5Hash) =>
      _$this._configurationItemMd5Hash = configurationItemMd5Hash;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  DateTime? _resourceCreationTime;
  DateTime? get resourceCreationTime => _$this._resourceCreationTime;
  set resourceCreationTime(DateTime? resourceCreationTime) =>
      _$this._resourceCreationTime = resourceCreationTime;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  _i5.ListBuilder<String>? _relatedEvents;
  _i5.ListBuilder<String> get relatedEvents =>
      _$this._relatedEvents ??= new _i5.ListBuilder<String>();
  set relatedEvents(_i5.ListBuilder<String>? relatedEvents) =>
      _$this._relatedEvents = relatedEvents;

  _i5.ListBuilder<_i4.Relationship>? _relationships;
  _i5.ListBuilder<_i4.Relationship> get relationships =>
      _$this._relationships ??= new _i5.ListBuilder<_i4.Relationship>();
  set relationships(_i5.ListBuilder<_i4.Relationship>? relationships) =>
      _$this._relationships = relationships;

  String? _configuration;
  String? get configuration => _$this._configuration;
  set configuration(String? configuration) =>
      _$this._configuration = configuration;

  _i5.MapBuilder<String, String>? _supplementaryConfiguration;
  _i5.MapBuilder<String, String> get supplementaryConfiguration =>
      _$this._supplementaryConfiguration ??=
          new _i5.MapBuilder<String, String>();
  set supplementaryConfiguration(
          _i5.MapBuilder<String, String>? supplementaryConfiguration) =>
      _$this._supplementaryConfiguration = supplementaryConfiguration;

  ConfigurationItemBuilder() {
    ConfigurationItem._init(this);
  }

  ConfigurationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _accountId = $v.accountId;
      _configurationItemCaptureTime = $v.configurationItemCaptureTime;
      _configurationItemStatus = $v.configurationItemStatus;
      _configurationStateId = $v.configurationStateId;
      _configurationItemMd5Hash = $v.configurationItemMd5Hash;
      _arn = $v.arn;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _awsRegion = $v.awsRegion;
      _availabilityZone = $v.availabilityZone;
      _resourceCreationTime = $v.resourceCreationTime;
      _tags = $v.tags?.toBuilder();
      _relatedEvents = $v.relatedEvents?.toBuilder();
      _relationships = $v.relationships?.toBuilder();
      _configuration = $v.configuration;
      _supplementaryConfiguration = $v.supplementaryConfiguration?.toBuilder();
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
              version: version,
              accountId: accountId,
              configurationItemCaptureTime: configurationItemCaptureTime,
              configurationItemStatus: configurationItemStatus,
              configurationStateId: configurationStateId,
              configurationItemMd5Hash: configurationItemMd5Hash,
              arn: arn,
              resourceType: resourceType,
              resourceId: resourceId,
              resourceName: resourceName,
              awsRegion: awsRegion,
              availabilityZone: availabilityZone,
              resourceCreationTime: resourceCreationTime,
              tags: _tags?.build(),
              relatedEvents: _relatedEvents?.build(),
              relationships: _relationships?.build(),
              configuration: configuration,
              supplementaryConfiguration: _supplementaryConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'relatedEvents';
        _relatedEvents?.build();
        _$failedField = 'relationships';
        _relationships?.build();

        _$failedField = 'supplementaryConfiguration';
        _supplementaryConfiguration?.build();
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
