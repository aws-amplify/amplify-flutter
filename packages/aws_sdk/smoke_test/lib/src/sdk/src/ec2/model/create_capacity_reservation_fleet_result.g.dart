// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_capacity_reservation_fleet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCapacityReservationFleetResult
    extends CreateCapacityReservationFleetResult {
  @override
  final String? capacityReservationFleetId;
  @override
  final CapacityReservationFleetState? state;
  @override
  final int totalTargetCapacity;
  @override
  final double totalFulfilledCapacity;
  @override
  final FleetInstanceMatchCriteria? instanceMatchCriteria;
  @override
  final String? allocationStrategy;
  @override
  final DateTime? createTime;
  @override
  final DateTime? endDate;
  @override
  final FleetCapacityReservationTenancy? tenancy;
  @override
  final _i2.BuiltList<FleetCapacityReservation>? fleetCapacityReservations;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CreateCapacityReservationFleetResult(
          [void Function(CreateCapacityReservationFleetResultBuilder)?
              updates]) =>
      (new CreateCapacityReservationFleetResultBuilder()..update(updates))
          ._build();

  _$CreateCapacityReservationFleetResult._(
      {this.capacityReservationFleetId,
      this.state,
      required this.totalTargetCapacity,
      required this.totalFulfilledCapacity,
      this.instanceMatchCriteria,
      this.allocationStrategy,
      this.createTime,
      this.endDate,
      this.tenancy,
      this.fleetCapacityReservations,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'CreateCapacityReservationFleetResult', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(totalFulfilledCapacity,
        r'CreateCapacityReservationFleetResult', 'totalFulfilledCapacity');
  }

  @override
  CreateCapacityReservationFleetResult rebuild(
          void Function(CreateCapacityReservationFleetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCapacityReservationFleetResultBuilder toBuilder() =>
      new CreateCapacityReservationFleetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCapacityReservationFleetResult &&
        capacityReservationFleetId == other.capacityReservationFleetId &&
        state == other.state &&
        totalTargetCapacity == other.totalTargetCapacity &&
        totalFulfilledCapacity == other.totalFulfilledCapacity &&
        instanceMatchCriteria == other.instanceMatchCriteria &&
        allocationStrategy == other.allocationStrategy &&
        createTime == other.createTime &&
        endDate == other.endDate &&
        tenancy == other.tenancy &&
        fleetCapacityReservations == other.fleetCapacityReservations &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, totalTargetCapacity.hashCode);
    _$hash = $jc(_$hash, totalFulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, instanceMatchCriteria.hashCode);
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, fleetCapacityReservations.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCapacityReservationFleetResultBuilder
    implements
        Builder<CreateCapacityReservationFleetResult,
            CreateCapacityReservationFleetResultBuilder> {
  _$CreateCapacityReservationFleetResult? _$v;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

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

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  FleetCapacityReservationTenancy? _tenancy;
  FleetCapacityReservationTenancy? get tenancy => _$this._tenancy;
  set tenancy(FleetCapacityReservationTenancy? tenancy) =>
      _$this._tenancy = tenancy;

  _i2.ListBuilder<FleetCapacityReservation>? _fleetCapacityReservations;
  _i2.ListBuilder<FleetCapacityReservation> get fleetCapacityReservations =>
      _$this._fleetCapacityReservations ??=
          new _i2.ListBuilder<FleetCapacityReservation>();
  set fleetCapacityReservations(
          _i2.ListBuilder<FleetCapacityReservation>?
              fleetCapacityReservations) =>
      _$this._fleetCapacityReservations = fleetCapacityReservations;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CreateCapacityReservationFleetResultBuilder() {
    CreateCapacityReservationFleetResult._init(this);
  }

  CreateCapacityReservationFleetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _state = $v.state;
      _totalTargetCapacity = $v.totalTargetCapacity;
      _totalFulfilledCapacity = $v.totalFulfilledCapacity;
      _instanceMatchCriteria = $v.instanceMatchCriteria;
      _allocationStrategy = $v.allocationStrategy;
      _createTime = $v.createTime;
      _endDate = $v.endDate;
      _tenancy = $v.tenancy;
      _fleetCapacityReservations = $v.fleetCapacityReservations?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCapacityReservationFleetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCapacityReservationFleetResult;
  }

  @override
  void update(
      void Function(CreateCapacityReservationFleetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCapacityReservationFleetResult build() => _build();

  _$CreateCapacityReservationFleetResult _build() {
    _$CreateCapacityReservationFleetResult _$result;
    try {
      _$result = _$v ??
          new _$CreateCapacityReservationFleetResult._(
              capacityReservationFleetId: capacityReservationFleetId,
              state: state,
              totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  totalTargetCapacity,
                  r'CreateCapacityReservationFleetResult',
                  'totalTargetCapacity'),
              totalFulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                  totalFulfilledCapacity,
                  r'CreateCapacityReservationFleetResult',
                  'totalFulfilledCapacity'),
              instanceMatchCriteria: instanceMatchCriteria,
              allocationStrategy: allocationStrategy,
              createTime: createTime,
              endDate: endDate,
              tenancy: tenancy,
              fleetCapacityReservations: _fleetCapacityReservations?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fleetCapacityReservations';
        _fleetCapacityReservations?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCapacityReservationFleetResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
