// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_capacity_reservation_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateCapacityReservationSpecificationResponse
    extends LaunchTemplateCapacityReservationSpecificationResponse {
  @override
  final CapacityReservationPreference? capacityReservationPreference;
  @override
  final CapacityReservationTargetResponse? capacityReservationTarget;

  factory _$LaunchTemplateCapacityReservationSpecificationResponse(
          [void Function(
                  LaunchTemplateCapacityReservationSpecificationResponseBuilder)?
              updates]) =>
      (new LaunchTemplateCapacityReservationSpecificationResponseBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateCapacityReservationSpecificationResponse._(
      {this.capacityReservationPreference, this.capacityReservationTarget})
      : super._();

  @override
  LaunchTemplateCapacityReservationSpecificationResponse rebuild(
          void Function(
                  LaunchTemplateCapacityReservationSpecificationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateCapacityReservationSpecificationResponseBuilder toBuilder() =>
      new LaunchTemplateCapacityReservationSpecificationResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateCapacityReservationSpecificationResponse &&
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

class LaunchTemplateCapacityReservationSpecificationResponseBuilder
    implements
        Builder<LaunchTemplateCapacityReservationSpecificationResponse,
            LaunchTemplateCapacityReservationSpecificationResponseBuilder> {
  _$LaunchTemplateCapacityReservationSpecificationResponse? _$v;

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

  LaunchTemplateCapacityReservationSpecificationResponseBuilder();

  LaunchTemplateCapacityReservationSpecificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationPreference = $v.capacityReservationPreference;
      _capacityReservationTarget = $v.capacityReservationTarget?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateCapacityReservationSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateCapacityReservationSpecificationResponse;
  }

  @override
  void update(
      void Function(
              LaunchTemplateCapacityReservationSpecificationResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateCapacityReservationSpecificationResponse build() => _build();

  _$LaunchTemplateCapacityReservationSpecificationResponse _build() {
    _$LaunchTemplateCapacityReservationSpecificationResponse _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateCapacityReservationSpecificationResponse._(
              capacityReservationPreference: capacityReservationPreference,
              capacityReservationTarget: _capacityReservationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationTarget';
        _capacityReservationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateCapacityReservationSpecificationResponse',
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
