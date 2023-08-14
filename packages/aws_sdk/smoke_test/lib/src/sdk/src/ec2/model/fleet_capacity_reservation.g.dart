// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_capacity_reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetCapacityReservation extends FleetCapacityReservation {
  @override
  final String? capacityReservationId;
  @override
  final String? availabilityZoneId;
  @override
  final InstanceType? instanceType;
  @override
  final CapacityReservationInstancePlatform? instancePlatform;
  @override
  final String? availabilityZone;
  @override
  final int totalInstanceCount;
  @override
  final double fulfilledCapacity;
  @override
  final bool ebsOptimized;
  @override
  final DateTime? createDate;
  @override
  final double? weight;
  @override
  final int? priority;

  factory _$FleetCapacityReservation(
          [void Function(FleetCapacityReservationBuilder)? updates]) =>
      (new FleetCapacityReservationBuilder()..update(updates))._build();

  _$FleetCapacityReservation._(
      {this.capacityReservationId,
      this.availabilityZoneId,
      this.instanceType,
      this.instancePlatform,
      this.availabilityZone,
      required this.totalInstanceCount,
      required this.fulfilledCapacity,
      required this.ebsOptimized,
      this.createDate,
      this.weight,
      this.priority})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalInstanceCount, r'FleetCapacityReservation', 'totalInstanceCount');
    BuiltValueNullFieldError.checkNotNull(
        fulfilledCapacity, r'FleetCapacityReservation', 'fulfilledCapacity');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'FleetCapacityReservation', 'ebsOptimized');
  }

  @override
  FleetCapacityReservation rebuild(
          void Function(FleetCapacityReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetCapacityReservationBuilder toBuilder() =>
      new FleetCapacityReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetCapacityReservation &&
        capacityReservationId == other.capacityReservationId &&
        availabilityZoneId == other.availabilityZoneId &&
        instanceType == other.instanceType &&
        instancePlatform == other.instancePlatform &&
        availabilityZone == other.availabilityZone &&
        totalInstanceCount == other.totalInstanceCount &&
        fulfilledCapacity == other.fulfilledCapacity &&
        ebsOptimized == other.ebsOptimized &&
        createDate == other.createDate &&
        weight == other.weight &&
        priority == other.priority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instancePlatform.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, totalInstanceCount.hashCode);
    _$hash = $jc(_$hash, fulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetCapacityReservationBuilder
    implements
        Builder<FleetCapacityReservation, FleetCapacityReservationBuilder> {
  _$FleetCapacityReservation? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  CapacityReservationInstancePlatform? _instancePlatform;
  CapacityReservationInstancePlatform? get instancePlatform =>
      _$this._instancePlatform;
  set instancePlatform(CapacityReservationInstancePlatform? instancePlatform) =>
      _$this._instancePlatform = instancePlatform;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  int? _totalInstanceCount;
  int? get totalInstanceCount => _$this._totalInstanceCount;
  set totalInstanceCount(int? totalInstanceCount) =>
      _$this._totalInstanceCount = totalInstanceCount;

  double? _fulfilledCapacity;
  double? get fulfilledCapacity => _$this._fulfilledCapacity;
  set fulfilledCapacity(double? fulfilledCapacity) =>
      _$this._fulfilledCapacity = fulfilledCapacity;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  FleetCapacityReservationBuilder() {
    FleetCapacityReservation._init(this);
  }

  FleetCapacityReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _availabilityZoneId = $v.availabilityZoneId;
      _instanceType = $v.instanceType;
      _instancePlatform = $v.instancePlatform;
      _availabilityZone = $v.availabilityZone;
      _totalInstanceCount = $v.totalInstanceCount;
      _fulfilledCapacity = $v.fulfilledCapacity;
      _ebsOptimized = $v.ebsOptimized;
      _createDate = $v.createDate;
      _weight = $v.weight;
      _priority = $v.priority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetCapacityReservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetCapacityReservation;
  }

  @override
  void update(void Function(FleetCapacityReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetCapacityReservation build() => _build();

  _$FleetCapacityReservation _build() {
    final _$result = _$v ??
        new _$FleetCapacityReservation._(
            capacityReservationId: capacityReservationId,
            availabilityZoneId: availabilityZoneId,
            instanceType: instanceType,
            instancePlatform: instancePlatform,
            availabilityZone: availabilityZone,
            totalInstanceCount: BuiltValueNullFieldError.checkNotNull(
                totalInstanceCount,
                r'FleetCapacityReservation',
                'totalInstanceCount'),
            fulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                fulfilledCapacity,
                r'FleetCapacityReservation',
                'fulfilledCapacity'),
            ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                ebsOptimized, r'FleetCapacityReservation', 'ebsOptimized'),
            createDate: createDate,
            weight: weight,
            priority: priority);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
