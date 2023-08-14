// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_capacity_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCapacityReservationResult
    extends CreateCapacityReservationResult {
  @override
  final CapacityReservation? capacityReservation;

  factory _$CreateCapacityReservationResult(
          [void Function(CreateCapacityReservationResultBuilder)? updates]) =>
      (new CreateCapacityReservationResultBuilder()..update(updates))._build();

  _$CreateCapacityReservationResult._({this.capacityReservation}) : super._();

  @override
  CreateCapacityReservationResult rebuild(
          void Function(CreateCapacityReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCapacityReservationResultBuilder toBuilder() =>
      new CreateCapacityReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCapacityReservationResult &&
        capacityReservation == other.capacityReservation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCapacityReservationResultBuilder
    implements
        Builder<CreateCapacityReservationResult,
            CreateCapacityReservationResultBuilder> {
  _$CreateCapacityReservationResult? _$v;

  CapacityReservationBuilder? _capacityReservation;
  CapacityReservationBuilder get capacityReservation =>
      _$this._capacityReservation ??= new CapacityReservationBuilder();
  set capacityReservation(CapacityReservationBuilder? capacityReservation) =>
      _$this._capacityReservation = capacityReservation;

  CreateCapacityReservationResultBuilder();

  CreateCapacityReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservation = $v.capacityReservation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCapacityReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCapacityReservationResult;
  }

  @override
  void update(void Function(CreateCapacityReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCapacityReservationResult build() => _build();

  _$CreateCapacityReservationResult _build() {
    _$CreateCapacityReservationResult _$result;
    try {
      _$result = _$v ??
          new _$CreateCapacityReservationResult._(
              capacityReservation: _capacityReservation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservation';
        _capacityReservation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCapacityReservationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
