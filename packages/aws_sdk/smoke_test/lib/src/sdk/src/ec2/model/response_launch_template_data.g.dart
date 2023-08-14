// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_launch_template_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseLaunchTemplateData extends ResponseLaunchTemplateData {
  @override
  final String? kernelId;
  @override
  final bool ebsOptimized;
  @override
  final LaunchTemplateIamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final _i2.BuiltList<LaunchTemplateBlockDeviceMapping>? blockDeviceMappings;
  @override
  final _i2.BuiltList<LaunchTemplateInstanceNetworkInterfaceSpecification>?
      networkInterfaces;
  @override
  final String? imageId;
  @override
  final InstanceType? instanceType;
  @override
  final String? keyName;
  @override
  final LaunchTemplatesMonitoring? monitoring;
  @override
  final LaunchTemplatePlacement? placement;
  @override
  final String? ramDiskId;
  @override
  final bool disableApiTermination;
  @override
  final ShutdownBehavior? instanceInitiatedShutdownBehavior;
  @override
  final String? userData;
  @override
  final _i2.BuiltList<LaunchTemplateTagSpecification>? tagSpecifications;
  @override
  final _i2.BuiltList<ElasticGpuSpecificationResponse>?
      elasticGpuSpecifications;
  @override
  final _i2.BuiltList<LaunchTemplateElasticInferenceAcceleratorResponse>?
      elasticInferenceAccelerators;
  @override
  final _i2.BuiltList<String>? securityGroupIds;
  @override
  final _i2.BuiltList<String>? securityGroups;
  @override
  final LaunchTemplateInstanceMarketOptions? instanceMarketOptions;
  @override
  final CreditSpecification? creditSpecification;
  @override
  final LaunchTemplateCpuOptions? cpuOptions;
  @override
  final LaunchTemplateCapacityReservationSpecificationResponse?
      capacityReservationSpecification;
  @override
  final _i2.BuiltList<LaunchTemplateLicenseConfiguration>?
      licenseSpecifications;
  @override
  final LaunchTemplateHibernationOptions? hibernationOptions;
  @override
  final LaunchTemplateInstanceMetadataOptions? metadataOptions;
  @override
  final LaunchTemplateEnclaveOptions? enclaveOptions;
  @override
  final InstanceRequirements? instanceRequirements;
  @override
  final LaunchTemplatePrivateDnsNameOptions? privateDnsNameOptions;
  @override
  final LaunchTemplateInstanceMaintenanceOptions? maintenanceOptions;
  @override
  final bool disableApiStop;

  factory _$ResponseLaunchTemplateData(
          [void Function(ResponseLaunchTemplateDataBuilder)? updates]) =>
      (new ResponseLaunchTemplateDataBuilder()..update(updates))._build();

  _$ResponseLaunchTemplateData._(
      {this.kernelId,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.blockDeviceMappings,
      this.networkInterfaces,
      this.imageId,
      this.instanceType,
      this.keyName,
      this.monitoring,
      this.placement,
      this.ramDiskId,
      required this.disableApiTermination,
      this.instanceInitiatedShutdownBehavior,
      this.userData,
      this.tagSpecifications,
      this.elasticGpuSpecifications,
      this.elasticInferenceAccelerators,
      this.securityGroupIds,
      this.securityGroups,
      this.instanceMarketOptions,
      this.creditSpecification,
      this.cpuOptions,
      this.capacityReservationSpecification,
      this.licenseSpecifications,
      this.hibernationOptions,
      this.metadataOptions,
      this.enclaveOptions,
      this.instanceRequirements,
      this.privateDnsNameOptions,
      this.maintenanceOptions,
      required this.disableApiStop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'ResponseLaunchTemplateData', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(disableApiTermination,
        r'ResponseLaunchTemplateData', 'disableApiTermination');
    BuiltValueNullFieldError.checkNotNull(
        disableApiStop, r'ResponseLaunchTemplateData', 'disableApiStop');
  }

  @override
  ResponseLaunchTemplateData rebuild(
          void Function(ResponseLaunchTemplateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseLaunchTemplateDataBuilder toBuilder() =>
      new ResponseLaunchTemplateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseLaunchTemplateData &&
        kernelId == other.kernelId &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        blockDeviceMappings == other.blockDeviceMappings &&
        networkInterfaces == other.networkInterfaces &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        keyName == other.keyName &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        ramDiskId == other.ramDiskId &&
        disableApiTermination == other.disableApiTermination &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        userData == other.userData &&
        tagSpecifications == other.tagSpecifications &&
        elasticGpuSpecifications == other.elasticGpuSpecifications &&
        elasticInferenceAccelerators == other.elasticInferenceAccelerators &&
        securityGroupIds == other.securityGroupIds &&
        securityGroups == other.securityGroups &&
        instanceMarketOptions == other.instanceMarketOptions &&
        creditSpecification == other.creditSpecification &&
        cpuOptions == other.cpuOptions &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        licenseSpecifications == other.licenseSpecifications &&
        hibernationOptions == other.hibernationOptions &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        instanceRequirements == other.instanceRequirements &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        maintenanceOptions == other.maintenanceOptions &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramDiskId.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, elasticGpuSpecifications.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAccelerators.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, instanceMarketOptions.hashCode);
    _$hash = $jc(_$hash, creditSpecification.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResponseLaunchTemplateDataBuilder
    implements
        Builder<ResponseLaunchTemplateData, ResponseLaunchTemplateDataBuilder> {
  _$ResponseLaunchTemplateData? _$v;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  LaunchTemplateIamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  LaunchTemplateIamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new LaunchTemplateIamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          LaunchTemplateIamInstanceProfileSpecificationBuilder?
              iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  _i2.ListBuilder<LaunchTemplateBlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<LaunchTemplateBlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i2.ListBuilder<LaunchTemplateBlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<LaunchTemplateBlockDeviceMapping>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  _i2.ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecification>?
      _networkInterfaces;
  _i2.ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecification>
      get networkInterfaces => _$this._networkInterfaces ??= new _i2
          .ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecification>();
  set networkInterfaces(
          _i2.ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecification>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  LaunchTemplatesMonitoringBuilder? _monitoring;
  LaunchTemplatesMonitoringBuilder get monitoring =>
      _$this._monitoring ??= new LaunchTemplatesMonitoringBuilder();
  set monitoring(LaunchTemplatesMonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  LaunchTemplatePlacementBuilder? _placement;
  LaunchTemplatePlacementBuilder get placement =>
      _$this._placement ??= new LaunchTemplatePlacementBuilder();
  set placement(LaunchTemplatePlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _ramDiskId;
  String? get ramDiskId => _$this._ramDiskId;
  set ramDiskId(String? ramDiskId) => _$this._ramDiskId = ramDiskId;

  bool? _disableApiTermination;
  bool? get disableApiTermination => _$this._disableApiTermination;
  set disableApiTermination(bool? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  ShutdownBehavior? _instanceInitiatedShutdownBehavior;
  ShutdownBehavior? get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior;
  set instanceInitiatedShutdownBehavior(
          ShutdownBehavior? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  _i2.ListBuilder<LaunchTemplateTagSpecification>? _tagSpecifications;
  _i2.ListBuilder<LaunchTemplateTagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??=
          new _i2.ListBuilder<LaunchTemplateTagSpecification>();
  set tagSpecifications(
          _i2.ListBuilder<LaunchTemplateTagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i2.ListBuilder<ElasticGpuSpecificationResponse>? _elasticGpuSpecifications;
  _i2.ListBuilder<ElasticGpuSpecificationResponse>
      get elasticGpuSpecifications => _$this._elasticGpuSpecifications ??=
          new _i2.ListBuilder<ElasticGpuSpecificationResponse>();
  set elasticGpuSpecifications(
          _i2.ListBuilder<ElasticGpuSpecificationResponse>?
              elasticGpuSpecifications) =>
      _$this._elasticGpuSpecifications = elasticGpuSpecifications;

  _i2.ListBuilder<LaunchTemplateElasticInferenceAcceleratorResponse>?
      _elasticInferenceAccelerators;
  _i2.ListBuilder<LaunchTemplateElasticInferenceAcceleratorResponse>
      get elasticInferenceAccelerators =>
          _$this._elasticInferenceAccelerators ??= new _i2
              .ListBuilder<LaunchTemplateElasticInferenceAcceleratorResponse>();
  set elasticInferenceAccelerators(
          _i2.ListBuilder<LaunchTemplateElasticInferenceAcceleratorResponse>?
              elasticInferenceAccelerators) =>
      _$this._elasticInferenceAccelerators = elasticInferenceAccelerators;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i2.ListBuilder<String>? _securityGroups;
  _i2.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<String>();
  set securityGroups(_i2.ListBuilder<String>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  LaunchTemplateInstanceMarketOptionsBuilder? _instanceMarketOptions;
  LaunchTemplateInstanceMarketOptionsBuilder get instanceMarketOptions =>
      _$this._instanceMarketOptions ??=
          new LaunchTemplateInstanceMarketOptionsBuilder();
  set instanceMarketOptions(
          LaunchTemplateInstanceMarketOptionsBuilder? instanceMarketOptions) =>
      _$this._instanceMarketOptions = instanceMarketOptions;

  CreditSpecificationBuilder? _creditSpecification;
  CreditSpecificationBuilder get creditSpecification =>
      _$this._creditSpecification ??= new CreditSpecificationBuilder();
  set creditSpecification(CreditSpecificationBuilder? creditSpecification) =>
      _$this._creditSpecification = creditSpecification;

  LaunchTemplateCpuOptionsBuilder? _cpuOptions;
  LaunchTemplateCpuOptionsBuilder get cpuOptions =>
      _$this._cpuOptions ??= new LaunchTemplateCpuOptionsBuilder();
  set cpuOptions(LaunchTemplateCpuOptionsBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  LaunchTemplateCapacityReservationSpecificationResponseBuilder?
      _capacityReservationSpecification;
  LaunchTemplateCapacityReservationSpecificationResponseBuilder
      get capacityReservationSpecification => _$this
              ._capacityReservationSpecification ??=
          new LaunchTemplateCapacityReservationSpecificationResponseBuilder();
  set capacityReservationSpecification(
          LaunchTemplateCapacityReservationSpecificationResponseBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  _i2.ListBuilder<LaunchTemplateLicenseConfiguration>? _licenseSpecifications;
  _i2.ListBuilder<LaunchTemplateLicenseConfiguration>
      get licenseSpecifications => _$this._licenseSpecifications ??=
          new _i2.ListBuilder<LaunchTemplateLicenseConfiguration>();
  set licenseSpecifications(
          _i2.ListBuilder<LaunchTemplateLicenseConfiguration>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  LaunchTemplateHibernationOptionsBuilder? _hibernationOptions;
  LaunchTemplateHibernationOptionsBuilder get hibernationOptions =>
      _$this._hibernationOptions ??=
          new LaunchTemplateHibernationOptionsBuilder();
  set hibernationOptions(
          LaunchTemplateHibernationOptionsBuilder? hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  LaunchTemplateInstanceMetadataOptionsBuilder? _metadataOptions;
  LaunchTemplateInstanceMetadataOptionsBuilder get metadataOptions =>
      _$this._metadataOptions ??=
          new LaunchTemplateInstanceMetadataOptionsBuilder();
  set metadataOptions(
          LaunchTemplateInstanceMetadataOptionsBuilder? metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  LaunchTemplateEnclaveOptionsBuilder? _enclaveOptions;
  LaunchTemplateEnclaveOptionsBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new LaunchTemplateEnclaveOptionsBuilder();
  set enclaveOptions(LaunchTemplateEnclaveOptionsBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  InstanceRequirementsBuilder? _instanceRequirements;
  InstanceRequirementsBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsBuilder();
  set instanceRequirements(InstanceRequirementsBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  LaunchTemplatePrivateDnsNameOptionsBuilder? _privateDnsNameOptions;
  LaunchTemplatePrivateDnsNameOptionsBuilder get privateDnsNameOptions =>
      _$this._privateDnsNameOptions ??=
          new LaunchTemplatePrivateDnsNameOptionsBuilder();
  set privateDnsNameOptions(
          LaunchTemplatePrivateDnsNameOptionsBuilder? privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  LaunchTemplateInstanceMaintenanceOptionsBuilder? _maintenanceOptions;
  LaunchTemplateInstanceMaintenanceOptionsBuilder get maintenanceOptions =>
      _$this._maintenanceOptions ??=
          new LaunchTemplateInstanceMaintenanceOptionsBuilder();
  set maintenanceOptions(
          LaunchTemplateInstanceMaintenanceOptionsBuilder?
              maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  bool? _disableApiStop;
  bool? get disableApiStop => _$this._disableApiStop;
  set disableApiStop(bool? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  ResponseLaunchTemplateDataBuilder() {
    ResponseLaunchTemplateData._init(this);
  }

  ResponseLaunchTemplateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kernelId = $v.kernelId;
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _keyName = $v.keyName;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramDiskId = $v.ramDiskId;
      _disableApiTermination = $v.disableApiTermination;
      _instanceInitiatedShutdownBehavior = $v.instanceInitiatedShutdownBehavior;
      _userData = $v.userData;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _elasticGpuSpecifications = $v.elasticGpuSpecifications?.toBuilder();
      _elasticInferenceAccelerators =
          $v.elasticInferenceAccelerators?.toBuilder();
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _instanceMarketOptions = $v.instanceMarketOptions?.toBuilder();
      _creditSpecification = $v.creditSpecification?.toBuilder();
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _disableApiStop = $v.disableApiStop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseLaunchTemplateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseLaunchTemplateData;
  }

  @override
  void update(void Function(ResponseLaunchTemplateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseLaunchTemplateData build() => _build();

  _$ResponseLaunchTemplateData _build() {
    _$ResponseLaunchTemplateData _$result;
    try {
      _$result = _$v ??
          new _$ResponseLaunchTemplateData._(
              kernelId: kernelId,
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'ResponseLaunchTemplateData', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              blockDeviceMappings: _blockDeviceMappings?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              imageId: imageId,
              instanceType: instanceType,
              keyName: keyName,
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              ramDiskId: ramDiskId,
              disableApiTermination: BuiltValueNullFieldError.checkNotNull(
                  disableApiTermination,
                  r'ResponseLaunchTemplateData',
                  'disableApiTermination'),
              instanceInitiatedShutdownBehavior:
                  instanceInitiatedShutdownBehavior,
              userData: userData,
              tagSpecifications: _tagSpecifications?.build(),
              elasticGpuSpecifications: _elasticGpuSpecifications?.build(),
              elasticInferenceAccelerators:
                  _elasticInferenceAccelerators?.build(),
              securityGroupIds: _securityGroupIds?.build(),
              securityGroups: _securityGroups?.build(),
              instanceMarketOptions: _instanceMarketOptions?.build(),
              creditSpecification: _creditSpecification?.build(),
              cpuOptions: _cpuOptions?.build(),
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              licenseSpecifications: _licenseSpecifications?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              instanceRequirements: _instanceRequirements?.build(),
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              maintenanceOptions: _maintenanceOptions?.build(),
              disableApiStop: BuiltValueNullFieldError.checkNotNull(
                  disableApiStop,
                  r'ResponseLaunchTemplateData',
                  'disableApiStop'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'elasticGpuSpecifications';
        _elasticGpuSpecifications?.build();
        _$failedField = 'elasticInferenceAccelerators';
        _elasticInferenceAccelerators?.build();
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();
        _$failedField = 'instanceMarketOptions';
        _instanceMarketOptions?.build();
        _$failedField = 'creditSpecification';
        _creditSpecification?.build();
        _$failedField = 'cpuOptions';
        _cpuOptions?.build();
        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'metadataOptions';
        _metadataOptions?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
        _$failedField = 'privateDnsNameOptions';
        _privateDnsNameOptions?.build();
        _$failedField = 'maintenanceOptions';
        _maintenanceOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResponseLaunchTemplateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
