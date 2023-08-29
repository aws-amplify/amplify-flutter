// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_fleet_instance_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservationFleetInstanceSpecification
    extends ReservationFleetInstanceSpecification {
  @override
  final InstanceType? instanceType;
  @override
  final CapacityReservationInstancePlatform? instancePlatform;
  @override
  final double? weight;
  @override
  final String? availabilityZone;
  @override
  final String? availabilityZoneId;
  @override
  final bool ebsOptimized;
  @override
  final int? priority;

  factory _$ReservationFleetInstanceSpecification(
          [void Function(ReservationFleetInstanceSpecificationBuilder)?
              updates]) =>
      (new ReservationFleetInstanceSpecificationBuilder()..update(updates))
          ._build();

  _$ReservationFleetInstanceSpecification._(
      {this.instanceType,
      this.instancePlatform,
      this.weight,
      this.availabilityZone,
      this.availabilityZoneId,
      required this.ebsOptimized,
      this.priority})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'ReservationFleetInstanceSpecification', 'ebsOptimized');
  }

  @override
  ReservationFleetInstanceSpecification rebuild(
          void Function(ReservationFleetInstanceSpecificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationFleetInstanceSpecificationBuilder toBuilder() =>
      new ReservationFleetInstanceSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservationFleetInstanceSpecification &&
        instanceType == other.instanceType &&
        instancePlatform == other.instancePlatform &&
        weight == other.weight &&
        availabilityZone == other.availabilityZone &&
        availabilityZoneId == other.availabilityZoneId &&
        ebsOptimized == other.ebsOptimized &&
        priority == other.priority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instancePlatform.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservationFleetInstanceSpecificationBuilder
    implements
        Builder<ReservationFleetInstanceSpecification,
            ReservationFleetInstanceSpecificationBuilder> {
  _$ReservationFleetInstanceSpecification? _$v;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  CapacityReservationInstancePlatform? _instancePlatform;
  CapacityReservationInstancePlatform? get instancePlatform =>
      _$this._instancePlatform;
  set instancePlatform(CapacityReservationInstancePlatform? instancePlatform) =>
      _$this._instancePlatform = instancePlatform;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  ReservationFleetInstanceSpecificationBuilder() {
    ReservationFleetInstanceSpecification._init(this);
  }

  ReservationFleetInstanceSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _instancePlatform = $v.instancePlatform;
      _weight = $v.weight;
      _availabilityZone = $v.availabilityZone;
      _availabilityZoneId = $v.availabilityZoneId;
      _ebsOptimized = $v.ebsOptimized;
      _priority = $v.priority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservationFleetInstanceSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservationFleetInstanceSpecification;
  }

  @override
  void update(
      void Function(ReservationFleetInstanceSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservationFleetInstanceSpecification build() => _build();

  _$ReservationFleetInstanceSpecification _build() {
    final _$result = _$v ??
        new _$ReservationFleetInstanceSpecification._(
            instanceType: instanceType,
            instancePlatform: instancePlatform,
            weight: weight,
            availabilityZone: availabilityZone,
            availabilityZoneId: availabilityZoneId,
            ebsOptimized: BuiltValueNullFieldError.checkNotNull(ebsOptimized,
                r'ReservationFleetInstanceSpecification', 'ebsOptimized'),
            priority: priority);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
