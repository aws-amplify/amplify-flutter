// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotOptionsRequest extends SpotOptionsRequest {
  @override
  final SpotAllocationStrategy? allocationStrategy;
  @override
  final FleetSpotMaintenanceStrategiesRequest? maintenanceStrategies;
  @override
  final SpotInstanceInterruptionBehavior? instanceInterruptionBehavior;
  @override
  final int instancePoolsToUseCount;
  @override
  final bool singleInstanceType;
  @override
  final bool singleAvailabilityZone;
  @override
  final int minTargetCapacity;
  @override
  final String? maxTotalPrice;

  factory _$SpotOptionsRequest(
          [void Function(SpotOptionsRequestBuilder)? updates]) =>
      (new SpotOptionsRequestBuilder()..update(updates))._build();

  _$SpotOptionsRequest._(
      {this.allocationStrategy,
      this.maintenanceStrategies,
      this.instanceInterruptionBehavior,
      required this.instancePoolsToUseCount,
      required this.singleInstanceType,
      required this.singleAvailabilityZone,
      required this.minTargetCapacity,
      this.maxTotalPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instancePoolsToUseCount,
        r'SpotOptionsRequest', 'instancePoolsToUseCount');
    BuiltValueNullFieldError.checkNotNull(
        singleInstanceType, r'SpotOptionsRequest', 'singleInstanceType');
    BuiltValueNullFieldError.checkNotNull(singleAvailabilityZone,
        r'SpotOptionsRequest', 'singleAvailabilityZone');
    BuiltValueNullFieldError.checkNotNull(
        minTargetCapacity, r'SpotOptionsRequest', 'minTargetCapacity');
  }

  @override
  SpotOptionsRequest rebuild(
          void Function(SpotOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotOptionsRequestBuilder toBuilder() =>
      new SpotOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotOptionsRequest &&
        allocationStrategy == other.allocationStrategy &&
        maintenanceStrategies == other.maintenanceStrategies &&
        instanceInterruptionBehavior == other.instanceInterruptionBehavior &&
        instancePoolsToUseCount == other.instancePoolsToUseCount &&
        singleInstanceType == other.singleInstanceType &&
        singleAvailabilityZone == other.singleAvailabilityZone &&
        minTargetCapacity == other.minTargetCapacity &&
        maxTotalPrice == other.maxTotalPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, maintenanceStrategies.hashCode);
    _$hash = $jc(_$hash, instanceInterruptionBehavior.hashCode);
    _$hash = $jc(_$hash, instancePoolsToUseCount.hashCode);
    _$hash = $jc(_$hash, singleInstanceType.hashCode);
    _$hash = $jc(_$hash, singleAvailabilityZone.hashCode);
    _$hash = $jc(_$hash, minTargetCapacity.hashCode);
    _$hash = $jc(_$hash, maxTotalPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotOptionsRequestBuilder
    implements Builder<SpotOptionsRequest, SpotOptionsRequestBuilder> {
  _$SpotOptionsRequest? _$v;

  SpotAllocationStrategy? _allocationStrategy;
  SpotAllocationStrategy? get allocationStrategy => _$this._allocationStrategy;
  set allocationStrategy(SpotAllocationStrategy? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  FleetSpotMaintenanceStrategiesRequestBuilder? _maintenanceStrategies;
  FleetSpotMaintenanceStrategiesRequestBuilder get maintenanceStrategies =>
      _$this._maintenanceStrategies ??=
          new FleetSpotMaintenanceStrategiesRequestBuilder();
  set maintenanceStrategies(
          FleetSpotMaintenanceStrategiesRequestBuilder?
              maintenanceStrategies) =>
      _$this._maintenanceStrategies = maintenanceStrategies;

  SpotInstanceInterruptionBehavior? _instanceInterruptionBehavior;
  SpotInstanceInterruptionBehavior? get instanceInterruptionBehavior =>
      _$this._instanceInterruptionBehavior;
  set instanceInterruptionBehavior(
          SpotInstanceInterruptionBehavior? instanceInterruptionBehavior) =>
      _$this._instanceInterruptionBehavior = instanceInterruptionBehavior;

  int? _instancePoolsToUseCount;
  int? get instancePoolsToUseCount => _$this._instancePoolsToUseCount;
  set instancePoolsToUseCount(int? instancePoolsToUseCount) =>
      _$this._instancePoolsToUseCount = instancePoolsToUseCount;

  bool? _singleInstanceType;
  bool? get singleInstanceType => _$this._singleInstanceType;
  set singleInstanceType(bool? singleInstanceType) =>
      _$this._singleInstanceType = singleInstanceType;

  bool? _singleAvailabilityZone;
  bool? get singleAvailabilityZone => _$this._singleAvailabilityZone;
  set singleAvailabilityZone(bool? singleAvailabilityZone) =>
      _$this._singleAvailabilityZone = singleAvailabilityZone;

  int? _minTargetCapacity;
  int? get minTargetCapacity => _$this._minTargetCapacity;
  set minTargetCapacity(int? minTargetCapacity) =>
      _$this._minTargetCapacity = minTargetCapacity;

  String? _maxTotalPrice;
  String? get maxTotalPrice => _$this._maxTotalPrice;
  set maxTotalPrice(String? maxTotalPrice) =>
      _$this._maxTotalPrice = maxTotalPrice;

  SpotOptionsRequestBuilder() {
    SpotOptionsRequest._init(this);
  }

  SpotOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationStrategy = $v.allocationStrategy;
      _maintenanceStrategies = $v.maintenanceStrategies?.toBuilder();
      _instanceInterruptionBehavior = $v.instanceInterruptionBehavior;
      _instancePoolsToUseCount = $v.instancePoolsToUseCount;
      _singleInstanceType = $v.singleInstanceType;
      _singleAvailabilityZone = $v.singleAvailabilityZone;
      _minTargetCapacity = $v.minTargetCapacity;
      _maxTotalPrice = $v.maxTotalPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotOptionsRequest;
  }

  @override
  void update(void Function(SpotOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotOptionsRequest build() => _build();

  _$SpotOptionsRequest _build() {
    _$SpotOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$SpotOptionsRequest._(
              allocationStrategy: allocationStrategy,
              maintenanceStrategies: _maintenanceStrategies?.build(),
              instanceInterruptionBehavior: instanceInterruptionBehavior,
              instancePoolsToUseCount: BuiltValueNullFieldError.checkNotNull(
                  instancePoolsToUseCount,
                  r'SpotOptionsRequest',
                  'instancePoolsToUseCount'),
              singleInstanceType: BuiltValueNullFieldError.checkNotNull(
                  singleInstanceType,
                  r'SpotOptionsRequest',
                  'singleInstanceType'),
              singleAvailabilityZone: BuiltValueNullFieldError.checkNotNull(
                  singleAvailabilityZone,
                  r'SpotOptionsRequest',
                  'singleAvailabilityZone'),
              minTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  minTargetCapacity,
                  r'SpotOptionsRequest',
                  'minTargetCapacity'),
              maxTotalPrice: maxTotalPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'maintenanceStrategies';
        _maintenanceStrategies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
