// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_capacity_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelCapacityReservationRequest
    extends CancelCapacityReservationRequest {
  @override
  final String? capacityReservationId;
  @override
  final bool dryRun;

  factory _$CancelCapacityReservationRequest(
          [void Function(CancelCapacityReservationRequestBuilder)? updates]) =>
      (new CancelCapacityReservationRequestBuilder()..update(updates))._build();

  _$CancelCapacityReservationRequest._(
      {this.capacityReservationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelCapacityReservationRequest', 'dryRun');
  }

  @override
  CancelCapacityReservationRequest rebuild(
          void Function(CancelCapacityReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelCapacityReservationRequestBuilder toBuilder() =>
      new CancelCapacityReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelCapacityReservationRequest &&
        capacityReservationId == other.capacityReservationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelCapacityReservationRequestBuilder
    implements
        Builder<CancelCapacityReservationRequest,
            CancelCapacityReservationRequestBuilder> {
  _$CancelCapacityReservationRequest? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CancelCapacityReservationRequestBuilder() {
    CancelCapacityReservationRequest._init(this);
  }

  CancelCapacityReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelCapacityReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelCapacityReservationRequest;
  }

  @override
  void update(void Function(CancelCapacityReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelCapacityReservationRequest build() => _build();

  _$CancelCapacityReservationRequest _build() {
    final _$result = _$v ??
        new _$CancelCapacityReservationRequest._(
            capacityReservationId: capacityReservationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CancelCapacityReservationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
