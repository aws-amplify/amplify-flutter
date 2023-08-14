// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_fleet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationFleet extends CapacityReservationFleet {
  @override
  final String? capacityReservationFleetId;
  @override
  final String? capacityReservationFleetArn;
  @override
  final CapacityReservationFleetState? state;
  @override
  final int totalTargetCapacity;
  @override
  final double totalFulfilledCapacity;
  @override
  final FleetCapacityReservationTenancy? tenancy;
  @override
  final DateTime? endDate;
  @override
  final DateTime? createTime;
  @override
  final FleetInstanceMatchCriteria? instanceMatchCriteria;
  @override
  final String? allocationStrategy;
  @override
  final _i2.BuiltList<FleetCapacityReservation>? instanceTypeSpecifications;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CapacityReservationFleet(
          [void Function(CapacityReservationFleetBuilder)? updates]) =>
      (new CapacityReservationFleetBuilder()..update(updates))._build();

  _$CapacityReservationFleet._(
      {this.capacityReservationFleetId,
      this.capacityReservationFleetArn,
      this.state,
      required this.totalTargetCapacity,
      required this.totalFulfilledCapacity,
      this.tenancy,
      this.endDate,
      this.createTime,
      this.instanceMatchCriteria,
      this.allocationStrategy,
      this.instanceTypeSpecifications,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'CapacityReservationFleet', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(totalFulfilledCapacity,
        r'CapacityReservationFleet', 'totalFulfilledCapacity');
  }

  @override
  CapacityReservationFleet rebuild(
          void Function(CapacityReservationFleetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationFleetBuilder toBuilder() =>
      new CapacityReservationFleetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationFleet &&
        capacityReservationFleetId == other.capacityReservationFleetId &&
        capacityReservationFleetArn == other.capacityReservationFleetArn &&
        state == other.state &&
        totalTargetCapacity == other.totalTargetCapacity &&
        totalFulfilledCapacity == other.totalFulfilledCapacity &&
        tenancy == other.tenancy &&
        endDate == other.endDate &&
        createTime == other.createTime &&
        instanceMatchCriteria == other.instanceMatchCriteria &&
        allocationStrategy == other.allocationStrategy &&
        instanceTypeSpecifications == other.instanceTypeSpecifications &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jc(_$hash, capacityReservationFleetArn.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, totalTargetCapacity.hashCode);
    _$hash = $jc(_$hash, totalFulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, instanceMatchCriteria.hashCode);
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, instanceTypeSpecifications.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationFleetBuilder
    implements
        Builder<CapacityReservationFleet, CapacityReservationFleetBuilder> {
  _$CapacityReservationFleet? _$v;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

  String? _capacityReservationFleetArn;
  String? get capacityReservationFleetArn =>
      _$this._capacityReservationFleetArn;
  set capacityReservationFleetArn(String? capacityReservationFleetArn) =>
      _$this._capacityReservationFleetArn = capacityReservationFleetArn;

  CapacityReservationFleetState? _state;
  CapacityReservationFleetState? get state => _$this._state;
  set state(CapacityReservationFleetState? state) => _$this._state = state;

  int? _totalTargetCapacity;
  int? get totalTargetCapacity => _$this._totalTargetCapacity;
  set totalTargetCapacity(int? totalTargetCapacity) =>
      _$this._totalTargetCapacity = totalTargetCapacity;

  double? _totalFulfilledCapacity;
  double? get totalFulfilledCapacity => _$this._totalFulfilledCapacity;
  set totalFulfilledCapacity(double? totalFulfilledCapacity) =>
      _$this._totalFulfilledCapacity = totalFulfilledCapacity;

  FleetCapacityReservationTenancy? _tenancy;
  FleetCapacityReservationTenancy? get tenancy => _$this._tenancy;
  set tenancy(FleetCapacityReservationTenancy? tenancy) =>
      _$this._tenancy = tenancy;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  FleetInstanceMatchCriteria? _instanceMatchCriteria;
  FleetInstanceMatchCriteria? get instanceMatchCriteria =>
      _$this._instanceMatchCriteria;
  set instanceMatchCriteria(
          FleetInstanceMatchCriteria? instanceMatchCriteria) =>
      _$this._instanceMatchCriteria = instanceMatchCriteria;

  String? _allocationStrategy;
  String? get allocationStrategy => _$this._allocationStrategy;
  set allocationStrategy(String? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  _i2.ListBuilder<FleetCapacityReservation>? _instanceTypeSpecifications;
  _i2.ListBuilder<FleetCapacityReservation> get instanceTypeSpecifications =>
      _$this._instanceTypeSpecifications ??=
          new _i2.ListBuilder<FleetCapacityReservation>();
  set instanceTypeSpecifications(
          _i2.ListBuilder<FleetCapacityReservation>?
              instanceTypeSpecifications) =>
      _$this._instanceTypeSpecifications = instanceTypeSpecifications;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CapacityReservationFleetBuilder() {
    CapacityReservationFleet._init(this);
  }

  CapacityReservationFleetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _capacityReservationFleetArn = $v.capacityReservationFleetArn;
      _state = $v.state;
      _totalTargetCapacity = $v.totalTargetCapacity;
      _totalFulfilledCapacity = $v.totalFulfilledCapacity;
      _tenancy = $v.tenancy;
      _endDate = $v.endDate;
      _createTime = $v.createTime;
      _instanceMatchCriteria = $v.instanceMatchCriteria;
      _allocationStrategy = $v.allocationStrategy;
      _instanceTypeSpecifications = $v.instanceTypeSpecifications?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationFleet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationFleet;
  }

  @override
  void update(void Function(CapacityReservationFleetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationFleet build() => _build();

  _$CapacityReservationFleet _build() {
    _$CapacityReservationFleet _$result;
    try {
      _$result = _$v ??
          new _$CapacityReservationFleet._(
              capacityReservationFleetId: capacityReservationFleetId,
              capacityReservationFleetArn: capacityReservationFleetArn,
              state: state,
              totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  totalTargetCapacity,
                  r'CapacityReservationFleet',
                  'totalTargetCapacity'),
              totalFulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                  totalFulfilledCapacity,
                  r'CapacityReservationFleet',
                  'totalFulfilledCapacity'),
              tenancy: tenancy,
              endDate: endDate,
              createTime: createTime,
              instanceMatchCriteria: instanceMatchCriteria,
              allocationStrategy: allocationStrategy,
              instanceTypeSpecifications: _instanceTypeSpecifications?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypeSpecifications';
        _instanceTypeSpecifications?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CapacityReservationFleet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
