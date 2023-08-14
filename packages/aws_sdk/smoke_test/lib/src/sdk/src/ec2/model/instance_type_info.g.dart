// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_type_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceTypeInfo extends InstanceTypeInfo {
  @override
  final InstanceType? instanceType;
  @override
  final bool? currentGeneration;
  @override
  final bool? freeTierEligible;
  @override
  final _i2.BuiltList<UsageClassType>? supportedUsageClasses;
  @override
  final _i2.BuiltList<RootDeviceType>? supportedRootDeviceTypes;
  @override
  final _i2.BuiltList<VirtualizationType>? supportedVirtualizationTypes;
  @override
  final bool? bareMetal;
  @override
  final InstanceTypeHypervisor? hypervisor;
  @override
  final ProcessorInfo? processorInfo;
  @override
  final VCpuInfo? vCpuInfo;
  @override
  final MemoryInfo? memoryInfo;
  @override
  final bool? instanceStorageSupported;
  @override
  final InstanceStorageInfo? instanceStorageInfo;
  @override
  final EbsInfo? ebsInfo;
  @override
  final NetworkInfo? networkInfo;
  @override
  final GpuInfo? gpuInfo;
  @override
  final FpgaInfo? fpgaInfo;
  @override
  final PlacementGroupInfo? placementGroupInfo;
  @override
  final InferenceAcceleratorInfo? inferenceAcceleratorInfo;
  @override
  final bool? hibernationSupported;
  @override
  final bool? burstablePerformanceSupported;
  @override
  final bool? dedicatedHostsSupported;
  @override
  final bool? autoRecoverySupported;
  @override
  final _i2.BuiltList<BootModeType>? supportedBootModes;
  @override
  final NitroEnclavesSupport? nitroEnclavesSupport;
  @override
  final NitroTpmSupport? nitroTpmSupport;
  @override
  final NitroTpmInfo? nitroTpmInfo;

  factory _$InstanceTypeInfo(
          [void Function(InstanceTypeInfoBuilder)? updates]) =>
      (new InstanceTypeInfoBuilder()..update(updates))._build();

  _$InstanceTypeInfo._(
      {this.instanceType,
      this.currentGeneration,
      this.freeTierEligible,
      this.supportedUsageClasses,
      this.supportedRootDeviceTypes,
      this.supportedVirtualizationTypes,
      this.bareMetal,
      this.hypervisor,
      this.processorInfo,
      this.vCpuInfo,
      this.memoryInfo,
      this.instanceStorageSupported,
      this.instanceStorageInfo,
      this.ebsInfo,
      this.networkInfo,
      this.gpuInfo,
      this.fpgaInfo,
      this.placementGroupInfo,
      this.inferenceAcceleratorInfo,
      this.hibernationSupported,
      this.burstablePerformanceSupported,
      this.dedicatedHostsSupported,
      this.autoRecoverySupported,
      this.supportedBootModes,
      this.nitroEnclavesSupport,
      this.nitroTpmSupport,
      this.nitroTpmInfo})
      : super._();

  @override
  InstanceTypeInfo rebuild(void Function(InstanceTypeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceTypeInfoBuilder toBuilder() =>
      new InstanceTypeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceTypeInfo &&
        instanceType == other.instanceType &&
        currentGeneration == other.currentGeneration &&
        freeTierEligible == other.freeTierEligible &&
        supportedUsageClasses == other.supportedUsageClasses &&
        supportedRootDeviceTypes == other.supportedRootDeviceTypes &&
        supportedVirtualizationTypes == other.supportedVirtualizationTypes &&
        bareMetal == other.bareMetal &&
        hypervisor == other.hypervisor &&
        processorInfo == other.processorInfo &&
        vCpuInfo == other.vCpuInfo &&
        memoryInfo == other.memoryInfo &&
        instanceStorageSupported == other.instanceStorageSupported &&
        instanceStorageInfo == other.instanceStorageInfo &&
        ebsInfo == other.ebsInfo &&
        networkInfo == other.networkInfo &&
        gpuInfo == other.gpuInfo &&
        fpgaInfo == other.fpgaInfo &&
        placementGroupInfo == other.placementGroupInfo &&
        inferenceAcceleratorInfo == other.inferenceAcceleratorInfo &&
        hibernationSupported == other.hibernationSupported &&
        burstablePerformanceSupported == other.burstablePerformanceSupported &&
        dedicatedHostsSupported == other.dedicatedHostsSupported &&
        autoRecoverySupported == other.autoRecoverySupported &&
        supportedBootModes == other.supportedBootModes &&
        nitroEnclavesSupport == other.nitroEnclavesSupport &&
        nitroTpmSupport == other.nitroTpmSupport &&
        nitroTpmInfo == other.nitroTpmInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, currentGeneration.hashCode);
    _$hash = $jc(_$hash, freeTierEligible.hashCode);
    _$hash = $jc(_$hash, supportedUsageClasses.hashCode);
    _$hash = $jc(_$hash, supportedRootDeviceTypes.hashCode);
    _$hash = $jc(_$hash, supportedVirtualizationTypes.hashCode);
    _$hash = $jc(_$hash, bareMetal.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, processorInfo.hashCode);
    _$hash = $jc(_$hash, vCpuInfo.hashCode);
    _$hash = $jc(_$hash, memoryInfo.hashCode);
    _$hash = $jc(_$hash, instanceStorageSupported.hashCode);
    _$hash = $jc(_$hash, instanceStorageInfo.hashCode);
    _$hash = $jc(_$hash, ebsInfo.hashCode);
    _$hash = $jc(_$hash, networkInfo.hashCode);
    _$hash = $jc(_$hash, gpuInfo.hashCode);
    _$hash = $jc(_$hash, fpgaInfo.hashCode);
    _$hash = $jc(_$hash, placementGroupInfo.hashCode);
    _$hash = $jc(_$hash, inferenceAcceleratorInfo.hashCode);
    _$hash = $jc(_$hash, hibernationSupported.hashCode);
    _$hash = $jc(_$hash, burstablePerformanceSupported.hashCode);
    _$hash = $jc(_$hash, dedicatedHostsSupported.hashCode);
    _$hash = $jc(_$hash, autoRecoverySupported.hashCode);
    _$hash = $jc(_$hash, supportedBootModes.hashCode);
    _$hash = $jc(_$hash, nitroEnclavesSupport.hashCode);
    _$hash = $jc(_$hash, nitroTpmSupport.hashCode);
    _$hash = $jc(_$hash, nitroTpmInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceTypeInfoBuilder
    implements Builder<InstanceTypeInfo, InstanceTypeInfoBuilder> {
  _$InstanceTypeInfo? _$v;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  bool? _currentGeneration;
  bool? get currentGeneration => _$this._currentGeneration;
  set currentGeneration(bool? currentGeneration) =>
      _$this._currentGeneration = currentGeneration;

  bool? _freeTierEligible;
  bool? get freeTierEligible => _$this._freeTierEligible;
  set freeTierEligible(bool? freeTierEligible) =>
      _$this._freeTierEligible = freeTierEligible;

  _i2.ListBuilder<UsageClassType>? _supportedUsageClasses;
  _i2.ListBuilder<UsageClassType> get supportedUsageClasses =>
      _$this._supportedUsageClasses ??= new _i2.ListBuilder<UsageClassType>();
  set supportedUsageClasses(
          _i2.ListBuilder<UsageClassType>? supportedUsageClasses) =>
      _$this._supportedUsageClasses = supportedUsageClasses;

  _i2.ListBuilder<RootDeviceType>? _supportedRootDeviceTypes;
  _i2.ListBuilder<RootDeviceType> get supportedRootDeviceTypes =>
      _$this._supportedRootDeviceTypes ??=
          new _i2.ListBuilder<RootDeviceType>();
  set supportedRootDeviceTypes(
          _i2.ListBuilder<RootDeviceType>? supportedRootDeviceTypes) =>
      _$this._supportedRootDeviceTypes = supportedRootDeviceTypes;

  _i2.ListBuilder<VirtualizationType>? _supportedVirtualizationTypes;
  _i2.ListBuilder<VirtualizationType> get supportedVirtualizationTypes =>
      _$this._supportedVirtualizationTypes ??=
          new _i2.ListBuilder<VirtualizationType>();
  set supportedVirtualizationTypes(
          _i2.ListBuilder<VirtualizationType>? supportedVirtualizationTypes) =>
      _$this._supportedVirtualizationTypes = supportedVirtualizationTypes;

  bool? _bareMetal;
  bool? get bareMetal => _$this._bareMetal;
  set bareMetal(bool? bareMetal) => _$this._bareMetal = bareMetal;

  InstanceTypeHypervisor? _hypervisor;
  InstanceTypeHypervisor? get hypervisor => _$this._hypervisor;
  set hypervisor(InstanceTypeHypervisor? hypervisor) =>
      _$this._hypervisor = hypervisor;

  ProcessorInfoBuilder? _processorInfo;
  ProcessorInfoBuilder get processorInfo =>
      _$this._processorInfo ??= new ProcessorInfoBuilder();
  set processorInfo(ProcessorInfoBuilder? processorInfo) =>
      _$this._processorInfo = processorInfo;

  VCpuInfoBuilder? _vCpuInfo;
  VCpuInfoBuilder get vCpuInfo => _$this._vCpuInfo ??= new VCpuInfoBuilder();
  set vCpuInfo(VCpuInfoBuilder? vCpuInfo) => _$this._vCpuInfo = vCpuInfo;

  MemoryInfoBuilder? _memoryInfo;
  MemoryInfoBuilder get memoryInfo =>
      _$this._memoryInfo ??= new MemoryInfoBuilder();
  set memoryInfo(MemoryInfoBuilder? memoryInfo) =>
      _$this._memoryInfo = memoryInfo;

  bool? _instanceStorageSupported;
  bool? get instanceStorageSupported => _$this._instanceStorageSupported;
  set instanceStorageSupported(bool? instanceStorageSupported) =>
      _$this._instanceStorageSupported = instanceStorageSupported;

  InstanceStorageInfoBuilder? _instanceStorageInfo;
  InstanceStorageInfoBuilder get instanceStorageInfo =>
      _$this._instanceStorageInfo ??= new InstanceStorageInfoBuilder();
  set instanceStorageInfo(InstanceStorageInfoBuilder? instanceStorageInfo) =>
      _$this._instanceStorageInfo = instanceStorageInfo;

  EbsInfoBuilder? _ebsInfo;
  EbsInfoBuilder get ebsInfo => _$this._ebsInfo ??= new EbsInfoBuilder();
  set ebsInfo(EbsInfoBuilder? ebsInfo) => _$this._ebsInfo = ebsInfo;

  NetworkInfoBuilder? _networkInfo;
  NetworkInfoBuilder get networkInfo =>
      _$this._networkInfo ??= new NetworkInfoBuilder();
  set networkInfo(NetworkInfoBuilder? networkInfo) =>
      _$this._networkInfo = networkInfo;

  GpuInfoBuilder? _gpuInfo;
  GpuInfoBuilder get gpuInfo => _$this._gpuInfo ??= new GpuInfoBuilder();
  set gpuInfo(GpuInfoBuilder? gpuInfo) => _$this._gpuInfo = gpuInfo;

  FpgaInfoBuilder? _fpgaInfo;
  FpgaInfoBuilder get fpgaInfo => _$this._fpgaInfo ??= new FpgaInfoBuilder();
  set fpgaInfo(FpgaInfoBuilder? fpgaInfo) => _$this._fpgaInfo = fpgaInfo;

  PlacementGroupInfoBuilder? _placementGroupInfo;
  PlacementGroupInfoBuilder get placementGroupInfo =>
      _$this._placementGroupInfo ??= new PlacementGroupInfoBuilder();
  set placementGroupInfo(PlacementGroupInfoBuilder? placementGroupInfo) =>
      _$this._placementGroupInfo = placementGroupInfo;

  InferenceAcceleratorInfoBuilder? _inferenceAcceleratorInfo;
  InferenceAcceleratorInfoBuilder get inferenceAcceleratorInfo =>
      _$this._inferenceAcceleratorInfo ??=
          new InferenceAcceleratorInfoBuilder();
  set inferenceAcceleratorInfo(
          InferenceAcceleratorInfoBuilder? inferenceAcceleratorInfo) =>
      _$this._inferenceAcceleratorInfo = inferenceAcceleratorInfo;

  bool? _hibernationSupported;
  bool? get hibernationSupported => _$this._hibernationSupported;
  set hibernationSupported(bool? hibernationSupported) =>
      _$this._hibernationSupported = hibernationSupported;

  bool? _burstablePerformanceSupported;
  bool? get burstablePerformanceSupported =>
      _$this._burstablePerformanceSupported;
  set burstablePerformanceSupported(bool? burstablePerformanceSupported) =>
      _$this._burstablePerformanceSupported = burstablePerformanceSupported;

  bool? _dedicatedHostsSupported;
  bool? get dedicatedHostsSupported => _$this._dedicatedHostsSupported;
  set dedicatedHostsSupported(bool? dedicatedHostsSupported) =>
      _$this._dedicatedHostsSupported = dedicatedHostsSupported;

  bool? _autoRecoverySupported;
  bool? get autoRecoverySupported => _$this._autoRecoverySupported;
  set autoRecoverySupported(bool? autoRecoverySupported) =>
      _$this._autoRecoverySupported = autoRecoverySupported;

  _i2.ListBuilder<BootModeType>? _supportedBootModes;
  _i2.ListBuilder<BootModeType> get supportedBootModes =>
      _$this._supportedBootModes ??= new _i2.ListBuilder<BootModeType>();
  set supportedBootModes(_i2.ListBuilder<BootModeType>? supportedBootModes) =>
      _$this._supportedBootModes = supportedBootModes;

  NitroEnclavesSupport? _nitroEnclavesSupport;
  NitroEnclavesSupport? get nitroEnclavesSupport =>
      _$this._nitroEnclavesSupport;
  set nitroEnclavesSupport(NitroEnclavesSupport? nitroEnclavesSupport) =>
      _$this._nitroEnclavesSupport = nitroEnclavesSupport;

  NitroTpmSupport? _nitroTpmSupport;
  NitroTpmSupport? get nitroTpmSupport => _$this._nitroTpmSupport;
  set nitroTpmSupport(NitroTpmSupport? nitroTpmSupport) =>
      _$this._nitroTpmSupport = nitroTpmSupport;

  NitroTpmInfoBuilder? _nitroTpmInfo;
  NitroTpmInfoBuilder get nitroTpmInfo =>
      _$this._nitroTpmInfo ??= new NitroTpmInfoBuilder();
  set nitroTpmInfo(NitroTpmInfoBuilder? nitroTpmInfo) =>
      _$this._nitroTpmInfo = nitroTpmInfo;

  InstanceTypeInfoBuilder();

  InstanceTypeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _currentGeneration = $v.currentGeneration;
      _freeTierEligible = $v.freeTierEligible;
      _supportedUsageClasses = $v.supportedUsageClasses?.toBuilder();
      _supportedRootDeviceTypes = $v.supportedRootDeviceTypes?.toBuilder();
      _supportedVirtualizationTypes =
          $v.supportedVirtualizationTypes?.toBuilder();
      _bareMetal = $v.bareMetal;
      _hypervisor = $v.hypervisor;
      _processorInfo = $v.processorInfo?.toBuilder();
      _vCpuInfo = $v.vCpuInfo?.toBuilder();
      _memoryInfo = $v.memoryInfo?.toBuilder();
      _instanceStorageSupported = $v.instanceStorageSupported;
      _instanceStorageInfo = $v.instanceStorageInfo?.toBuilder();
      _ebsInfo = $v.ebsInfo?.toBuilder();
      _networkInfo = $v.networkInfo?.toBuilder();
      _gpuInfo = $v.gpuInfo?.toBuilder();
      _fpgaInfo = $v.fpgaInfo?.toBuilder();
      _placementGroupInfo = $v.placementGroupInfo?.toBuilder();
      _inferenceAcceleratorInfo = $v.inferenceAcceleratorInfo?.toBuilder();
      _hibernationSupported = $v.hibernationSupported;
      _burstablePerformanceSupported = $v.burstablePerformanceSupported;
      _dedicatedHostsSupported = $v.dedicatedHostsSupported;
      _autoRecoverySupported = $v.autoRecoverySupported;
      _supportedBootModes = $v.supportedBootModes?.toBuilder();
      _nitroEnclavesSupport = $v.nitroEnclavesSupport;
      _nitroTpmSupport = $v.nitroTpmSupport;
      _nitroTpmInfo = $v.nitroTpmInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceTypeInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceTypeInfo;
  }

  @override
  void update(void Function(InstanceTypeInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceTypeInfo build() => _build();

  _$InstanceTypeInfo _build() {
    _$InstanceTypeInfo _$result;
    try {
      _$result = _$v ??
          new _$InstanceTypeInfo._(
              instanceType: instanceType,
              currentGeneration: currentGeneration,
              freeTierEligible: freeTierEligible,
              supportedUsageClasses: _supportedUsageClasses?.build(),
              supportedRootDeviceTypes: _supportedRootDeviceTypes?.build(),
              supportedVirtualizationTypes:
                  _supportedVirtualizationTypes?.build(),
              bareMetal: bareMetal,
              hypervisor: hypervisor,
              processorInfo: _processorInfo?.build(),
              vCpuInfo: _vCpuInfo?.build(),
              memoryInfo: _memoryInfo?.build(),
              instanceStorageSupported: instanceStorageSupported,
              instanceStorageInfo: _instanceStorageInfo?.build(),
              ebsInfo: _ebsInfo?.build(),
              networkInfo: _networkInfo?.build(),
              gpuInfo: _gpuInfo?.build(),
              fpgaInfo: _fpgaInfo?.build(),
              placementGroupInfo: _placementGroupInfo?.build(),
              inferenceAcceleratorInfo: _inferenceAcceleratorInfo?.build(),
              hibernationSupported: hibernationSupported,
              burstablePerformanceSupported: burstablePerformanceSupported,
              dedicatedHostsSupported: dedicatedHostsSupported,
              autoRecoverySupported: autoRecoverySupported,
              supportedBootModes: _supportedBootModes?.build(),
              nitroEnclavesSupport: nitroEnclavesSupport,
              nitroTpmSupport: nitroTpmSupport,
              nitroTpmInfo: _nitroTpmInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedUsageClasses';
        _supportedUsageClasses?.build();
        _$failedField = 'supportedRootDeviceTypes';
        _supportedRootDeviceTypes?.build();
        _$failedField = 'supportedVirtualizationTypes';
        _supportedVirtualizationTypes?.build();

        _$failedField = 'processorInfo';
        _processorInfo?.build();
        _$failedField = 'vCpuInfo';
        _vCpuInfo?.build();
        _$failedField = 'memoryInfo';
        _memoryInfo?.build();

        _$failedField = 'instanceStorageInfo';
        _instanceStorageInfo?.build();
        _$failedField = 'ebsInfo';
        _ebsInfo?.build();
        _$failedField = 'networkInfo';
        _networkInfo?.build();
        _$failedField = 'gpuInfo';
        _gpuInfo?.build();
        _$failedField = 'fpgaInfo';
        _fpgaInfo?.build();
        _$failedField = 'placementGroupInfo';
        _placementGroupInfo?.build();
        _$failedField = 'inferenceAcceleratorInfo';
        _inferenceAcceleratorInfo?.build();

        _$failedField = 'supportedBootModes';
        _supportedBootModes?.build();

        _$failedField = 'nitroTpmInfo';
        _nitroTpmInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceTypeInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
