// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instance_reservation_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstanceReservationValue
    extends ReservedInstanceReservationValue {
  @override
  final ReservationValue? reservationValue;
  @override
  final String? reservedInstanceId;

  factory _$ReservedInstanceReservationValue(
          [void Function(ReservedInstanceReservationValueBuilder)? updates]) =>
      (new ReservedInstanceReservationValueBuilder()..update(updates))._build();

  _$ReservedInstanceReservationValue._(
      {this.reservationValue, this.reservedInstanceId})
      : super._();

  @override
  ReservedInstanceReservationValue rebuild(
          void Function(ReservedInstanceReservationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstanceReservationValueBuilder toBuilder() =>
      new ReservedInstanceReservationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstanceReservationValue &&
        reservationValue == other.reservationValue &&
        reservedInstanceId == other.reservedInstanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationValue.hashCode);
    _$hash = $jc(_$hash, reservedInstanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstanceReservationValueBuilder
    implements
        Builder<ReservedInstanceReservationValue,
            ReservedInstanceReservationValueBuilder> {
  _$ReservedInstanceReservationValue? _$v;

  ReservationValueBuilder? _reservationValue;
  ReservationValueBuilder get reservationValue =>
      _$this._reservationValue ??= new ReservationValueBuilder();
  set reservationValue(ReservationValueBuilder? reservationValue) =>
      _$this._reservationValue = reservationValue;

  String? _reservedInstanceId;
  String? get reservedInstanceId => _$this._reservedInstanceId;
  set reservedInstanceId(String? reservedInstanceId) =>
      _$this._reservedInstanceId = reservedInstanceId;

  ReservedInstanceReservationValueBuilder();

  ReservedInstanceReservationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationValue = $v.reservationValue?.toBuilder();
      _reservedInstanceId = $v.reservedInstanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstanceReservationValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstanceReservationValue;
  }

  @override
  void update(void Function(ReservedInstanceReservationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstanceReservationValue build() => _build();

  _$ReservedInstanceReservationValue _build() {
    _$ReservedInstanceReservationValue _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstanceReservationValue._(
              reservationValue: _reservationValue?.build(),
              reservedInstanceId: reservedInstanceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservationValue';
        _reservationValue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstanceReservationValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
