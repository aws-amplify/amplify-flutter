// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationSpecificationResponse
    extends CapacityReservationSpecificationResponse {
  @override
  final CapacityReservationPreference? capacityReservationPreference;
  @override
  final CapacityReservationTargetResponse? capacityReservationTarget;

  factory _$CapacityReservationSpecificationResponse(
          [void Function(CapacityReservationSpecificationResponseBuilder)?
              updates]) =>
      (new CapacityReservationSpecificationResponseBuilder()..update(updates))
          ._build();

  _$CapacityReservationSpecificationResponse._(
      {this.capacityReservationPreference, this.capacityReservationTarget})
      : super._();

  @override
  CapacityReservationSpecificationResponse rebuild(
          void Function(CapacityReservationSpecificationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationSpecificationResponseBuilder toBuilder() =>
      new CapacityReservationSpecificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationSpecificationResponse &&
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

class CapacityReservationSpecificationResponseBuilder
    implements
        Builder<CapacityReservationSpecificationResponse,
            CapacityReservationSpecificationResponseBuilder> {
  _$CapacityReservationSpecificationResponse? _$v;

  CapacityReservationPreference? _capacityReservationPreference;
  CapacityReservationPreference? get capacityReservationPreference =>
      _$this._capacityReservationPreference;
  set capacityReservationPreference(
          CapacityReservationPreference? capacityReservationPreference) =>
      _$this._capacityReservationPreference = capacityReservationPreference;

  CapacityReservationTargetResponseBuilder? _capacityReservationTarget;
  CapacityReservationTargetResponseBuilder get capacityReservationTarget =>
      _$this._capacityReservationTarget ??=
          new CapacityReservationTargetResponseBuilder();
  set capacityReservationTarget(
          CapacityReservationTargetResponseBuilder?
              capacityReservationTarget) =>
      _$this._capacityReservationTarget = capacityReservationTarget;

  CapacityReservationSpecificationResponseBuilder();

  CapacityReservationSpecificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationPreference = $v.capacityReservationPreference;
      _capacityReservationTarget = $v.capacityReservationTarget?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationSpecificationResponse;
  }

  @override
  void update(
      void Function(CapacityReservationSpecificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationSpecificationResponse build() => _build();

  _$CapacityReservationSpecificationResponse _build() {
    _$CapacityReservationSpecificationResponse _$result;
    try {
      _$result = _$v ??
          new _$CapacityReservationSpecificationResponse._(
              capacityReservationPreference: capacityReservationPreference,
              capacityReservationTarget: _capacityReservationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationTarget';
        _capacityReservationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CapacityReservationSpecificationResponse',
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
