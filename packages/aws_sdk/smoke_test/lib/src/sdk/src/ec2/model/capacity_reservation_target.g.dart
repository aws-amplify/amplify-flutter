// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationTarget extends CapacityReservationTarget {
  @override
  final String? capacityReservationId;
  @override
  final String? capacityReservationResourceGroupArn;

  factory _$CapacityReservationTarget(
          [void Function(CapacityReservationTargetBuilder)? updates]) =>
      (new CapacityReservationTargetBuilder()..update(updates))._build();

  _$CapacityReservationTarget._(
      {this.capacityReservationId, this.capacityReservationResourceGroupArn})
      : super._();

  @override
  CapacityReservationTarget rebuild(
          void Function(CapacityReservationTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationTargetBuilder toBuilder() =>
      new CapacityReservationTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationTarget &&
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

class CapacityReservationTargetBuilder
    implements
        Builder<CapacityReservationTarget, CapacityReservationTargetBuilder> {
  _$CapacityReservationTarget? _$v;

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

  CapacityReservationTargetBuilder();

  CapacityReservationTargetBuilder get _$this {
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
  void replace(CapacityReservationTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationTarget;
  }

  @override
  void update(void Function(CapacityReservationTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationTarget build() => _build();

  _$CapacityReservationTarget _build() {
    final _$result = _$v ??
        new _$CapacityReservationTarget._(
            capacityReservationId: capacityReservationId,
            capacityReservationResourceGroupArn:
                capacityReservationResourceGroupArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
