// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservation extends CapacityReservation {
  @override
  final String? capacityReservationId;
  @override
  final String? ownerId;
  @override
  final String? capacityReservationArn;
  @override
  final String? availabilityZoneId;
  @override
  final String? instanceType;
  @override
  final CapacityReservationInstancePlatform? instancePlatform;
  @override
  final String? availabilityZone;
  @override
  final CapacityReservationTenancy? tenancy;
  @override
  final int totalInstanceCount;
  @override
  final int availableInstanceCount;
  @override
  final bool ebsOptimized;
  @override
  final bool ephemeralStorage;
  @override
  final CapacityReservationState? state;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final EndDateType? endDateType;
  @override
  final InstanceMatchCriteria? instanceMatchCriteria;
  @override
  final DateTime? createDate;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? outpostArn;
  @override
  final String? capacityReservationFleetId;
  @override
  final String? placementGroupArn;
  @override
  final _i2.BuiltList<CapacityAllocation>? capacityAllocations;

  factory _$CapacityReservation(
          [void Function(CapacityReservationBuilder)? updates]) =>
      (new CapacityReservationBuilder()..update(updates))._build();

  _$CapacityReservation._(
      {this.capacityReservationId,
      this.ownerId,
      this.capacityReservationArn,
      this.availabilityZoneId,
      this.instanceType,
      this.instancePlatform,
      this.availabilityZone,
      this.tenancy,
      required this.totalInstanceCount,
      required this.availableInstanceCount,
      required this.ebsOptimized,
      required this.ephemeralStorage,
      this.state,
      this.startDate,
      this.endDate,
      this.endDateType,
      this.instanceMatchCriteria,
      this.createDate,
      this.tags,
      this.outpostArn,
      this.capacityReservationFleetId,
      this.placementGroupArn,
      this.capacityAllocations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalInstanceCount, r'CapacityReservation', 'totalInstanceCount');
    BuiltValueNullFieldError.checkNotNull(availableInstanceCount,
        r'CapacityReservation', 'availableInstanceCount');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'CapacityReservation', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        ephemeralStorage, r'CapacityReservation', 'ephemeralStorage');
  }

  @override
  CapacityReservation rebuild(
          void Function(CapacityReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationBuilder toBuilder() =>
      new CapacityReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservation &&
        capacityReservationId == other.capacityReservationId &&
        ownerId == other.ownerId &&
        capacityReservationArn == other.capacityReservationArn &&
        availabilityZoneId == other.availabilityZoneId &&
        instanceType == other.instanceType &&
        instancePlatform == other.instancePlatform &&
        availabilityZone == other.availabilityZone &&
        tenancy == other.tenancy &&
        totalInstanceCount == other.totalInstanceCount &&
        availableInstanceCount == other.availableInstanceCount &&
        ebsOptimized == other.ebsOptimized &&
        ephemeralStorage == other.ephemeralStorage &&
        state == other.state &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        endDateType == other.endDateType &&
        instanceMatchCriteria == other.instanceMatchCriteria &&
        createDate == other.createDate &&
        tags == other.tags &&
        outpostArn == other.outpostArn &&
        capacityReservationFleetId == other.capacityReservationFleetId &&
        placementGroupArn == other.placementGroupArn &&
        capacityAllocations == other.capacityAllocations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, capacityReservationArn.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instancePlatform.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, totalInstanceCount.hashCode);
    _$hash = $jc(_$hash, availableInstanceCount.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, ephemeralStorage.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, endDateType.hashCode);
    _$hash = $jc(_$hash, instanceMatchCriteria.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jc(_$hash, placementGroupArn.hashCode);
    _$hash = $jc(_$hash, capacityAllocations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationBuilder
    implements Builder<CapacityReservation, CapacityReservationBuilder> {
  _$CapacityReservation? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _capacityReservationArn;
  String? get capacityReservationArn => _$this._capacityReservationArn;
  set capacityReservationArn(String? capacityReservationArn) =>
      _$this._capacityReservationArn = capacityReservationArn;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  CapacityReservationInstancePlatform? _instancePlatform;
  CapacityReservationInstancePlatform? get instancePlatform =>
      _$this._instancePlatform;
  set instancePlatform(CapacityReservationInstancePlatform? instancePlatform) =>
      _$this._instancePlatform = instancePlatform;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  CapacityReservationTenancy? _tenancy;
  CapacityReservationTenancy? get tenancy => _$this._tenancy;
  set tenancy(CapacityReservationTenancy? tenancy) => _$this._tenancy = tenancy;

  int? _totalInstanceCount;
  int? get totalInstanceCount => _$this._totalInstanceCount;
  set totalInstanceCount(int? totalInstanceCount) =>
      _$this._totalInstanceCount = totalInstanceCount;

  int? _availableInstanceCount;
  int? get availableInstanceCount => _$this._availableInstanceCount;
  set availableInstanceCount(int? availableInstanceCount) =>
      _$this._availableInstanceCount = availableInstanceCount;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  bool? _ephemeralStorage;
  bool? get ephemeralStorage => _$this._ephemeralStorage;
  set ephemeralStorage(bool? ephemeralStorage) =>
      _$this._ephemeralStorage = ephemeralStorage;

  CapacityReservationState? _state;
  CapacityReservationState? get state => _$this._state;
  set state(CapacityReservationState? state) => _$this._state = state;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  EndDateType? _endDateType;
  EndDateType? get endDateType => _$this._endDateType;
  set endDateType(EndDateType? endDateType) =>
      _$this._endDateType = endDateType;

  InstanceMatchCriteria? _instanceMatchCriteria;
  InstanceMatchCriteria? get instanceMatchCriteria =>
      _$this._instanceMatchCriteria;
  set instanceMatchCriteria(InstanceMatchCriteria? instanceMatchCriteria) =>
      _$this._instanceMatchCriteria = instanceMatchCriteria;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

  String? _placementGroupArn;
  String? get placementGroupArn => _$this._placementGroupArn;
  set placementGroupArn(String? placementGroupArn) =>
      _$this._placementGroupArn = placementGroupArn;

  _i2.ListBuilder<CapacityAllocation>? _capacityAllocations;
  _i2.ListBuilder<CapacityAllocation> get capacityAllocations =>
      _$this._capacityAllocations ??= new _i2.ListBuilder<CapacityAllocation>();
  set capacityAllocations(
          _i2.ListBuilder<CapacityAllocation>? capacityAllocations) =>
      _$this._capacityAllocations = capacityAllocations;

  CapacityReservationBuilder() {
    CapacityReservation._init(this);
  }

  CapacityReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _ownerId = $v.ownerId;
      _capacityReservationArn = $v.capacityReservationArn;
      _availabilityZoneId = $v.availabilityZoneId;
      _instanceType = $v.instanceType;
      _instancePlatform = $v.instancePlatform;
      _availabilityZone = $v.availabilityZone;
      _tenancy = $v.tenancy;
      _totalInstanceCount = $v.totalInstanceCount;
      _availableInstanceCount = $v.availableInstanceCount;
      _ebsOptimized = $v.ebsOptimized;
      _ephemeralStorage = $v.ephemeralStorage;
      _state = $v.state;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _endDateType = $v.endDateType;
      _instanceMatchCriteria = $v.instanceMatchCriteria;
      _createDate = $v.createDate;
      _tags = $v.tags?.toBuilder();
      _outpostArn = $v.outpostArn;
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _placementGroupArn = $v.placementGroupArn;
      _capacityAllocations = $v.capacityAllocations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservation;
  }

  @override
  void update(void Function(CapacityReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservation build() => _build();

  _$CapacityReservation _build() {
    _$CapacityReservation _$result;
    try {
      _$result = _$v ??
          new _$CapacityReservation._(
              capacityReservationId: capacityReservationId,
              ownerId: ownerId,
              capacityReservationArn: capacityReservationArn,
              availabilityZoneId: availabilityZoneId,
              instanceType: instanceType,
              instancePlatform: instancePlatform,
              availabilityZone: availabilityZone,
              tenancy: tenancy,
              totalInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  totalInstanceCount,
                  r'CapacityReservation',
                  'totalInstanceCount'),
              availableInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  availableInstanceCount,
                  r'CapacityReservation',
                  'availableInstanceCount'),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'CapacityReservation', 'ebsOptimized'),
              ephemeralStorage: BuiltValueNullFieldError.checkNotNull(
                  ephemeralStorage, r'CapacityReservation', 'ephemeralStorage'),
              state: state,
              startDate: startDate,
              endDate: endDate,
              endDateType: endDateType,
              instanceMatchCriteria: instanceMatchCriteria,
              createDate: createDate,
              tags: _tags?.build(),
              outpostArn: outpostArn,
              capacityReservationFleetId: capacityReservationFleetId,
              placementGroupArn: placementGroupArn,
              capacityAllocations: _capacityAllocations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'capacityAllocations';
        _capacityAllocations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CapacityReservation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
