// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_capacity_reservation_fleet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyCapacityReservationFleetRequest
    extends ModifyCapacityReservationFleetRequest {
  @override
  final String? capacityReservationFleetId;
  @override
  final int totalTargetCapacity;
  @override
  final DateTime? endDate;
  @override
  final bool dryRun;
  @override
  final bool removeEndDate;

  factory _$ModifyCapacityReservationFleetRequest(
          [void Function(ModifyCapacityReservationFleetRequestBuilder)?
              updates]) =>
      (new ModifyCapacityReservationFleetRequestBuilder()..update(updates))
          ._build();

  _$ModifyCapacityReservationFleetRequest._(
      {this.capacityReservationFleetId,
      required this.totalTargetCapacity,
      this.endDate,
      required this.dryRun,
      required this.removeEndDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalTargetCapacity,
        r'ModifyCapacityReservationFleetRequest', 'totalTargetCapacity');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyCapacityReservationFleetRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(removeEndDate,
        r'ModifyCapacityReservationFleetRequest', 'removeEndDate');
  }

  @override
  ModifyCapacityReservationFleetRequest rebuild(
          void Function(ModifyCapacityReservationFleetRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyCapacityReservationFleetRequestBuilder toBuilder() =>
      new ModifyCapacityReservationFleetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyCapacityReservationFleetRequest &&
        capacityReservationFleetId == other.capacityReservationFleetId &&
        totalTargetCapacity == other.totalTargetCapacity &&
        endDate == other.endDate &&
        dryRun == other.dryRun &&
        removeEndDate == other.removeEndDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jc(_$hash, totalTargetCapacity.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, removeEndDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyCapacityReservationFleetRequestBuilder
    implements
        Builder<ModifyCapacityReservationFleetRequest,
            ModifyCapacityReservationFleetRequestBuilder> {
  _$ModifyCapacityReservationFleetRequest? _$v;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

  int? _totalTargetCapacity;
  int? get totalTargetCapacity => _$this._totalTargetCapacity;
  set totalTargetCapacity(int? totalTargetCapacity) =>
      _$this._totalTargetCapacity = totalTargetCapacity;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _removeEndDate;
  bool? get removeEndDate => _$this._removeEndDate;
  set removeEndDate(bool? removeEndDate) =>
      _$this._removeEndDate = removeEndDate;

  ModifyCapacityReservationFleetRequestBuilder() {
    ModifyCapacityReservationFleetRequest._init(this);
  }

  ModifyCapacityReservationFleetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _totalTargetCapacity = $v.totalTargetCapacity;
      _endDate = $v.endDate;
      _dryRun = $v.dryRun;
      _removeEndDate = $v.removeEndDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyCapacityReservationFleetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyCapacityReservationFleetRequest;
  }

  @override
  void update(
      void Function(ModifyCapacityReservationFleetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyCapacityReservationFleetRequest build() => _build();

  _$ModifyCapacityReservationFleetRequest _build() {
    final _$result = _$v ??
        new _$ModifyCapacityReservationFleetRequest._(
            capacityReservationFleetId: capacityReservationFleetId,
            totalTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                totalTargetCapacity,
                r'ModifyCapacityReservationFleetRequest',
                'totalTargetCapacity'),
            endDate: endDate,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyCapacityReservationFleetRequest', 'dryRun'),
            removeEndDate: BuiltValueNullFieldError.checkNotNull(removeEndDate,
                r'ModifyCapacityReservationFleetRequest', 'removeEndDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
