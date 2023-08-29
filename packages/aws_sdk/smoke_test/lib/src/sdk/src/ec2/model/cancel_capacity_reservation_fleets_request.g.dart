// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_capacity_reservation_fleets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelCapacityReservationFleetsRequest
    extends CancelCapacityReservationFleetsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? capacityReservationFleetIds;

  factory _$CancelCapacityReservationFleetsRequest(
          [void Function(CancelCapacityReservationFleetsRequestBuilder)?
              updates]) =>
      (new CancelCapacityReservationFleetsRequestBuilder()..update(updates))
          ._build();

  _$CancelCapacityReservationFleetsRequest._(
      {required this.dryRun, this.capacityReservationFleetIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelCapacityReservationFleetsRequest', 'dryRun');
  }

  @override
  CancelCapacityReservationFleetsRequest rebuild(
          void Function(CancelCapacityReservationFleetsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelCapacityReservationFleetsRequestBuilder toBuilder() =>
      new CancelCapacityReservationFleetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelCapacityReservationFleetsRequest &&
        dryRun == other.dryRun &&
        capacityReservationFleetIds == other.capacityReservationFleetIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, capacityReservationFleetIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelCapacityReservationFleetsRequestBuilder
    implements
        Builder<CancelCapacityReservationFleetsRequest,
            CancelCapacityReservationFleetsRequestBuilder> {
  _$CancelCapacityReservationFleetsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _capacityReservationFleetIds;
  _i3.ListBuilder<String> get capacityReservationFleetIds =>
      _$this._capacityReservationFleetIds ??= new _i3.ListBuilder<String>();
  set capacityReservationFleetIds(
          _i3.ListBuilder<String>? capacityReservationFleetIds) =>
      _$this._capacityReservationFleetIds = capacityReservationFleetIds;

  CancelCapacityReservationFleetsRequestBuilder() {
    CancelCapacityReservationFleetsRequest._init(this);
  }

  CancelCapacityReservationFleetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _capacityReservationFleetIds =
          $v.capacityReservationFleetIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelCapacityReservationFleetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelCapacityReservationFleetsRequest;
  }

  @override
  void update(
      void Function(CancelCapacityReservationFleetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelCapacityReservationFleetsRequest build() => _build();

  _$CancelCapacityReservationFleetsRequest _build() {
    _$CancelCapacityReservationFleetsRequest _$result;
    try {
      _$result = _$v ??
          new _$CancelCapacityReservationFleetsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CancelCapacityReservationFleetsRequest', 'dryRun'),
              capacityReservationFleetIds:
                  _capacityReservationFleetIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationFleetIds';
        _capacityReservationFleetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelCapacityReservationFleetsRequest',
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
