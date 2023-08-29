// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_capacity_reservation_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateCapacityReservationSpecificationRequest
    extends LaunchTemplateCapacityReservationSpecificationRequest {
  @override
  final CapacityReservationPreference? capacityReservationPreference;
  @override
  final CapacityReservationTarget? capacityReservationTarget;

  factory _$LaunchTemplateCapacityReservationSpecificationRequest(
          [void Function(
                  LaunchTemplateCapacityReservationSpecificationRequestBuilder)?
              updates]) =>
      (new LaunchTemplateCapacityReservationSpecificationRequestBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateCapacityReservationSpecificationRequest._(
      {this.capacityReservationPreference, this.capacityReservationTarget})
      : super._();

  @override
  LaunchTemplateCapacityReservationSpecificationRequest rebuild(
          void Function(
                  LaunchTemplateCapacityReservationSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateCapacityReservationSpecificationRequestBuilder toBuilder() =>
      new LaunchTemplateCapacityReservationSpecificationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateCapacityReservationSpecificationRequest &&
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

class LaunchTemplateCapacityReservationSpecificationRequestBuilder
    implements
        Builder<LaunchTemplateCapacityReservationSpecificationRequest,
            LaunchTemplateCapacityReservationSpecificationRequestBuilder> {
  _$LaunchTemplateCapacityReservationSpecificationRequest? _$v;

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

  LaunchTemplateCapacityReservationSpecificationRequestBuilder();

  LaunchTemplateCapacityReservationSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationPreference = $v.capacityReservationPreference;
      _capacityReservationTarget = $v.capacityReservationTarget?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateCapacityReservationSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateCapacityReservationSpecificationRequest;
  }

  @override
  void update(
      void Function(
              LaunchTemplateCapacityReservationSpecificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateCapacityReservationSpecificationRequest build() => _build();

  _$LaunchTemplateCapacityReservationSpecificationRequest _build() {
    _$LaunchTemplateCapacityReservationSpecificationRequest _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateCapacityReservationSpecificationRequest._(
              capacityReservationPreference: capacityReservationPreference,
              capacityReservationTarget: _capacityReservationTarget?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationTarget';
        _capacityReservationTarget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateCapacityReservationSpecificationRequest',
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
