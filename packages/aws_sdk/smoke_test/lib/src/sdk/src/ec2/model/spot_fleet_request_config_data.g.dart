// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_fleet_request_config_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotFleetRequestConfigData extends SpotFleetRequestConfigData {
  @override
  final AllocationStrategy? allocationStrategy;
  @override
  final OnDemandAllocationStrategy? onDemandAllocationStrategy;
  @override
  final SpotMaintenanceStrategies? spotMaintenanceStrategies;
  @override
  final String? clientToken;
  @override
  final ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy;
  @override
  final double fulfilledCapacity;
  @override
  final double onDemandFulfilledCapacity;
  @override
  final String? iamFleetRole;
  @override
  final _i2.BuiltList<SpotFleetLaunchSpecification>? launchSpecifications;
  @override
  final _i2.BuiltList<LaunchTemplateConfig>? launchTemplateConfigs;
  @override
  final String? spotPrice;
  @override
  final int targetCapacity;
  @override
  final int onDemandTargetCapacity;
  @override
  final String? onDemandMaxTotalPrice;
  @override
  final String? spotMaxTotalPrice;
  @override
  final bool terminateInstancesWithExpiration;
  @override
  final FleetType? type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final bool replaceUnhealthyInstances;
  @override
  final InstanceInterruptionBehavior? instanceInterruptionBehavior;
  @override
  final LoadBalancersConfig? loadBalancersConfig;
  @override
  final int instancePoolsToUseCount;
  @override
  final String? context;
  @override
  final TargetCapacityUnitType? targetCapacityUnitType;
  @override
  final _i2.BuiltList<TagSpecification>? tagSpecifications;

  factory _$SpotFleetRequestConfigData(
          [void Function(SpotFleetRequestConfigDataBuilder)? updates]) =>
      (new SpotFleetRequestConfigDataBuilder()..update(updates))._build();

  _$SpotFleetRequestConfigData._(
      {this.allocationStrategy,
      this.onDemandAllocationStrategy,
      this.spotMaintenanceStrategies,
      this.clientToken,
      this.excessCapacityTerminationPolicy,
      required this.fulfilledCapacity,
      required this.onDemandFulfilledCapacity,
      this.iamFleetRole,
      this.launchSpecifications,
      this.launchTemplateConfigs,
      this.spotPrice,
      required this.targetCapacity,
      required this.onDemandTargetCapacity,
      this.onDemandMaxTotalPrice,
      this.spotMaxTotalPrice,
      required this.terminateInstancesWithExpiration,
      this.type,
      this.validFrom,
      this.validUntil,
      required this.replaceUnhealthyInstances,
      this.instanceInterruptionBehavior,
      this.loadBalancersConfig,
      required this.instancePoolsToUseCount,
      this.context,
      this.targetCapacityUnitType,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fulfilledCapacity, r'SpotFleetRequestConfigData', 'fulfilledCapacity');
    BuiltValueNullFieldError.checkNotNull(onDemandFulfilledCapacity,
        r'SpotFleetRequestConfigData', 'onDemandFulfilledCapacity');
    BuiltValueNullFieldError.checkNotNull(
        targetCapacity, r'SpotFleetRequestConfigData', 'targetCapacity');
    BuiltValueNullFieldError.checkNotNull(onDemandTargetCapacity,
        r'SpotFleetRequestConfigData', 'onDemandTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(terminateInstancesWithExpiration,
        r'SpotFleetRequestConfigData', 'terminateInstancesWithExpiration');
    BuiltValueNullFieldError.checkNotNull(replaceUnhealthyInstances,
        r'SpotFleetRequestConfigData', 'replaceUnhealthyInstances');
    BuiltValueNullFieldError.checkNotNull(instancePoolsToUseCount,
        r'SpotFleetRequestConfigData', 'instancePoolsToUseCount');
  }

  @override
  SpotFleetRequestConfigData rebuild(
          void Function(SpotFleetRequestConfigDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotFleetRequestConfigDataBuilder toBuilder() =>
      new SpotFleetRequestConfigDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotFleetRequestConfigData &&
        allocationStrategy == other.allocationStrategy &&
        onDemandAllocationStrategy == other.onDemandAllocationStrategy &&
        spotMaintenanceStrategies == other.spotMaintenanceStrategies &&
        clientToken == other.clientToken &&
        excessCapacityTerminationPolicy ==
            other.excessCapacityTerminationPolicy &&
        fulfilledCapacity == other.fulfilledCapacity &&
        onDemandFulfilledCapacity == other.onDemandFulfilledCapacity &&
        iamFleetRole == other.iamFleetRole &&
        launchSpecifications == other.launchSpecifications &&
        launchTemplateConfigs == other.launchTemplateConfigs &&
        spotPrice == other.spotPrice &&
        targetCapacity == other.targetCapacity &&
        onDemandTargetCapacity == other.onDemandTargetCapacity &&
        onDemandMaxTotalPrice == other.onDemandMaxTotalPrice &&
        spotMaxTotalPrice == other.spotMaxTotalPrice &&
        terminateInstancesWithExpiration ==
            other.terminateInstancesWithExpiration &&
        type == other.type &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        replaceUnhealthyInstances == other.replaceUnhealthyInstances &&
        instanceInterruptionBehavior == other.instanceInterruptionBehavior &&
        loadBalancersConfig == other.loadBalancersConfig &&
        instancePoolsToUseCount == other.instancePoolsToUseCount &&
        context == other.context &&
        targetCapacityUnitType == other.targetCapacityUnitType &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, onDemandAllocationStrategy.hashCode);
    _$hash = $jc(_$hash, spotMaintenanceStrategies.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, excessCapacityTerminationPolicy.hashCode);
    _$hash = $jc(_$hash, fulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, onDemandFulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, iamFleetRole.hashCode);
    _$hash = $jc(_$hash, launchSpecifications.hashCode);
    _$hash = $jc(_$hash, launchTemplateConfigs.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, targetCapacity.hashCode);
    _$hash = $jc(_$hash, onDemandTargetCapacity.hashCode);
    _$hash = $jc(_$hash, onDemandMaxTotalPrice.hashCode);
    _$hash = $jc(_$hash, spotMaxTotalPrice.hashCode);
    _$hash = $jc(_$hash, terminateInstancesWithExpiration.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, replaceUnhealthyInstances.hashCode);
    _$hash = $jc(_$hash, instanceInterruptionBehavior.hashCode);
    _$hash = $jc(_$hash, loadBalancersConfig.hashCode);
    _$hash = $jc(_$hash, instancePoolsToUseCount.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, targetCapacityUnitType.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotFleetRequestConfigDataBuilder
    implements
        Builder<SpotFleetRequestConfigData, SpotFleetRequestConfigDataBuilder> {
  _$SpotFleetRequestConfigData? _$v;

  AllocationStrategy? _allocationStrategy;
  AllocationStrategy? get allocationStrategy => _$this._allocationStrategy;
  set allocationStrategy(AllocationStrategy? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  OnDemandAllocationStrategy? _onDemandAllocationStrategy;
  OnDemandAllocationStrategy? get onDemandAllocationStrategy =>
      _$this._onDemandAllocationStrategy;
  set onDemandAllocationStrategy(
          OnDemandAllocationStrategy? onDemandAllocationStrategy) =>
      _$this._onDemandAllocationStrategy = onDemandAllocationStrategy;

  SpotMaintenanceStrategiesBuilder? _spotMaintenanceStrategies;
  SpotMaintenanceStrategiesBuilder get spotMaintenanceStrategies =>
      _$this._spotMaintenanceStrategies ??=
          new SpotMaintenanceStrategiesBuilder();
  set spotMaintenanceStrategies(
          SpotMaintenanceStrategiesBuilder? spotMaintenanceStrategies) =>
      _$this._spotMaintenanceStrategies = spotMaintenanceStrategies;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  ExcessCapacityTerminationPolicy? _excessCapacityTerminationPolicy;
  ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy =>
      _$this._excessCapacityTerminationPolicy;
  set excessCapacityTerminationPolicy(
          ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy) =>
      _$this._excessCapacityTerminationPolicy = excessCapacityTerminationPolicy;

  double? _fulfilledCapacity;
  double? get fulfilledCapacity => _$this._fulfilledCapacity;
  set fulfilledCapacity(double? fulfilledCapacity) =>
      _$this._fulfilledCapacity = fulfilledCapacity;

  double? _onDemandFulfilledCapacity;
  double? get onDemandFulfilledCapacity => _$this._onDemandFulfilledCapacity;
  set onDemandFulfilledCapacity(double? onDemandFulfilledCapacity) =>
      _$this._onDemandFulfilledCapacity = onDemandFulfilledCapacity;

  String? _iamFleetRole;
  String? get iamFleetRole => _$this._iamFleetRole;
  set iamFleetRole(String? iamFleetRole) => _$this._iamFleetRole = iamFleetRole;

  _i2.ListBuilder<SpotFleetLaunchSpecification>? _launchSpecifications;
  _i2.ListBuilder<SpotFleetLaunchSpecification> get launchSpecifications =>
      _$this._launchSpecifications ??=
          new _i2.ListBuilder<SpotFleetLaunchSpecification>();
  set launchSpecifications(
          _i2.ListBuilder<SpotFleetLaunchSpecification>?
              launchSpecifications) =>
      _$this._launchSpecifications = launchSpecifications;

  _i2.ListBuilder<LaunchTemplateConfig>? _launchTemplateConfigs;
  _i2.ListBuilder<LaunchTemplateConfig> get launchTemplateConfigs =>
      _$this._launchTemplateConfigs ??=
          new _i2.ListBuilder<LaunchTemplateConfig>();
  set launchTemplateConfigs(
          _i2.ListBuilder<LaunchTemplateConfig>? launchTemplateConfigs) =>
      _$this._launchTemplateConfigs = launchTemplateConfigs;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

  int? _targetCapacity;
  int? get targetCapacity => _$this._targetCapacity;
  set targetCapacity(int? targetCapacity) =>
      _$this._targetCapacity = targetCapacity;

  int? _onDemandTargetCapacity;
  int? get onDemandTargetCapacity => _$this._onDemandTargetCapacity;
  set onDemandTargetCapacity(int? onDemandTargetCapacity) =>
      _$this._onDemandTargetCapacity = onDemandTargetCapacity;

  String? _onDemandMaxTotalPrice;
  String? get onDemandMaxTotalPrice => _$this._onDemandMaxTotalPrice;
  set onDemandMaxTotalPrice(String? onDemandMaxTotalPrice) =>
      _$this._onDemandMaxTotalPrice = onDemandMaxTotalPrice;

  String? _spotMaxTotalPrice;
  String? get spotMaxTotalPrice => _$this._spotMaxTotalPrice;
  set spotMaxTotalPrice(String? spotMaxTotalPrice) =>
      _$this._spotMaxTotalPrice = spotMaxTotalPrice;

  bool? _terminateInstancesWithExpiration;
  bool? get terminateInstancesWithExpiration =>
      _$this._terminateInstancesWithExpiration;
  set terminateInstancesWithExpiration(
          bool? terminateInstancesWithExpiration) =>
      _$this._terminateInstancesWithExpiration =
          terminateInstancesWithExpiration;

  FleetType? _type;
  FleetType? get type => _$this._type;
  set type(FleetType? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _replaceUnhealthyInstances;
  bool? get replaceUnhealthyInstances => _$this._replaceUnhealthyInstances;
  set replaceUnhealthyInstances(bool? replaceUnhealthyInstances) =>
      _$this._replaceUnhealthyInstances = replaceUnhealthyInstances;

  InstanceInterruptionBehavior? _instanceInterruptionBehavior;
  InstanceInterruptionBehavior? get instanceInterruptionBehavior =>
      _$this._instanceInterruptionBehavior;
  set instanceInterruptionBehavior(
          InstanceInterruptionBehavior? instanceInterruptionBehavior) =>
      _$this._instanceInterruptionBehavior = instanceInterruptionBehavior;

  LoadBalancersConfigBuilder? _loadBalancersConfig;
  LoadBalancersConfigBuilder get loadBalancersConfig =>
      _$this._loadBalancersConfig ??= new LoadBalancersConfigBuilder();
  set loadBalancersConfig(LoadBalancersConfigBuilder? loadBalancersConfig) =>
      _$this._loadBalancersConfig = loadBalancersConfig;

  int? _instancePoolsToUseCount;
  int? get instancePoolsToUseCount => _$this._instancePoolsToUseCount;
  set instancePoolsToUseCount(int? instancePoolsToUseCount) =>
      _$this._instancePoolsToUseCount = instancePoolsToUseCount;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  TargetCapacityUnitType? _targetCapacityUnitType;
  TargetCapacityUnitType? get targetCapacityUnitType =>
      _$this._targetCapacityUnitType;
  set targetCapacityUnitType(TargetCapacityUnitType? targetCapacityUnitType) =>
      _$this._targetCapacityUnitType = targetCapacityUnitType;

  _i2.ListBuilder<TagSpecification>? _tagSpecifications;
  _i2.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i2.ListBuilder<TagSpecification>();
  set tagSpecifications(_i2.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  SpotFleetRequestConfigDataBuilder() {
    SpotFleetRequestConfigData._init(this);
  }

  SpotFleetRequestConfigDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationStrategy = $v.allocationStrategy;
      _onDemandAllocationStrategy = $v.onDemandAllocationStrategy;
      _spotMaintenanceStrategies = $v.spotMaintenanceStrategies?.toBuilder();
      _clientToken = $v.clientToken;
      _excessCapacityTerminationPolicy = $v.excessCapacityTerminationPolicy;
      _fulfilledCapacity = $v.fulfilledCapacity;
      _onDemandFulfilledCapacity = $v.onDemandFulfilledCapacity;
      _iamFleetRole = $v.iamFleetRole;
      _launchSpecifications = $v.launchSpecifications?.toBuilder();
      _launchTemplateConfigs = $v.launchTemplateConfigs?.toBuilder();
      _spotPrice = $v.spotPrice;
      _targetCapacity = $v.targetCapacity;
      _onDemandTargetCapacity = $v.onDemandTargetCapacity;
      _onDemandMaxTotalPrice = $v.onDemandMaxTotalPrice;
      _spotMaxTotalPrice = $v.spotMaxTotalPrice;
      _terminateInstancesWithExpiration = $v.terminateInstancesWithExpiration;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _replaceUnhealthyInstances = $v.replaceUnhealthyInstances;
      _instanceInterruptionBehavior = $v.instanceInterruptionBehavior;
      _loadBalancersConfig = $v.loadBalancersConfig?.toBuilder();
      _instancePoolsToUseCount = $v.instancePoolsToUseCount;
      _context = $v.context;
      _targetCapacityUnitType = $v.targetCapacityUnitType;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotFleetRequestConfigData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotFleetRequestConfigData;
  }

  @override
  void update(void Function(SpotFleetRequestConfigDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotFleetRequestConfigData build() => _build();

  _$SpotFleetRequestConfigData _build() {
    _$SpotFleetRequestConfigData _$result;
    try {
      _$result = _$v ??
          new _$SpotFleetRequestConfigData._(
              allocationStrategy: allocationStrategy,
              onDemandAllocationStrategy: onDemandAllocationStrategy,
              spotMaintenanceStrategies: _spotMaintenanceStrategies?.build(),
              clientToken: clientToken,
              excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
              fulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                  fulfilledCapacity, r'SpotFleetRequestConfigData', 'fulfilledCapacity'),
              onDemandFulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                  onDemandFulfilledCapacity, r'SpotFleetRequestConfigData', 'onDemandFulfilledCapacity'),
              iamFleetRole: iamFleetRole,
              launchSpecifications: _launchSpecifications?.build(),
              launchTemplateConfigs: _launchTemplateConfigs?.build(),
              spotPrice: spotPrice,
              targetCapacity: BuiltValueNullFieldError.checkNotNull(
                  targetCapacity, r'SpotFleetRequestConfigData', 'targetCapacity'),
              onDemandTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  onDemandTargetCapacity, r'SpotFleetRequestConfigData', 'onDemandTargetCapacity'),
              onDemandMaxTotalPrice: onDemandMaxTotalPrice,
              spotMaxTotalPrice: spotMaxTotalPrice,
              terminateInstancesWithExpiration: BuiltValueNullFieldError.checkNotNull(
                  terminateInstancesWithExpiration,
                  r'SpotFleetRequestConfigData',
                  'terminateInstancesWithExpiration'),
              type: type,
              validFrom: validFrom,
              validUntil: validUntil,
              replaceUnhealthyInstances: BuiltValueNullFieldError.checkNotNull(
                  replaceUnhealthyInstances,
                  r'SpotFleetRequestConfigData',
                  'replaceUnhealthyInstances'),
              instanceInterruptionBehavior: instanceInterruptionBehavior,
              loadBalancersConfig: _loadBalancersConfig?.build(),
              instancePoolsToUseCount: BuiltValueNullFieldError.checkNotNull(instancePoolsToUseCount, r'SpotFleetRequestConfigData', 'instancePoolsToUseCount'),
              context: context,
              targetCapacityUnitType: targetCapacityUnitType,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotMaintenanceStrategies';
        _spotMaintenanceStrategies?.build();

        _$failedField = 'launchSpecifications';
        _launchSpecifications?.build();
        _$failedField = 'launchTemplateConfigs';
        _launchTemplateConfigs?.build();

        _$failedField = 'loadBalancersConfig';
        _loadBalancersConfig?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotFleetRequestConfigData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
