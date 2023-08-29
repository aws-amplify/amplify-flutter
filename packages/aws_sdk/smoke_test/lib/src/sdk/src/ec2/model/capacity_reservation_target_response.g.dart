// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_target_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationTargetResponse
    extends CapacityReservationTargetResponse {
  @override
  final String? capacityReservationId;
  @override
  final String? capacityReservationResourceGroupArn;

  factory _$CapacityReservationTargetResponse(
          [void Function(CapacityReservationTargetResponseBuilder)? updates]) =>
      (new CapacityReservationTargetResponseBuilder()..update(updates))
          ._build();

  _$CapacityReservationTargetResponse._(
      {this.capacityReservationId, this.capacityReservationResourceGroupArn})
      : super._();

  @override
  CapacityReservationTargetResponse rebuild(
          void Function(CapacityReservationTargetResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationTargetResponseBuilder toBuilder() =>
      new CapacityReservationTargetResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationTargetResponse &&
        capacityReservationId == other.capacityReservationId &&
        capacityReservationResourceGroupArn ==
            other.capacityReservationResourceGroupArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, capacityReservationResourceGroupArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationTargetResponseBuilder
    implements
        Builder<CapacityReservationTargetResponse,
            CapacityReservationTargetResponseBuilder> {
  _$CapacityReservationTargetResponse? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  String? _capacityReservationResourceGroupArn;
  String? get capacityReservationResourceGroupArn =>
      _$this._capacityReservationResourceGroupArn;
  set capacityReservationResourceGroupArn(
          String? capacityReservationResourceGroupArn) =>
      _$this._capacityReservationResourceGroupArn =
          capacityReservationResourceGroupArn;

  CapacityReservationTargetResponseBuilder();

  CapacityReservationTargetResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _capacityReservationResourceGroupArn =
          $v.capacityReservationResourceGroupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationTargetResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationTargetResponse;
  }

  @override
  void update(
      void Function(CapacityReservationTargetResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationTargetResponse build() => _build();

  _$CapacityReservationTargetResponse _build() {
    final _$result = _$v ??
        new _$CapacityReservationTargetResponse._(
            capacityReservationId: capacityReservationId,
            capacityReservationResourceGroupArn:
                capacityReservationResourceGroupArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
