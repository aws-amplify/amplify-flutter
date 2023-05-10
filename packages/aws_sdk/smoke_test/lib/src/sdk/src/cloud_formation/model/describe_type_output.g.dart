// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTypeOutput extends DescribeTypeOutput {
  @override
  final String? arn;
  @override
  final _i2.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? defaultVersionId;
  @override
  final bool? isDefaultVersion;
  @override
  final _i3.TypeTestsStatus? typeTestsStatus;
  @override
  final String? typeTestsStatusDescription;
  @override
  final String? description;
  @override
  final String? schema;
  @override
  final _i4.ProvisioningType? provisioningType;
  @override
  final _i5.DeprecatedStatus? deprecatedStatus;
  @override
  final _i6.LoggingConfig? loggingConfig;
  @override
  final _i9.BuiltList<_i7.RequiredActivatedType>? requiredActivatedTypes;
  @override
  final String? executionRoleArn;
  @override
  final _i8.Visibility? visibility;
  @override
  final String? sourceUrl;
  @override
  final String? documentationUrl;
  @override
  final DateTime? lastUpdated;
  @override
  final DateTime? timeCreated;
  @override
  final String? configurationSchema;
  @override
  final String? publisherId;
  @override
  final String? originalTypeName;
  @override
  final String? originalTypeArn;
  @override
  final String? publicVersionNumber;
  @override
  final String? latestPublicVersion;
  @override
  final bool? isActivated;
  @override
  final bool? autoUpdate;

  factory _$DescribeTypeOutput(
          [void Function(DescribeTypeOutputBuilder)? updates]) =>
      (new DescribeTypeOutputBuilder()..update(updates))._build();

  _$DescribeTypeOutput._(
      {this.arn,
      this.type,
      this.typeName,
      this.defaultVersionId,
      this.isDefaultVersion,
      this.typeTestsStatus,
      this.typeTestsStatusDescription,
      this.description,
      this.schema,
      this.provisioningType,
      this.deprecatedStatus,
      this.loggingConfig,
      this.requiredActivatedTypes,
      this.executionRoleArn,
      this.visibility,
      this.sourceUrl,
      this.documentationUrl,
      this.lastUpdated,
      this.timeCreated,
      this.configurationSchema,
      this.publisherId,
      this.originalTypeName,
      this.originalTypeArn,
      this.publicVersionNumber,
      this.latestPublicVersion,
      this.isActivated,
      this.autoUpdate})
      : super._();

  @override
  DescribeTypeOutput rebuild(
          void Function(DescribeTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTypeOutputBuilder toBuilder() =>
      new DescribeTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTypeOutput &&
        arn == other.arn &&
        type == other.type &&
        typeName == other.typeName &&
        defaultVersionId == other.defaultVersionId &&
        isDefaultVersion == other.isDefaultVersion &&
        typeTestsStatus == other.typeTestsStatus &&
        typeTestsStatusDescription == other.typeTestsStatusDescription &&
        description == other.description &&
        schema == other.schema &&
        provisioningType == other.provisioningType &&
        deprecatedStatus == other.deprecatedStatus &&
        loggingConfig == other.loggingConfig &&
        requiredActivatedTypes == other.requiredActivatedTypes &&
        executionRoleArn == other.executionRoleArn &&
        visibility == other.visibility &&
        sourceUrl == other.sourceUrl &&
        documentationUrl == other.documentationUrl &&
        lastUpdated == other.lastUpdated &&
        timeCreated == other.timeCreated &&
        configurationSchema == other.configurationSchema &&
        publisherId == other.publisherId &&
        originalTypeName == other.originalTypeName &&
        originalTypeArn == other.originalTypeArn &&
        publicVersionNumber == other.publicVersionNumber &&
        latestPublicVersion == other.latestPublicVersion &&
        isActivated == other.isActivated &&
        autoUpdate == other.autoUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, defaultVersionId.hashCode);
    _$hash = $jc(_$hash, isDefaultVersion.hashCode);
    _$hash = $jc(_$hash, typeTestsStatus.hashCode);
    _$hash = $jc(_$hash, typeTestsStatusDescription.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jc(_$hash, provisioningType.hashCode);
    _$hash = $jc(_$hash, deprecatedStatus.hashCode);
    _$hash = $jc(_$hash, loggingConfig.hashCode);
    _$hash = $jc(_$hash, requiredActivatedTypes.hashCode);
    _$hash = $jc(_$hash, executionRoleArn.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, sourceUrl.hashCode);
    _$hash = $jc(_$hash, documentationUrl.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, timeCreated.hashCode);
    _$hash = $jc(_$hash, configurationSchema.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, originalTypeName.hashCode);
    _$hash = $jc(_$hash, originalTypeArn.hashCode);
    _$hash = $jc(_$hash, publicVersionNumber.hashCode);
    _$hash = $jc(_$hash, latestPublicVersion.hashCode);
    _$hash = $jc(_$hash, isActivated.hashCode);
    _$hash = $jc(_$hash, autoUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTypeOutputBuilder
    implements Builder<DescribeTypeOutput, DescribeTypeOutputBuilder> {
  _$DescribeTypeOutput? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i2.RegistryType? _type;
  _i2.RegistryType? get type => _$this._type;
  set type(_i2.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _defaultVersionId;
  String? get defaultVersionId => _$this._defaultVersionId;
  set defaultVersionId(String? defaultVersionId) =>
      _$this._defaultVersionId = defaultVersionId;

  bool? _isDefaultVersion;
  bool? get isDefaultVersion => _$this._isDefaultVersion;
  set isDefaultVersion(bool? isDefaultVersion) =>
      _$this._isDefaultVersion = isDefaultVersion;

  _i3.TypeTestsStatus? _typeTestsStatus;
  _i3.TypeTestsStatus? get typeTestsStatus => _$this._typeTestsStatus;
  set typeTestsStatus(_i3.TypeTestsStatus? typeTestsStatus) =>
      _$this._typeTestsStatus = typeTestsStatus;

  String? _typeTestsStatusDescription;
  String? get typeTestsStatusDescription => _$this._typeTestsStatusDescription;
  set typeTestsStatusDescription(String? typeTestsStatusDescription) =>
      _$this._typeTestsStatusDescription = typeTestsStatusDescription;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  _i4.ProvisioningType? _provisioningType;
  _i4.ProvisioningType? get provisioningType => _$this._provisioningType;
  set provisioningType(_i4.ProvisioningType? provisioningType) =>
      _$this._provisioningType = provisioningType;

  _i5.DeprecatedStatus? _deprecatedStatus;
  _i5.DeprecatedStatus? get deprecatedStatus => _$this._deprecatedStatus;
  set deprecatedStatus(_i5.DeprecatedStatus? deprecatedStatus) =>
      _$this._deprecatedStatus = deprecatedStatus;

  _i6.LoggingConfigBuilder? _loggingConfig;
  _i6.LoggingConfigBuilder get loggingConfig =>
      _$this._loggingConfig ??= new _i6.LoggingConfigBuilder();
  set loggingConfig(_i6.LoggingConfigBuilder? loggingConfig) =>
      _$this._loggingConfig = loggingConfig;

  _i9.ListBuilder<_i7.RequiredActivatedType>? _requiredActivatedTypes;
  _i9.ListBuilder<_i7.RequiredActivatedType> get requiredActivatedTypes =>
      _$this._requiredActivatedTypes ??=
          new _i9.ListBuilder<_i7.RequiredActivatedType>();
  set requiredActivatedTypes(
          _i9.ListBuilder<_i7.RequiredActivatedType>? requiredActivatedTypes) =>
      _$this._requiredActivatedTypes = requiredActivatedTypes;

  String? _executionRoleArn;
  String? get executionRoleArn => _$this._executionRoleArn;
  set executionRoleArn(String? executionRoleArn) =>
      _$this._executionRoleArn = executionRoleArn;

  _i8.Visibility? _visibility;
  _i8.Visibility? get visibility => _$this._visibility;
  set visibility(_i8.Visibility? visibility) => _$this._visibility = visibility;

  String? _sourceUrl;
  String? get sourceUrl => _$this._sourceUrl;
  set sourceUrl(String? sourceUrl) => _$this._sourceUrl = sourceUrl;

  String? _documentationUrl;
  String? get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String? documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  String? _configurationSchema;
  String? get configurationSchema => _$this._configurationSchema;
  set configurationSchema(String? configurationSchema) =>
      _$this._configurationSchema = configurationSchema;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  String? _originalTypeName;
  String? get originalTypeName => _$this._originalTypeName;
  set originalTypeName(String? originalTypeName) =>
      _$this._originalTypeName = originalTypeName;

  String? _originalTypeArn;
  String? get originalTypeArn => _$this._originalTypeArn;
  set originalTypeArn(String? originalTypeArn) =>
      _$this._originalTypeArn = originalTypeArn;

  String? _publicVersionNumber;
  String? get publicVersionNumber => _$this._publicVersionNumber;
  set publicVersionNumber(String? publicVersionNumber) =>
      _$this._publicVersionNumber = publicVersionNumber;

  String? _latestPublicVersion;
  String? get latestPublicVersion => _$this._latestPublicVersion;
  set latestPublicVersion(String? latestPublicVersion) =>
      _$this._latestPublicVersion = latestPublicVersion;

  bool? _isActivated;
  bool? get isActivated => _$this._isActivated;
  set isActivated(bool? isActivated) => _$this._isActivated = isActivated;

  bool? _autoUpdate;
  bool? get autoUpdate => _$this._autoUpdate;
  set autoUpdate(bool? autoUpdate) => _$this._autoUpdate = autoUpdate;

  DescribeTypeOutputBuilder() {
    DescribeTypeOutput._init(this);
  }

  DescribeTypeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _type = $v.type;
      _typeName = $v.typeName;
      _defaultVersionId = $v.defaultVersionId;
      _isDefaultVersion = $v.isDefaultVersion;
      _typeTestsStatus = $v.typeTestsStatus;
      _typeTestsStatusDescription = $v.typeTestsStatusDescription;
      _description = $v.description;
      _schema = $v.schema;
      _provisioningType = $v.provisioningType;
      _deprecatedStatus = $v.deprecatedStatus;
      _loggingConfig = $v.loggingConfig?.toBuilder();
      _requiredActivatedTypes = $v.requiredActivatedTypes?.toBuilder();
      _executionRoleArn = $v.executionRoleArn;
      _visibility = $v.visibility;
      _sourceUrl = $v.sourceUrl;
      _documentationUrl = $v.documentationUrl;
      _lastUpdated = $v.lastUpdated;
      _timeCreated = $v.timeCreated;
      _configurationSchema = $v.configurationSchema;
      _publisherId = $v.publisherId;
      _originalTypeName = $v.originalTypeName;
      _originalTypeArn = $v.originalTypeArn;
      _publicVersionNumber = $v.publicVersionNumber;
      _latestPublicVersion = $v.latestPublicVersion;
      _isActivated = $v.isActivated;
      _autoUpdate = $v.autoUpdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTypeOutput;
  }

  @override
  void update(void Function(DescribeTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTypeOutput build() => _build();

  _$DescribeTypeOutput _build() {
    _$DescribeTypeOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeTypeOutput._(
              arn: arn,
              type: type,
              typeName: typeName,
              defaultVersionId: defaultVersionId,
              isDefaultVersion: isDefaultVersion,
              typeTestsStatus: typeTestsStatus,
              typeTestsStatusDescription: typeTestsStatusDescription,
              description: description,
              schema: schema,
              provisioningType: provisioningType,
              deprecatedStatus: deprecatedStatus,
              loggingConfig: _loggingConfig?.build(),
              requiredActivatedTypes: _requiredActivatedTypes?.build(),
              executionRoleArn: executionRoleArn,
              visibility: visibility,
              sourceUrl: sourceUrl,
              documentationUrl: documentationUrl,
              lastUpdated: lastUpdated,
              timeCreated: timeCreated,
              configurationSchema: configurationSchema,
              publisherId: publisherId,
              originalTypeName: originalTypeName,
              originalTypeArn: originalTypeArn,
              publicVersionNumber: publicVersionNumber,
              latestPublicVersion: latestPublicVersion,
              isActivated: isActivated,
              autoUpdate: autoUpdate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingConfig';
        _loggingConfig?.build();
        _$failedField = 'requiredActivatedTypes';
        _requiredActivatedTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTypeOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
