// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_requirements.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceRequirements extends InstanceRequirements {
  @override
  final VCpuCountRange? vCpuCount;
  @override
  final MemoryMib? memoryMib;
  @override
  final _i2.BuiltList<CpuManufacturer>? cpuManufacturers;
  @override
  final MemoryGiBPerVCpu? memoryGiBPerVCpu;
  @override
  final _i2.BuiltList<String>? excludedInstanceTypes;
  @override
  final _i2.BuiltList<InstanceGeneration>? instanceGenerations;
  @override
  final int spotMaxPricePercentageOverLowestPrice;
  @override
  final int onDemandMaxPricePercentageOverLowestPrice;
  @override
  final BareMetal? bareMetal;
  @override
  final BurstablePerformance? burstablePerformance;
  @override
  final bool requireHibernateSupport;
  @override
  final NetworkInterfaceCount? networkInterfaceCount;
  @override
  final LocalStorage? localStorage;
  @override
  final _i2.BuiltList<LocalStorageType>? localStorageTypes;
  @override
  final TotalLocalStorageGb? totalLocalStorageGb;
  @override
  final BaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;
  @override
  final _i2.BuiltList<AcceleratorType>? acceleratorTypes;
  @override
  final AcceleratorCount? acceleratorCount;
  @override
  final _i2.BuiltList<AcceleratorManufacturer>? acceleratorManufacturers;
  @override
  final _i2.BuiltList<AcceleratorName>? acceleratorNames;
  @override
  final AcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;
  @override
  final NetworkBandwidthGbps? networkBandwidthGbps;
  @override
  final _i2.BuiltList<String>? allowedInstanceTypes;

  factory _$InstanceRequirements(
          [void Function(InstanceRequirementsBuilder)? updates]) =>
      (new InstanceRequirementsBuilder()..update(updates))._build();

  _$InstanceRequirements._(
      {this.vCpuCount,
      this.memoryMib,
      this.cpuManufacturers,
      this.memoryGiBPerVCpu,
      this.excludedInstanceTypes,
      this.instanceGenerations,
      required this.spotMaxPricePercentageOverLowestPrice,
      required this.onDemandMaxPricePercentageOverLowestPrice,
      this.bareMetal,
      this.burstablePerformance,
      required this.requireHibernateSupport,
      this.networkInterfaceCount,
      this.localStorage,
      this.localStorageTypes,
      this.totalLocalStorageGb,
      this.baselineEbsBandwidthMbps,
      this.acceleratorTypes,
      this.acceleratorCount,
      this.acceleratorManufacturers,
      this.acceleratorNames,
      this.acceleratorTotalMemoryMib,
      this.networkBandwidthGbps,
      this.allowedInstanceTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(spotMaxPricePercentageOverLowestPrice,
        r'InstanceRequirements', 'spotMaxPricePercentageOverLowestPrice');
    BuiltValueNullFieldError.checkNotNull(
        onDemandMaxPricePercentageOverLowestPrice,
        r'InstanceRequirements',
        'onDemandMaxPricePercentageOverLowestPrice');
    BuiltValueNullFieldError.checkNotNull(requireHibernateSupport,
        r'InstanceRequirements', 'requireHibernateSupport');
  }

  @override
  InstanceRequirements rebuild(
          void Function(InstanceRequirementsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceRequirementsBuilder toBuilder() =>
      new InstanceRequirementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceRequirements &&
        vCpuCount == other.vCpuCount &&
        memoryMib == other.memoryMib &&
        cpuManufacturers == other.cpuManufacturers &&
        memoryGiBPerVCpu == other.memoryGiBPerVCpu &&
        excludedInstanceTypes == other.excludedInstanceTypes &&
        instanceGenerations == other.instanceGenerations &&
        spotMaxPricePercentageOverLowestPrice ==
            other.spotMaxPricePercentageOverLowestPrice &&
        onDemandMaxPricePercentageOverLowestPrice ==
            other.onDemandMaxPricePercentageOverLowestPrice &&
        bareMetal == other.bareMetal &&
        burstablePerformance == other.burstablePerformance &&
        requireHibernateSupport == other.requireHibernateSupport &&
        networkInterfaceCount == other.networkInterfaceCount &&
        localStorage == other.localStorage &&
        localStorageTypes == other.localStorageTypes &&
        totalLocalStorageGb == other.totalLocalStorageGb &&
        baselineEbsBandwidthMbps == other.baselineEbsBandwidthMbps &&
        acceleratorTypes == other.acceleratorTypes &&
        acceleratorCount == other.acceleratorCount &&
        acceleratorManufacturers == other.acceleratorManufacturers &&
        acceleratorNames == other.acceleratorNames &&
        acceleratorTotalMemoryMib == other.acceleratorTotalMemoryMib &&
        networkBandwidthGbps == other.networkBandwidthGbps &&
        allowedInstanceTypes == other.allowedInstanceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vCpuCount.hashCode);
    _$hash = $jc(_$hash, memoryMib.hashCode);
    _$hash = $jc(_$hash, cpuManufacturers.hashCode);
    _$hash = $jc(_$hash, memoryGiBPerVCpu.hashCode);
    _$hash = $jc(_$hash, excludedInstanceTypes.hashCode);
    _$hash = $jc(_$hash, instanceGenerations.hashCode);
    _$hash = $jc(_$hash, spotMaxPricePercentageOverLowestPrice.hashCode);
    _$hash = $jc(_$hash, onDemandMaxPricePercentageOverLowestPrice.hashCode);
    _$hash = $jc(_$hash, bareMetal.hashCode);
    _$hash = $jc(_$hash, burstablePerformance.hashCode);
    _$hash = $jc(_$hash, requireHibernateSupport.hashCode);
    _$hash = $jc(_$hash, networkInterfaceCount.hashCode);
    _$hash = $jc(_$hash, localStorage.hashCode);
    _$hash = $jc(_$hash, localStorageTypes.hashCode);
    _$hash = $jc(_$hash, totalLocalStorageGb.hashCode);
    _$hash = $jc(_$hash, baselineEbsBandwidthMbps.hashCode);
    _$hash = $jc(_$hash, acceleratorTypes.hashCode);
    _$hash = $jc(_$hash, acceleratorCount.hashCode);
    _$hash = $jc(_$hash, acceleratorManufacturers.hashCode);
    _$hash = $jc(_$hash, acceleratorNames.hashCode);
    _$hash = $jc(_$hash, acceleratorTotalMemoryMib.hashCode);
    _$hash = $jc(_$hash, networkBandwidthGbps.hashCode);
    _$hash = $jc(_$hash, allowedInstanceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceRequirementsBuilder
    implements Builder<InstanceRequirements, InstanceRequirementsBuilder> {
  _$InstanceRequirements? _$v;

  VCpuCountRangeBuilder? _vCpuCount;
  VCpuCountRangeBuilder get vCpuCount =>
      _$this._vCpuCount ??= new VCpuCountRangeBuilder();
  set vCpuCount(VCpuCountRangeBuilder? vCpuCount) =>
      _$this._vCpuCount = vCpuCount;

  MemoryMibBuilder? _memoryMib;
  MemoryMibBuilder get memoryMib =>
      _$this._memoryMib ??= new MemoryMibBuilder();
  set memoryMib(MemoryMibBuilder? memoryMib) => _$this._memoryMib = memoryMib;

  _i2.ListBuilder<CpuManufacturer>? _cpuManufacturers;
  _i2.ListBuilder<CpuManufacturer> get cpuManufacturers =>
      _$this._cpuManufacturers ??= new _i2.ListBuilder<CpuManufacturer>();
  set cpuManufacturers(_i2.ListBuilder<CpuManufacturer>? cpuManufacturers) =>
      _$this._cpuManufacturers = cpuManufacturers;

  MemoryGiBPerVCpuBuilder? _memoryGiBPerVCpu;
  MemoryGiBPerVCpuBuilder get memoryGiBPerVCpu =>
      _$this._memoryGiBPerVCpu ??= new MemoryGiBPerVCpuBuilder();
  set memoryGiBPerVCpu(MemoryGiBPerVCpuBuilder? memoryGiBPerVCpu) =>
      _$this._memoryGiBPerVCpu = memoryGiBPerVCpu;

  _i2.ListBuilder<String>? _excludedInstanceTypes;
  _i2.ListBuilder<String> get excludedInstanceTypes =>
      _$this._excludedInstanceTypes ??= new _i2.ListBuilder<String>();
  set excludedInstanceTypes(_i2.ListBuilder<String>? excludedInstanceTypes) =>
      _$this._excludedInstanceTypes = excludedInstanceTypes;

  _i2.ListBuilder<InstanceGeneration>? _instanceGenerations;
  _i2.ListBuilder<InstanceGeneration> get instanceGenerations =>
      _$this._instanceGenerations ??= new _i2.ListBuilder<InstanceGeneration>();
  set instanceGenerations(
          _i2.ListBuilder<InstanceGeneration>? instanceGenerations) =>
      _$this._instanceGenerations = instanceGenerations;

  int? _spotMaxPricePercentageOverLowestPrice;
  int? get spotMaxPricePercentageOverLowestPrice =>
      _$this._spotMaxPricePercentageOverLowestPrice;
  set spotMaxPricePercentageOverLowestPrice(
          int? spotMaxPricePercentageOverLowestPrice) =>
      _$this._spotMaxPricePercentageOverLowestPrice =
          spotMaxPricePercentageOverLowestPrice;

  int? _onDemandMaxPricePercentageOverLowestPrice;
  int? get onDemandMaxPricePercentageOverLowestPrice =>
      _$this._onDemandMaxPricePercentageOverLowestPrice;
  set onDemandMaxPricePercentageOverLowestPrice(
          int? onDemandMaxPricePercentageOverLowestPrice) =>
      _$this._onDemandMaxPricePercentageOverLowestPrice =
          onDemandMaxPricePercentageOverLowestPrice;

  BareMetal? _bareMetal;
  BareMetal? get bareMetal => _$this._bareMetal;
  set bareMetal(BareMetal? bareMetal) => _$this._bareMetal = bareMetal;

  BurstablePerformance? _burstablePerformance;
  BurstablePerformance? get burstablePerformance =>
      _$this._burstablePerformance;
  set burstablePerformance(BurstablePerformance? burstablePerformance) =>
      _$this._burstablePerformance = burstablePerformance;

  bool? _requireHibernateSupport;
  bool? get requireHibernateSupport => _$this._requireHibernateSupport;
  set requireHibernateSupport(bool? requireHibernateSupport) =>
      _$this._requireHibernateSupport = requireHibernateSupport;

  NetworkInterfaceCountBuilder? _networkInterfaceCount;
  NetworkInterfaceCountBuilder get networkInterfaceCount =>
      _$this._networkInterfaceCount ??= new NetworkInterfaceCountBuilder();
  set networkInterfaceCount(
          NetworkInterfaceCountBuilder? networkInterfaceCount) =>
      _$this._networkInterfaceCount = networkInterfaceCount;

  LocalStorage? _localStorage;
  LocalStorage? get localStorage => _$this._localStorage;
  set localStorage(LocalStorage? localStorage) =>
      _$this._localStorage = localStorage;

  _i2.ListBuilder<LocalStorageType>? _localStorageTypes;
  _i2.ListBuilder<LocalStorageType> get localStorageTypes =>
      _$this._localStorageTypes ??= new _i2.ListBuilder<LocalStorageType>();
  set localStorageTypes(_i2.ListBuilder<LocalStorageType>? localStorageTypes) =>
      _$this._localStorageTypes = localStorageTypes;

  TotalLocalStorageGbBuilder? _totalLocalStorageGb;
  TotalLocalStorageGbBuilder get totalLocalStorageGb =>
      _$this._totalLocalStorageGb ??= new TotalLocalStorageGbBuilder();
  set totalLocalStorageGb(TotalLocalStorageGbBuilder? totalLocalStorageGb) =>
      _$this._totalLocalStorageGb = totalLocalStorageGb;

  BaselineEbsBandwidthMbpsBuilder? _baselineEbsBandwidthMbps;
  BaselineEbsBandwidthMbpsBuilder get baselineEbsBandwidthMbps =>
      _$this._baselineEbsBandwidthMbps ??=
          new BaselineEbsBandwidthMbpsBuilder();
  set baselineEbsBandwidthMbps(
          BaselineEbsBandwidthMbpsBuilder? baselineEbsBandwidthMbps) =>
      _$this._baselineEbsBandwidthMbps = baselineEbsBandwidthMbps;

  _i2.ListBuilder<AcceleratorType>? _acceleratorTypes;
  _i2.ListBuilder<AcceleratorType> get acceleratorTypes =>
      _$this._acceleratorTypes ??= new _i2.ListBuilder<AcceleratorType>();
  set acceleratorTypes(_i2.ListBuilder<AcceleratorType>? acceleratorTypes) =>
      _$this._acceleratorTypes = acceleratorTypes;

  AcceleratorCountBuilder? _acceleratorCount;
  AcceleratorCountBuilder get acceleratorCount =>
      _$this._acceleratorCount ??= new AcceleratorCountBuilder();
  set acceleratorCount(AcceleratorCountBuilder? acceleratorCount) =>
      _$this._acceleratorCount = acceleratorCount;

  _i2.ListBuilder<AcceleratorManufacturer>? _acceleratorManufacturers;
  _i2.ListBuilder<AcceleratorManufacturer> get acceleratorManufacturers =>
      _$this._acceleratorManufacturers ??=
          new _i2.ListBuilder<AcceleratorManufacturer>();
  set acceleratorManufacturers(
          _i2.ListBuilder<AcceleratorManufacturer>? acceleratorManufacturers) =>
      _$this._acceleratorManufacturers = acceleratorManufacturers;

  _i2.ListBuilder<AcceleratorName>? _acceleratorNames;
  _i2.ListBuilder<AcceleratorName> get acceleratorNames =>
      _$this._acceleratorNames ??= new _i2.ListBuilder<AcceleratorName>();
  set acceleratorNames(_i2.ListBuilder<AcceleratorName>? acceleratorNames) =>
      _$this._acceleratorNames = acceleratorNames;

  AcceleratorTotalMemoryMibBuilder? _acceleratorTotalMemoryMib;
  AcceleratorTotalMemoryMibBuilder get acceleratorTotalMemoryMib =>
      _$this._acceleratorTotalMemoryMib ??=
          new AcceleratorTotalMemoryMibBuilder();
  set acceleratorTotalMemoryMib(
          AcceleratorTotalMemoryMibBuilder? acceleratorTotalMemoryMib) =>
      _$this._acceleratorTotalMemoryMib = acceleratorTotalMemoryMib;

  NetworkBandwidthGbpsBuilder? _networkBandwidthGbps;
  NetworkBandwidthGbpsBuilder get networkBandwidthGbps =>
      _$this._networkBandwidthGbps ??= new NetworkBandwidthGbpsBuilder();
  set networkBandwidthGbps(NetworkBandwidthGbpsBuilder? networkBandwidthGbps) =>
      _$this._networkBandwidthGbps = networkBandwidthGbps;

  _i2.ListBuilder<String>? _allowedInstanceTypes;
  _i2.ListBuilder<String> get allowedInstanceTypes =>
      _$this._allowedInstanceTypes ??= new _i2.ListBuilder<String>();
  set allowedInstanceTypes(_i2.ListBuilder<String>? allowedInstanceTypes) =>
      _$this._allowedInstanceTypes = allowedInstanceTypes;

  InstanceRequirementsBuilder() {
    InstanceRequirements._init(this);
  }

  InstanceRequirementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vCpuCount = $v.vCpuCount?.toBuilder();
      _memoryMib = $v.memoryMib?.toBuilder();
      _cpuManufacturers = $v.cpuManufacturers?.toBuilder();
      _memoryGiBPerVCpu = $v.memoryGiBPerVCpu?.toBuilder();
      _excludedInstanceTypes = $v.excludedInstanceTypes?.toBuilder();
      _instanceGenerations = $v.instanceGenerations?.toBuilder();
      _spotMaxPricePercentageOverLowestPrice =
          $v.spotMaxPricePercentageOverLowestPrice;
      _onDemandMaxPricePercentageOverLowestPrice =
          $v.onDemandMaxPricePercentageOverLowestPrice;
      _bareMetal = $v.bareMetal;
      _burstablePerformance = $v.burstablePerformance;
      _requireHibernateSupport = $v.requireHibernateSupport;
      _networkInterfaceCount = $v.networkInterfaceCount?.toBuilder();
      _localStorage = $v.localStorage;
      _localStorageTypes = $v.localStorageTypes?.toBuilder();
      _totalLocalStorageGb = $v.totalLocalStorageGb?.toBuilder();
      _baselineEbsBandwidthMbps = $v.baselineEbsBandwidthMbps?.toBuilder();
      _acceleratorTypes = $v.acceleratorTypes?.toBuilder();
      _acceleratorCount = $v.acceleratorCount?.toBuilder();
      _acceleratorManufacturers = $v.acceleratorManufacturers?.toBuilder();
      _acceleratorNames = $v.acceleratorNames?.toBuilder();
      _acceleratorTotalMemoryMib = $v.acceleratorTotalMemoryMib?.toBuilder();
      _networkBandwidthGbps = $v.networkBandwidthGbps?.toBuilder();
      _allowedInstanceTypes = $v.allowedInstanceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceRequirements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceRequirements;
  }

  @override
  void update(void Function(InstanceRequirementsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceRequirements build() => _build();

  _$InstanceRequirements _build() {
    _$InstanceRequirements _$result;
    try {
      _$result = _$v ??
          new _$InstanceRequirements._(
              vCpuCount: _vCpuCount?.build(),
              memoryMib: _memoryMib?.build(),
              cpuManufacturers: _cpuManufacturers?.build(),
              memoryGiBPerVCpu: _memoryGiBPerVCpu?.build(),
              excludedInstanceTypes: _excludedInstanceTypes?.build(),
              instanceGenerations: _instanceGenerations?.build(),
              spotMaxPricePercentageOverLowestPrice:
                  BuiltValueNullFieldError.checkNotNull(
                      spotMaxPricePercentageOverLowestPrice,
                      r'InstanceRequirements',
                      'spotMaxPricePercentageOverLowestPrice'),
              onDemandMaxPricePercentageOverLowestPrice:
                  BuiltValueNullFieldError.checkNotNull(
                      onDemandMaxPricePercentageOverLowestPrice,
                      r'InstanceRequirements',
                      'onDemandMaxPricePercentageOverLowestPrice'),
              bareMetal: bareMetal,
              burstablePerformance: burstablePerformance,
              requireHibernateSupport: BuiltValueNullFieldError.checkNotNull(
                  requireHibernateSupport,
                  r'InstanceRequirements',
                  'requireHibernateSupport'),
              networkInterfaceCount: _networkInterfaceCount?.build(),
              localStorage: localStorage,
              localStorageTypes: _localStorageTypes?.build(),
              totalLocalStorageGb: _totalLocalStorageGb?.build(),
              baselineEbsBandwidthMbps: _baselineEbsBandwidthMbps?.build(),
              acceleratorTypes: _acceleratorTypes?.build(),
              acceleratorCount: _acceleratorCount?.build(),
              acceleratorManufacturers: _acceleratorManufacturers?.build(),
              acceleratorNames: _acceleratorNames?.build(),
              acceleratorTotalMemoryMib: _acceleratorTotalMemoryMib?.build(),
              networkBandwidthGbps: _networkBandwidthGbps?.build(),
              allowedInstanceTypes: _allowedInstanceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vCpuCount';
        _vCpuCount?.build();
        _$failedField = 'memoryMib';
        _memoryMib?.build();
        _$failedField = 'cpuManufacturers';
        _cpuManufacturers?.build();
        _$failedField = 'memoryGiBPerVCpu';
        _memoryGiBPerVCpu?.build();
        _$failedField = 'excludedInstanceTypes';
        _excludedInstanceTypes?.build();
        _$failedField = 'instanceGenerations';
        _instanceGenerations?.build();

        _$failedField = 'networkInterfaceCount';
        _networkInterfaceCount?.build();

        _$failedField = 'localStorageTypes';
        _localStorageTypes?.build();
        _$failedField = 'totalLocalStorageGb';
        _totalLocalStorageGb?.build();
        _$failedField = 'baselineEbsBandwidthMbps';
        _baselineEbsBandwidthMbps?.build();
        _$failedField = 'acceleratorTypes';
        _acceleratorTypes?.build();
        _$failedField = 'acceleratorCount';
        _acceleratorCount?.build();
        _$failedField = 'acceleratorManufacturers';
        _acceleratorManufacturers?.build();
        _$failedField = 'acceleratorNames';
        _acceleratorNames?.build();
        _$failedField = 'acceleratorTotalMemoryMib';
        _acceleratorTotalMemoryMib?.build();
        _$failedField = 'networkBandwidthGbps';
        _networkBandwidthGbps?.build();
        _$failedField = 'allowedInstanceTypes';
        _allowedInstanceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceRequirements', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
