// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_capacity_reservation_fleet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCapacityReservationFleetRequest
    extends CreateCapacityReservationFleetRequest {
  @override
  final String? allocationStrategy;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<ReservationFleetInstanceSpecification>?
      instanceTypeSpecifications;
  @override
  final FleetCapacityReservationTenancy? tenancy;
  @override
  final int totalTargetCapacity;
  @override
  final DateTime? endDate;
  @override
  final FleetInstanceMatchCriteria? instanceMatchCriteria;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateCapacityReservationFleetRequest(
          [void Function(CreateCapacityReservationFleetRequestBuilder)?
              updates]) =>
      (new CreateCapacityReservationFleetRequestBuilder()..update(updates))
          ._build();

  _$CreateCapacityReservationFleetRequest._(
      {this.allocationStrategy,
      this.clientToken,
      this.instanceTypeSpecifications,
      this.tenancy,
      required this.totalTargetCapacity,
      this.endDate,
      this.instanceMatchCriteria,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'CreateCapacityReservationFleetRequest', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCapacityReservationFleetRequest', 'dryRun');
  }

  @override
  CreateCapacityReservationFleetRequest rebuild(
          void Function(CreateCapacityReservationFleetRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCapacityReservationFleetRequestBuilder toBuilder() =>
      new CreateCapacityReservationFleetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCapacityReservationFleetRequest &&
        allocationStrategy == other.allocationStrategy &&
        clientToken == other.clientToken &&
        instanceTypeSpecifications == other.instanceTypeSpecifications &&
        tenancy == other.tenancy &&
        totalTargetCapacity == other.totalTargetCapacity &&
        endDate == other.endDate &&
        instanceMatchCriteria == other.instanceMatchCriteria &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationStrategy.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, instanceTypeSpecifications.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, totalTargetCapacity.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, instanceMatchCriteria.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCapacityReservationFleetRequestBuilder
    implements
        Builder<CreateCapacityReservationFleetRequest,
            CreateCapacityReservationFleetRequestBuilder> {
  _$CreateCapacityReservationFleetRequest? _$v;

  String? _allocationStrategy;
  String? get allocationStrategy => _$this._allocationStrategy;
  set allocationStrategy(String? allocationStrategy) =>
      _$this._allocationStrategy = allocationStrategy;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<ReservationFleetInstanceSpecification>?
      _instanceTypeSpecifications;
  _i3.ListBuilder<ReservationFleetInstanceSpecification>
      get instanceTypeSpecifications => _$this._instanceTypeSpecifications ??=
          new _i3.ListBuilder<ReservationFleetInstanceSpecification>();
  set instanceTypeSpecifications(
          _i3.ListBuilder<ReservationFleetInstanceSpecification>?
              instanceTypeSpecifications) =>
      _$this._instanceTypeSpecifications = instanceTypeSpecifications;

  FleetCapacityReservationTenancy? _tenancy;
  FleetCapacityReservationTenancy? get tenancy => _$this._tenancy;
  set tenancy(FleetCapacityReservationTenancy? tenancy) =>
      _$this._tenancy = tenancy;

  int? _totalTargetCapacity;
  int? get totalTargetCapacity => _$this._totalTargetCapacity;
  set totalTargetCapacity(int? totalTargetCapacity) =>
      _$this._totalTargetCapacity = totalTargetCapacity;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  FleetInstanceMatchCriteria? _instanceMatchCriteria;
  FleetInstanceMatchCriteria? get instanceMatchCriteria =>
      _$this._instanceMatchCriteria;
  set instanceMatchCriteria(
          FleetInstanceMatchCriteria? instanceMatchCriteria) =>
      _$this._instanceMatchCriteria = instanceMatchCriteria;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateCapacityReservationFleetRequestBuilder() {
    CreateCapacityReservationFleetRequest._init(this);
  }

  CreateCapacityReservationFleetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationStrategy = $v.allocationStrategy;
      _clientToken = $v.clientToken;
      _instanceTypeSpecifications = $v.instanceTypeSpecifications?.toBuilder();
      _tenancy = $v.tenancy;
      _totalTargetCapacity = $v.totalTargetCapacity;
      _endDate = $v.endDate;
      _instanceMatchCriteria = $v.instanceMatchCriteria;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCapacityReservationFleetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCapacityReservationFleetRequest;
  }

  @override
  void update(
      void Function(CreateCapacityReservationFleetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCapacityReservationFleetRequest build() => _build();

  _$CreateCapacityReservationFleetRequest _build() {
    _$CreateCapacityReservationFleetRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCapacityReservationFleetRequest._(
              allocationStrategy: allocationStrategy,
              clientToken: clientToken,
              instanceTypeSpecifications: _instanceTypeSpecifications?.build(),
              tenancy: tenancy,
              totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  totalTargetCapacity,
                  r'CreateCapacityReservationFleetRequest',
                  'totalTargetCapacity'),
              endDate: endDate,
              instanceMatchCriteria: instanceMatchCriteria,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateCapacityReservationFleetRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypeSpecifications';
        _instanceTypeSpecifications?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCapacityReservationFleetRequest',
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
