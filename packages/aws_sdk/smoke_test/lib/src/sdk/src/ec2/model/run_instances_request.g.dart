// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunInstancesRequest extends RunInstancesRequest {
  @override
  final _i3.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? imageId;
  @override
  final InstanceType? instanceType;
  @override
  final int ipv6AddressCount;
  @override
  final _i3.BuiltList<InstanceIpv6Address>? ipv6Addresses;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final int maxCount;
  @override
  final int minCount;
  @override
  final RunInstancesMonitoringEnabled? monitoring;
  @override
  final Placement? placement;
  @override
  final String? ramdiskId;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final _i3.BuiltList<String>? securityGroups;
  @override
  final String? subnetId;
  @override
  final String? userData;
  @override
  final String? additionalInfo;
  @override
  final String? clientToken;
  @override
  final bool disableApiTermination;
  @override
  final bool dryRun;
  @override
  final bool ebsOptimized;
  @override
  final IamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final ShutdownBehavior? instanceInitiatedShutdownBehavior;
  @override
  final _i3.BuiltList<InstanceNetworkInterfaceSpecification>? networkInterfaces;
  @override
  final String? privateIpAddress;
  @override
  final _i3.BuiltList<ElasticGpuSpecification>? elasticGpuSpecification;
  @override
  final _i3.BuiltList<ElasticInferenceAccelerator>?
      elasticInferenceAccelerators;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final LaunchTemplateSpecification? launchTemplate;
  @override
  final InstanceMarketOptionsRequest? instanceMarketOptions;
  @override
  final CreditSpecificationRequest? creditSpecification;
  @override
  final CpuOptionsRequest? cpuOptions;
  @override
  final CapacityReservationSpecification? capacityReservationSpecification;
  @override
  final HibernationOptionsRequest? hibernationOptions;
  @override
  final _i3.BuiltList<LicenseConfigurationRequest>? licenseSpecifications;
  @override
  final InstanceMetadataOptionsRequest? metadataOptions;
  @override
  final EnclaveOptionsRequest? enclaveOptions;
  @override
  final PrivateDnsNameOptionsRequest? privateDnsNameOptions;
  @override
  final InstanceMaintenanceOptionsRequest? maintenanceOptions;
  @override
  final bool disableApiStop;
  @override
  final bool enablePrimaryIpv6;

  factory _$RunInstancesRequest(
          [void Function(RunInstancesRequestBuilder)? updates]) =>
      (new RunInstancesRequestBuilder()..update(updates))._build();

  _$RunInstancesRequest._(
      {this.blockDeviceMappings,
      this.imageId,
      this.instanceType,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.kernelId,
      this.keyName,
      required this.maxCount,
      required this.minCount,
      this.monitoring,
      this.placement,
      this.ramdiskId,
      this.securityGroupIds,
      this.securityGroups,
      this.subnetId,
      this.userData,
      this.additionalInfo,
      this.clientToken,
      required this.disableApiTermination,
      required this.dryRun,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.instanceInitiatedShutdownBehavior,
      this.networkInterfaces,
      this.privateIpAddress,
      this.elasticGpuSpecification,
      this.elasticInferenceAccelerators,
      this.tagSpecifications,
      this.launchTemplate,
      this.instanceMarketOptions,
      this.creditSpecification,
      this.cpuOptions,
      this.capacityReservationSpecification,
      this.hibernationOptions,
      this.licenseSpecifications,
      this.metadataOptions,
      this.enclaveOptions,
      this.privateDnsNameOptions,
      this.maintenanceOptions,
      required this.disableApiStop,
      required this.enablePrimaryIpv6})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ipv6AddressCount, r'RunInstancesRequest', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        maxCount, r'RunInstancesRequest', 'maxCount');
    BuiltValueNullFieldError.checkNotNull(
        minCount, r'RunInstancesRequest', 'minCount');
    BuiltValueNullFieldError.checkNotNull(
        disableApiTermination, r'RunInstancesRequest', 'disableApiTermination');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RunInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'RunInstancesRequest', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        disableApiStop, r'RunInstancesRequest', 'disableApiStop');
    BuiltValueNullFieldError.checkNotNull(
        enablePrimaryIpv6, r'RunInstancesRequest', 'enablePrimaryIpv6');
  }

  @override
  RunInstancesRequest rebuild(
          void Function(RunInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunInstancesRequestBuilder toBuilder() =>
      new RunInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunInstancesRequest &&
        blockDeviceMappings == other.blockDeviceMappings &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        maxCount == other.maxCount &&
        minCount == other.minCount &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        ramdiskId == other.ramdiskId &&
        securityGroupIds == other.securityGroupIds &&
        securityGroups == other.securityGroups &&
        subnetId == other.subnetId &&
        userData == other.userData &&
        additionalInfo == other.additionalInfo &&
        clientToken == other.clientToken &&
        disableApiTermination == other.disableApiTermination &&
        dryRun == other.dryRun &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        networkInterfaces == other.networkInterfaces &&
        privateIpAddress == other.privateIpAddress &&
        elasticGpuSpecification == other.elasticGpuSpecification &&
        elasticInferenceAccelerators == other.elasticInferenceAccelerators &&
        tagSpecifications == other.tagSpecifications &&
        launchTemplate == other.launchTemplate &&
        instanceMarketOptions == other.instanceMarketOptions &&
        creditSpecification == other.creditSpecification &&
        cpuOptions == other.cpuOptions &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        hibernationOptions == other.hibernationOptions &&
        licenseSpecifications == other.licenseSpecifications &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        maintenanceOptions == other.maintenanceOptions &&
        disableApiStop == other.disableApiStop &&
        enablePrimaryIpv6 == other.enablePrimaryIpv6;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, maxCount.hashCode);
    _$hash = $jc(_$hash, minCount.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, elasticGpuSpecification.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAccelerators.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, instanceMarketOptions.hashCode);
    _$hash = $jc(_$hash, creditSpecification.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jc(_$hash, enablePrimaryIpv6.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RunInstancesRequestBuilder
    implements Builder<RunInstancesRequest, RunInstancesRequestBuilder> {
  _$RunInstancesRequest? _$v;

  _i3.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i3.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i3.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i3.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i3.ListBuilder<InstanceIpv6Address>? _ipv6Addresses;
  _i3.ListBuilder<InstanceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i3.ListBuilder<InstanceIpv6Address>();
  set ipv6Addresses(_i3.ListBuilder<InstanceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  int? _maxCount;
  int? get maxCount => _$this._maxCount;
  set maxCount(int? maxCount) => _$this._maxCount = maxCount;

  int? _minCount;
  int? get minCount => _$this._minCount;
  set minCount(int? minCount) => _$this._minCount = minCount;

  RunInstancesMonitoringEnabledBuilder? _monitoring;
  RunInstancesMonitoringEnabledBuilder get monitoring =>
      _$this._monitoring ??= new RunInstancesMonitoringEnabledBuilder();
  set monitoring(RunInstancesMonitoringEnabledBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  PlacementBuilder? _placement;
  PlacementBuilder get placement =>
      _$this._placement ??= new PlacementBuilder();
  set placement(PlacementBuilder? placement) => _$this._placement = placement;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i3.ListBuilder<String>? _securityGroups;
  _i3.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i3.ListBuilder<String>();
  set securityGroups(_i3.ListBuilder<String>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _disableApiTermination;
  bool? get disableApiTermination => _$this._disableApiTermination;
  set disableApiTermination(bool? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  ShutdownBehavior? _instanceInitiatedShutdownBehavior;
  ShutdownBehavior? get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior;
  set instanceInitiatedShutdownBehavior(
          ShutdownBehavior? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  _i3.ListBuilder<InstanceNetworkInterfaceSpecification>? _networkInterfaces;
  _i3.ListBuilder<InstanceNetworkInterfaceSpecification>
      get networkInterfaces => _$this._networkInterfaces ??=
          new _i3.ListBuilder<InstanceNetworkInterfaceSpecification>();
  set networkInterfaces(
          _i3.ListBuilder<InstanceNetworkInterfaceSpecification>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i3.ListBuilder<ElasticGpuSpecification>? _elasticGpuSpecification;
  _i3.ListBuilder<ElasticGpuSpecification> get elasticGpuSpecification =>
      _$this._elasticGpuSpecification ??=
          new _i3.ListBuilder<ElasticGpuSpecification>();
  set elasticGpuSpecification(
          _i3.ListBuilder<ElasticGpuSpecification>? elasticGpuSpecification) =>
      _$this._elasticGpuSpecification = elasticGpuSpecification;

  _i3.ListBuilder<ElasticInferenceAccelerator>? _elasticInferenceAccelerators;
  _i3.ListBuilder<ElasticInferenceAccelerator>
      get elasticInferenceAccelerators =>
          _$this._elasticInferenceAccelerators ??=
              new _i3.ListBuilder<ElasticInferenceAccelerator>();
  set elasticInferenceAccelerators(
          _i3.ListBuilder<ElasticInferenceAccelerator>?
              elasticInferenceAccelerators) =>
      _$this._elasticInferenceAccelerators = elasticInferenceAccelerators;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  LaunchTemplateSpecificationBuilder? _launchTemplate;
  LaunchTemplateSpecificationBuilder get launchTemplate =>
      _$this._launchTemplate ??= new LaunchTemplateSpecificationBuilder();
  set launchTemplate(LaunchTemplateSpecificationBuilder? launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  InstanceMarketOptionsRequestBuilder? _instanceMarketOptions;
  InstanceMarketOptionsRequestBuilder get instanceMarketOptions =>
      _$this._instanceMarketOptions ??=
          new InstanceMarketOptionsRequestBuilder();
  set instanceMarketOptions(
          InstanceMarketOptionsRequestBuilder? instanceMarketOptions) =>
      _$this._instanceMarketOptions = instanceMarketOptions;

  CreditSpecificationRequestBuilder? _creditSpecification;
  CreditSpecificationRequestBuilder get creditSpecification =>
      _$this._creditSpecification ??= new CreditSpecificationRequestBuilder();
  set creditSpecification(
          CreditSpecificationRequestBuilder? creditSpecification) =>
      _$this._creditSpecification = creditSpecification;

  CpuOptionsRequestBuilder? _cpuOptions;
  CpuOptionsRequestBuilder get cpuOptions =>
      _$this._cpuOptions ??= new CpuOptionsRequestBuilder();
  set cpuOptions(CpuOptionsRequestBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  CapacityReservationSpecificationBuilder? _capacityReservationSpecification;
  CapacityReservationSpecificationBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??=
              new CapacityReservationSpecificationBuilder();
  set capacityReservationSpecification(
          CapacityReservationSpecificationBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  HibernationOptionsRequestBuilder? _hibernationOptions;
  HibernationOptionsRequestBuilder get hibernationOptions =>
      _$this._hibernationOptions ??= new HibernationOptionsRequestBuilder();
  set hibernationOptions(
          HibernationOptionsRequestBuilder? hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  _i3.ListBuilder<LicenseConfigurationRequest>? _licenseSpecifications;
  _i3.ListBuilder<LicenseConfigurationRequest> get licenseSpecifications =>
      _$this._licenseSpecifications ??=
          new _i3.ListBuilder<LicenseConfigurationRequest>();
  set licenseSpecifications(
          _i3.ListBuilder<LicenseConfigurationRequest>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  InstanceMetadataOptionsRequestBuilder? _metadataOptions;
  InstanceMetadataOptionsRequestBuilder get metadataOptions =>
      _$this._metadataOptions ??= new InstanceMetadataOptionsRequestBuilder();
  set metadataOptions(InstanceMetadataOptionsRequestBuilder? metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  EnclaveOptionsRequestBuilder? _enclaveOptions;
  EnclaveOptionsRequestBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new EnclaveOptionsRequestBuilder();
  set enclaveOptions(EnclaveOptionsRequestBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  PrivateDnsNameOptionsRequestBuilder? _privateDnsNameOptions;
  PrivateDnsNameOptionsRequestBuilder get privateDnsNameOptions =>
      _$this._privateDnsNameOptions ??=
          new PrivateDnsNameOptionsRequestBuilder();
  set privateDnsNameOptions(
          PrivateDnsNameOptionsRequestBuilder? privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  InstanceMaintenanceOptionsRequestBuilder? _maintenanceOptions;
  InstanceMaintenanceOptionsRequestBuilder get maintenanceOptions =>
      _$this._maintenanceOptions ??=
          new InstanceMaintenanceOptionsRequestBuilder();
  set maintenanceOptions(
          InstanceMaintenanceOptionsRequestBuilder? maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  bool? _disableApiStop;
  bool? get disableApiStop => _$this._disableApiStop;
  set disableApiStop(bool? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  bool? _enablePrimaryIpv6;
  bool? get enablePrimaryIpv6 => _$this._enablePrimaryIpv6;
  set enablePrimaryIpv6(bool? enablePrimaryIpv6) =>
      _$this._enablePrimaryIpv6 = enablePrimaryIpv6;

  RunInstancesRequestBuilder() {
    RunInstancesRequest._init(this);
  }

  RunInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _maxCount = $v.maxCount;
      _minCount = $v.minCount;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _subnetId = $v.subnetId;
      _userData = $v.userData;
      _additionalInfo = $v.additionalInfo;
      _clientToken = $v.clientToken;
      _disableApiTermination = $v.disableApiTermination;
      _dryRun = $v.dryRun;
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _instanceInitiatedShutdownBehavior = $v.instanceInitiatedShutdownBehavior;
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _privateIpAddress = $v.privateIpAddress;
      _elasticGpuSpecification = $v.elasticGpuSpecification?.toBuilder();
      _elasticInferenceAccelerators =
          $v.elasticInferenceAccelerators?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _instanceMarketOptions = $v.instanceMarketOptions?.toBuilder();
      _creditSpecification = $v.creditSpecification?.toBuilder();
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _disableApiStop = $v.disableApiStop;
      _enablePrimaryIpv6 = $v.enablePrimaryIpv6;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RunInstancesRequest;
  }

  @override
  void update(void Function(RunInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunInstancesRequest build() => _build();

  _$RunInstancesRequest _build() {
    _$RunInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$RunInstancesRequest._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              imageId: imageId,
              instanceType: instanceType,
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount, r'RunInstancesRequest', 'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              kernelId: kernelId,
              keyName: keyName,
              maxCount: BuiltValueNullFieldError.checkNotNull(
                  maxCount, r'RunInstancesRequest', 'maxCount'),
              minCount: BuiltValueNullFieldError.checkNotNull(
                  minCount, r'RunInstancesRequest', 'minCount'),
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              securityGroupIds: _securityGroupIds?.build(),
              securityGroups: _securityGroups?.build(),
              subnetId: subnetId,
              userData: userData,
              additionalInfo: additionalInfo,
              clientToken: clientToken,
              disableApiTermination: BuiltValueNullFieldError.checkNotNull(
                  disableApiTermination, r'RunInstancesRequest', 'disableApiTermination'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RunInstancesRequest', 'dryRun'),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'RunInstancesRequest', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              instanceInitiatedShutdownBehavior:
                  instanceInitiatedShutdownBehavior,
              networkInterfaces: _networkInterfaces?.build(),
              privateIpAddress: privateIpAddress,
              elasticGpuSpecification: _elasticGpuSpecification?.build(),
              elasticInferenceAccelerators:
                  _elasticInferenceAccelerators?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              launchTemplate: _launchTemplate?.build(),
              instanceMarketOptions: _instanceMarketOptions?.build(),
              creditSpecification: _creditSpecification?.build(),
              cpuOptions: _cpuOptions?.build(),
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              licenseSpecifications: _licenseSpecifications?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              maintenanceOptions: _maintenanceOptions?.build(),
              disableApiStop: BuiltValueNullFieldError.checkNotNull(disableApiStop, r'RunInstancesRequest', 'disableApiStop'),
              enablePrimaryIpv6: BuiltValueNullFieldError.checkNotNull(enablePrimaryIpv6, r'RunInstancesRequest', 'enablePrimaryIpv6'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'elasticGpuSpecification';
        _elasticGpuSpecification?.build();
        _$failedField = 'elasticInferenceAccelerators';
        _elasticInferenceAccelerators?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
        _$failedField = 'instanceMarketOptions';
        _instanceMarketOptions?.build();
        _$failedField = 'creditSpecification';
        _creditSpecification?.build();
        _$failedField = 'cpuOptions';
        _cpuOptions?.build();
        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
        _$failedField = 'metadataOptions';
        _metadataOptions?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();
        _$failedField = 'privateDnsNameOptions';
        _privateDnsNameOptions?.build();
        _$failedField = 'maintenanceOptions';
        _maintenanceOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RunInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
