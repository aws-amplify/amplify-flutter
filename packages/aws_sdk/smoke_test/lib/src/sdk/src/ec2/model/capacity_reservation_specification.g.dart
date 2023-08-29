// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationSpecification
    extends CapacityReservationSpecification {
  @override
  final CapacityReservationPreference? capacityReservationPreference;
  @override
  final CapacityReservationTarget? capacityReservationTarget;

  factory _$CapacityReservationSpecification(
          [void Function(CapacityReservationSpecificationBuilder)? updates]) =>
      (new CapacityReservationSpecificationBuilder()..update(updates))._build();

  _$CapacityReservationSpecification._(
      {this.capacityReservationPreference, this.capacityReservationTarget})
      : super._();

  @override
  CapacityReservationSpecification rebuild(
          void Function(CapacityReservationSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationSpecificationBuilder toBuilder() =>
      new CapacityReservationSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationSpecification &&
        capacityReservationPreference == other.capacityReservationPreference &&
        capacityReservationTarget == other.capacityReservationTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationPreference.hashCode);
    _$hash = $jc(_$hash, capacityReservationTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationSpecificationBuilder
    implements
        Builder<CapacityReservationSpecification,
            CapacityReservationSpecificationBuilder> {
  _$CapacityReservationSpecification? _$v;

  CapacityReservationPreference? _capacityReservationPreference;
  CapacityReservationPreference? get capacityReservationPreference =>
      _$this._capacityReservationPreference;
  set capacityReservationPreference(
          CapacityReservationPreference? capacityReservationPreference) =>
      _$this._capacityReservationPreference = capacityReservationPreference;

  CapacityReservationTargetBuilder? _capacityReservationTarget;
  CapacityReservationTargetBuilder get capacityReservationTarget =>
      _$this._capacityReservationTarget ??=
          new CapacityReservationTargetBuilder();
  set capacityReservationTarget(
          CapacityReservationTargetBuilder? capacityReservationTarget) =>
      _$this._capacityReservationTarget = capacityReservationTarget;

  CapacityReservationSpecificationBuilder();

  CapacityReservationSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationPreference = $v.capacityReservationPreference;
      _capacityReservationTarget = $v.capacityReservationTarget?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationSpecification;
  }

  @override
  void update(void Function(CapacityReservationSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationSpecification build() => _build();

  _$CapacityReservationSpecification _build() {
    _$CapacityReservationSpecification _$result;
    try {
      _$result = _$v ??
          new _$CapacityReservationSpecification._(
              capacityReservationPreference: capacityReservationPreference,
              capacityReservationTarget: _capacityReservationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationTarget';
        _capacityReservationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CapacityReservationSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
