// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Instance extends Instance {
  @override
  final int amiLaunchIndex;
  @override
  final String? imageId;
  @override
  final String? instanceId;
  @override
  final InstanceType? instanceType;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final DateTime? launchTime;
  @override
  final Monitoring? monitoring;
  @override
  final Placement? placement;
  @override
  final PlatformValues? platform;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;
  @override
  final String? publicDnsName;
  @override
  final String? publicIpAddress;
  @override
  final String? ramdiskId;
  @override
  final InstanceState? state;
  @override
  final String? stateTransitionReason;
  @override
  final String? subnetId;
  @override
  final String? vpcId;
  @override
  final ArchitectureValues? architecture;
  @override
  final _i2.BuiltList<InstanceBlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? clientToken;
  @override
  final bool ebsOptimized;
  @override
  final bool enaSupport;
  @override
  final HypervisorType? hypervisor;
  @override
  final IamInstanceProfile? iamInstanceProfile;
  @override
  final InstanceLifecycleType? instanceLifecycle;
  @override
  final _i2.BuiltList<ElasticGpuAssociation>? elasticGpuAssociations;
  @override
  final _i2.BuiltList<ElasticInferenceAcceleratorAssociation>?
      elasticInferenceAcceleratorAssociations;
  @override
  final _i2.BuiltList<InstanceNetworkInterface>? networkInterfaces;
  @override
  final String? outpostArn;
  @override
  final String? rootDeviceName;
  @override
  final DeviceType? rootDeviceType;
  @override
  final _i2.BuiltList<GroupIdentifier>? securityGroups;
  @override
  final bool sourceDestCheck;
  @override
  final String? spotInstanceRequestId;
  @override
  final String? sriovNetSupport;
  @override
  final StateReason? stateReason;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final VirtualizationType? virtualizationType;
  @override
  final CpuOptions? cpuOptions;
  @override
  final String? capacityReservationId;
  @override
  final CapacityReservationSpecificationResponse?
      capacityReservationSpecification;
  @override
  final HibernationOptions? hibernationOptions;
  @override
  final _i2.BuiltList<LicenseConfiguration>? licenses;
  @override
  final InstanceMetadataOptionsResponse? metadataOptions;
  @override
  final EnclaveOptions? enclaveOptions;
  @override
  final BootModeValues? bootMode;
  @override
  final String? platformDetails;
  @override
  final String? usageOperation;
  @override
  final DateTime? usageOperationUpdateTime;
  @override
  final PrivateDnsNameOptionsResponse? privateDnsNameOptions;
  @override
  final String? ipv6Address;
  @override
  final String? tpmSupport;
  @override
  final InstanceMaintenanceOptions? maintenanceOptions;
  @override
  final InstanceBootModeValues? currentInstanceBootMode;

  factory _$Instance([void Function(InstanceBuilder)? updates]) =>
      (new InstanceBuilder()..update(updates))._build();

  _$Instance._(
      {required this.amiLaunchIndex,
      this.imageId,
      this.instanceId,
      this.instanceType,
      this.kernelId,
      this.keyName,
      this.launchTime,
      this.monitoring,
      this.placement,
      this.platform,
      this.privateDnsName,
      this.privateIpAddress,
      this.productCodes,
      this.publicDnsName,
      this.publicIpAddress,
      this.ramdiskId,
      this.state,
      this.stateTransitionReason,
      this.subnetId,
      this.vpcId,
      this.architecture,
      this.blockDeviceMappings,
      this.clientToken,
      required this.ebsOptimized,
      required this.enaSupport,
      this.hypervisor,
      this.iamInstanceProfile,
      this.instanceLifecycle,
      this.elasticGpuAssociations,
      this.elasticInferenceAcceleratorAssociations,
      this.networkInterfaces,
      this.outpostArn,
      this.rootDeviceName,
      this.rootDeviceType,
      this.securityGroups,
      required this.sourceDestCheck,
      this.spotInstanceRequestId,
      this.sriovNetSupport,
      this.stateReason,
      this.tags,
      this.virtualizationType,
      this.cpuOptions,
      this.capacityReservationId,
      this.capacityReservationSpecification,
      this.hibernationOptions,
      this.licenses,
      this.metadataOptions,
      this.enclaveOptions,
      this.bootMode,
      this.platformDetails,
      this.usageOperation,
      this.usageOperationUpdateTime,
      this.privateDnsNameOptions,
      this.ipv6Address,
      this.tpmSupport,
      this.maintenanceOptions,
      this.currentInstanceBootMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amiLaunchIndex, r'Instance', 'amiLaunchIndex');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'Instance', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        enaSupport, r'Instance', 'enaSupport');
    BuiltValueNullFieldError.checkNotNull(
        sourceDestCheck, r'Instance', 'sourceDestCheck');
  }

  @override
  Instance rebuild(void Function(InstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceBuilder toBuilder() => new InstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Instance &&
        amiLaunchIndex == other.amiLaunchIndex &&
        imageId == other.imageId &&
        instanceId == other.instanceId &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        launchTime == other.launchTime &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        platform == other.platform &&
        privateDnsName == other.privateDnsName &&
        privateIpAddress == other.privateIpAddress &&
        productCodes == other.productCodes &&
        publicDnsName == other.publicDnsName &&
        publicIpAddress == other.publicIpAddress &&
        ramdiskId == other.ramdiskId &&
        state == other.state &&
        stateTransitionReason == other.stateTransitionReason &&
        subnetId == other.subnetId &&
        vpcId == other.vpcId &&
        architecture == other.architecture &&
        blockDeviceMappings == other.blockDeviceMappings &&
        clientToken == other.clientToken &&
        ebsOptimized == other.ebsOptimized &&
        enaSupport == other.enaSupport &&
        hypervisor == other.hypervisor &&
        iamInstanceProfile == other.iamInstanceProfile &&
        instanceLifecycle == other.instanceLifecycle &&
        elasticGpuAssociations == other.elasticGpuAssociations &&
        elasticInferenceAcceleratorAssociations ==
            other.elasticInferenceAcceleratorAssociations &&
        networkInterfaces == other.networkInterfaces &&
        outpostArn == other.outpostArn &&
        rootDeviceName == other.rootDeviceName &&
        rootDeviceType == other.rootDeviceType &&
        securityGroups == other.securityGroups &&
        sourceDestCheck == other.sourceDestCheck &&
        spotInstanceRequestId == other.spotInstanceRequestId &&
        sriovNetSupport == other.sriovNetSupport &&
        stateReason == other.stateReason &&
        tags == other.tags &&
        virtualizationType == other.virtualizationType &&
        cpuOptions == other.cpuOptions &&
        capacityReservationId == other.capacityReservationId &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        hibernationOptions == other.hibernationOptions &&
        licenses == other.licenses &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        bootMode == other.bootMode &&
        platformDetails == other.platformDetails &&
        usageOperation == other.usageOperation &&
        usageOperationUpdateTime == other.usageOperationUpdateTime &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        ipv6Address == other.ipv6Address &&
        tpmSupport == other.tpmSupport &&
        maintenanceOptions == other.maintenanceOptions &&
        currentInstanceBootMode == other.currentInstanceBootMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amiLaunchIndex.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, launchTime.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, publicDnsName.hashCode);
    _$hash = $jc(_$hash, publicIpAddress.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateTransitionReason.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, instanceLifecycle.hashCode);
    _$hash = $jc(_$hash, elasticGpuAssociations.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAcceleratorAssociations.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, rootDeviceType.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestId.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, stateReason.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, virtualizationType.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, licenses.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, platformDetails.hashCode);
    _$hash = $jc(_$hash, usageOperation.hashCode);
    _$hash = $jc(_$hash, usageOperationUpdateTime.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jc(_$hash, currentInstanceBootMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceBuilder implements Builder<Instance, InstanceBuilder> {
  _$Instance? _$v;

  int? _amiLaunchIndex;
  int? get amiLaunchIndex => _$this._amiLaunchIndex;
  set amiLaunchIndex(int? amiLaunchIndex) =>
      _$this._amiLaunchIndex = amiLaunchIndex;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  DateTime? _launchTime;
  DateTime? get launchTime => _$this._launchTime;
  set launchTime(DateTime? launchTime) => _$this._launchTime = launchTime;

  MonitoringBuilder? _monitoring;
  MonitoringBuilder get monitoring =>
      _$this._monitoring ??= new MonitoringBuilder();
  set monitoring(MonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  PlacementBuilder? _placement;
  PlacementBuilder get placement =>
      _$this._placement ??= new PlacementBuilder();
  set placement(PlacementBuilder? placement) => _$this._placement = placement;

  PlatformValues? _platform;
  PlatformValues? get platform => _$this._platform;
  set platform(PlatformValues? platform) => _$this._platform = platform;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _publicDnsName;
  String? get publicDnsName => _$this._publicDnsName;
  set publicDnsName(String? publicDnsName) =>
      _$this._publicDnsName = publicDnsName;

  String? _publicIpAddress;
  String? get publicIpAddress => _$this._publicIpAddress;
  set publicIpAddress(String? publicIpAddress) =>
      _$this._publicIpAddress = publicIpAddress;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  InstanceStateBuilder? _state;
  InstanceStateBuilder get state =>
      _$this._state ??= new InstanceStateBuilder();
  set state(InstanceStateBuilder? state) => _$this._state = state;

  String? _stateTransitionReason;
  String? get stateTransitionReason => _$this._stateTransitionReason;
  set stateTransitionReason(String? stateTransitionReason) =>
      _$this._stateTransitionReason = stateTransitionReason;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  ArchitectureValues? _architecture;
  ArchitectureValues? get architecture => _$this._architecture;
  set architecture(ArchitectureValues? architecture) =>
      _$this._architecture = architecture;

  _i2.ListBuilder<InstanceBlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<InstanceBlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i2.ListBuilder<InstanceBlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<InstanceBlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  bool? _enaSupport;
  bool? get enaSupport => _$this._enaSupport;
  set enaSupport(bool? enaSupport) => _$this._enaSupport = enaSupport;

  HypervisorType? _hypervisor;
  HypervisorType? get hypervisor => _$this._hypervisor;
  set hypervisor(HypervisorType? hypervisor) => _$this._hypervisor = hypervisor;

  IamInstanceProfileBuilder? _iamInstanceProfile;
  IamInstanceProfileBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??= new IamInstanceProfileBuilder();
  set iamInstanceProfile(IamInstanceProfileBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  InstanceLifecycleType? _instanceLifecycle;
  InstanceLifecycleType? get instanceLifecycle => _$this._instanceLifecycle;
  set instanceLifecycle(InstanceLifecycleType? instanceLifecycle) =>
      _$this._instanceLifecycle = instanceLifecycle;

  _i2.ListBuilder<ElasticGpuAssociation>? _elasticGpuAssociations;
  _i2.ListBuilder<ElasticGpuAssociation> get elasticGpuAssociations =>
      _$this._elasticGpuAssociations ??=
          new _i2.ListBuilder<ElasticGpuAssociation>();
  set elasticGpuAssociations(
          _i2.ListBuilder<ElasticGpuAssociation>? elasticGpuAssociations) =>
      _$this._elasticGpuAssociations = elasticGpuAssociations;

  _i2.ListBuilder<ElasticInferenceAcceleratorAssociation>?
      _elasticInferenceAcceleratorAssociations;
  _i2.ListBuilder<ElasticInferenceAcceleratorAssociation>
      get elasticInferenceAcceleratorAssociations =>
          _$this._elasticInferenceAcceleratorAssociations ??=
              new _i2.ListBuilder<ElasticInferenceAcceleratorAssociation>();
  set elasticInferenceAcceleratorAssociations(
          _i2.ListBuilder<ElasticInferenceAcceleratorAssociation>?
              elasticInferenceAcceleratorAssociations) =>
      _$this._elasticInferenceAcceleratorAssociations =
          elasticInferenceAcceleratorAssociations;

  _i2.ListBuilder<InstanceNetworkInterface>? _networkInterfaces;
  _i2.ListBuilder<InstanceNetworkInterface> get networkInterfaces =>
      _$this._networkInterfaces ??=
          new _i2.ListBuilder<InstanceNetworkInterface>();
  set networkInterfaces(
          _i2.ListBuilder<InstanceNetworkInterface>? networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _rootDeviceName;
  String? get rootDeviceName => _$this._rootDeviceName;
  set rootDeviceName(String? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  DeviceType? _rootDeviceType;
  DeviceType? get rootDeviceType => _$this._rootDeviceType;
  set rootDeviceType(DeviceType? rootDeviceType) =>
      _$this._rootDeviceType = rootDeviceType;

  _i2.ListBuilder<GroupIdentifier>? _securityGroups;
  _i2.ListBuilder<GroupIdentifier> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<GroupIdentifier>();
  set securityGroups(_i2.ListBuilder<GroupIdentifier>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  bool? _sourceDestCheck;
  bool? get sourceDestCheck => _$this._sourceDestCheck;
  set sourceDestCheck(bool? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  String? _spotInstanceRequestId;
  String? get spotInstanceRequestId => _$this._spotInstanceRequestId;
  set spotInstanceRequestId(String? spotInstanceRequestId) =>
      _$this._spotInstanceRequestId = spotInstanceRequestId;

  String? _sriovNetSupport;
  String? get sriovNetSupport => _$this._sriovNetSupport;
  set sriovNetSupport(String? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  StateReasonBuilder? _stateReason;
  StateReasonBuilder get stateReason =>
      _$this._stateReason ??= new StateReasonBuilder();
  set stateReason(StateReasonBuilder? stateReason) =>
      _$this._stateReason = stateReason;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VirtualizationType? _virtualizationType;
  VirtualizationType? get virtualizationType => _$this._virtualizationType;
  set virtualizationType(VirtualizationType? virtualizationType) =>
      _$this._virtualizationType = virtualizationType;

  CpuOptionsBuilder? _cpuOptions;
  CpuOptionsBuilder get cpuOptions =>
      _$this._cpuOptions ??= new CpuOptionsBuilder();
  set cpuOptions(CpuOptionsBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  CapacityReservationSpecificationResponseBuilder?
      _capacityReservationSpecification;
  CapacityReservationSpecificationResponseBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??=
              new CapacityReservationSpecificationResponseBuilder();
  set capacityReservationSpecification(
          CapacityReservationSpecificationResponseBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  HibernationOptionsBuilder? _hibernationOptions;
  HibernationOptionsBuilder get hibernationOptions =>
      _$this._hibernationOptions ??= new HibernationOptionsBuilder();
  set hibernationOptions(HibernationOptionsBuilder? hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  _i2.ListBuilder<LicenseConfiguration>? _licenses;
  _i2.ListBuilder<LicenseConfiguration> get licenses =>
      _$this._licenses ??= new _i2.ListBuilder<LicenseConfiguration>();
  set licenses(_i2.ListBuilder<LicenseConfiguration>? licenses) =>
      _$this._licenses = licenses;

  InstanceMetadataOptionsResponseBuilder? _metadataOptions;
  InstanceMetadataOptionsResponseBuilder get metadataOptions =>
      _$this._metadataOptions ??= new InstanceMetadataOptionsResponseBuilder();
  set metadataOptions(
          InstanceMetadataOptionsResponseBuilder? metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  EnclaveOptionsBuilder? _enclaveOptions;
  EnclaveOptionsBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new EnclaveOptionsBuilder();
  set enclaveOptions(EnclaveOptionsBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  BootModeValues? _bootMode;
  BootModeValues? get bootMode => _$this._bootMode;
  set bootMode(BootModeValues? bootMode) => _$this._bootMode = bootMode;

  String? _platformDetails;
  String? get platformDetails => _$this._platformDetails;
  set platformDetails(String? platformDetails) =>
      _$this._platformDetails = platformDetails;

  String? _usageOperation;
  String? get usageOperation => _$this._usageOperation;
  set usageOperation(String? usageOperation) =>
      _$this._usageOperation = usageOperation;

  DateTime? _usageOperationUpdateTime;
  DateTime? get usageOperationUpdateTime => _$this._usageOperationUpdateTime;
  set usageOperationUpdateTime(DateTime? usageOperationUpdateTime) =>
      _$this._usageOperationUpdateTime = usageOperationUpdateTime;

  PrivateDnsNameOptionsResponseBuilder? _privateDnsNameOptions;
  PrivateDnsNameOptionsResponseBuilder get privateDnsNameOptions =>
      _$this._privateDnsNameOptions ??=
          new PrivateDnsNameOptionsResponseBuilder();
  set privateDnsNameOptions(
          PrivateDnsNameOptionsResponseBuilder? privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  String? _tpmSupport;
  String? get tpmSupport => _$this._tpmSupport;
  set tpmSupport(String? tpmSupport) => _$this._tpmSupport = tpmSupport;

  InstanceMaintenanceOptionsBuilder? _maintenanceOptions;
  InstanceMaintenanceOptionsBuilder get maintenanceOptions =>
      _$this._maintenanceOptions ??= new InstanceMaintenanceOptionsBuilder();
  set maintenanceOptions(
          InstanceMaintenanceOptionsBuilder? maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  InstanceBootModeValues? _currentInstanceBootMode;
  InstanceBootModeValues? get currentInstanceBootMode =>
      _$this._currentInstanceBootMode;
  set currentInstanceBootMode(
          InstanceBootModeValues? currentInstanceBootMode) =>
      _$this._currentInstanceBootMode = currentInstanceBootMode;

  InstanceBuilder() {
    Instance._init(this);
  }

  InstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amiLaunchIndex = $v.amiLaunchIndex;
      _imageId = $v.imageId;
      _instanceId = $v.instanceId;
      _instanceType = $v.instanceType;
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _launchTime = $v.launchTime;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _platform = $v.platform;
      _privateDnsName = $v.privateDnsName;
      _privateIpAddress = $v.privateIpAddress;
      _productCodes = $v.productCodes?.toBuilder();
      _publicDnsName = $v.publicDnsName;
      _publicIpAddress = $v.publicIpAddress;
      _ramdiskId = $v.ramdiskId;
      _state = $v.state?.toBuilder();
      _stateTransitionReason = $v.stateTransitionReason;
      _subnetId = $v.subnetId;
      _vpcId = $v.vpcId;
      _architecture = $v.architecture;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _clientToken = $v.clientToken;
      _ebsOptimized = $v.ebsOptimized;
      _enaSupport = $v.enaSupport;
      _hypervisor = $v.hypervisor;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _instanceLifecycle = $v.instanceLifecycle;
      _elasticGpuAssociations = $v.elasticGpuAssociations?.toBuilder();
      _elasticInferenceAcceleratorAssociations =
          $v.elasticInferenceAcceleratorAssociations?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _outpostArn = $v.outpostArn;
      _rootDeviceName = $v.rootDeviceName;
      _rootDeviceType = $v.rootDeviceType;
      _securityGroups = $v.securityGroups?.toBuilder();
      _sourceDestCheck = $v.sourceDestCheck;
      _spotInstanceRequestId = $v.spotInstanceRequestId;
      _sriovNetSupport = $v.sriovNetSupport;
      _stateReason = $v.stateReason?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _virtualizationType = $v.virtualizationType;
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationId = $v.capacityReservationId;
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _licenses = $v.licenses?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _bootMode = $v.bootMode;
      _platformDetails = $v.platformDetails;
      _usageOperation = $v.usageOperation;
      _usageOperationUpdateTime = $v.usageOperationUpdateTime;
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _ipv6Address = $v.ipv6Address;
      _tpmSupport = $v.tpmSupport;
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _currentInstanceBootMode = $v.currentInstanceBootMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Instance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Instance;
  }

  @override
  void update(void Function(InstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Instance build() => _build();

  _$Instance _build() {
    _$Instance _$result;
    try {
      _$result = _$v ??
          new _$Instance._(
              amiLaunchIndex: BuiltValueNullFieldError.checkNotNull(
                  amiLaunchIndex, r'Instance', 'amiLaunchIndex'),
              imageId: imageId,
              instanceId: instanceId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              launchTime: launchTime,
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              platform: platform,
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress,
              productCodes: _productCodes?.build(),
              publicDnsName: publicDnsName,
              publicIpAddress: publicIpAddress,
              ramdiskId: ramdiskId,
              state: _state?.build(),
              stateTransitionReason: stateTransitionReason,
              subnetId: subnetId,
              vpcId: vpcId,
              architecture: architecture,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              clientToken: clientToken,
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'Instance', 'ebsOptimized'),
              enaSupport: BuiltValueNullFieldError.checkNotNull(
                  enaSupport, r'Instance', 'enaSupport'),
              hypervisor: hypervisor,
              iamInstanceProfile: _iamInstanceProfile?.build(),
              instanceLifecycle: instanceLifecycle,
              elasticGpuAssociations: _elasticGpuAssociations?.build(),
              elasticInferenceAcceleratorAssociations:
                  _elasticInferenceAcceleratorAssociations?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              outpostArn: outpostArn,
              rootDeviceName: rootDeviceName,
              rootDeviceType: rootDeviceType,
              securityGroups: _securityGroups?.build(),
              sourceDestCheck: BuiltValueNullFieldError.checkNotNull(
                  sourceDestCheck, r'Instance', 'sourceDestCheck'),
              spotInstanceRequestId: spotInstanceRequestId,
              sriovNetSupport: sriovNetSupport,
              stateReason: _stateReason?.build(),
              tags: _tags?.build(),
              virtualizationType: virtualizationType,
              cpuOptions: _cpuOptions?.build(),
              capacityReservationId: capacityReservationId,
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              licenses: _licenses?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              bootMode: bootMode,
              platformDetails: platformDetails,
              usageOperation: usageOperation,
              usageOperationUpdateTime: usageOperationUpdateTime,
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              ipv6Address: ipv6Address,
              tpmSupport: tpmSupport,
              maintenanceOptions: _maintenanceOptions?.build(),
              currentInstanceBootMode: currentInstanceBootMode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'productCodes';
        _productCodes?.build();

        _$failedField = 'state';
        _state?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'elasticGpuAssociations';
        _elasticGpuAssociations?.build();
        _$failedField = 'elasticInferenceAcceleratorAssociations';
        _elasticInferenceAcceleratorAssociations?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'stateReason';
        _stateReason?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'cpuOptions';
        _cpuOptions?.build();

        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'licenses';
        _licenses?.build();
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
            r'Instance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
