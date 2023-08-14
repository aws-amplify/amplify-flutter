// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_reservation_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetReservationValue extends TargetReservationValue {
  @override
  final ReservationValue? reservationValue;
  @override
  final TargetConfiguration? targetConfiguration;

  factory _$TargetReservationValue(
          [void Function(TargetReservationValueBuilder)? updates]) =>
      (new TargetReservationValueBuilder()..update(updates))._build();

  _$TargetReservationValue._({this.reservationValue, this.targetConfiguration})
      : super._();

  @override
  TargetReservationValue rebuild(
          void Function(TargetReservationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetReservationValueBuilder toBuilder() =>
      new TargetReservationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetReservationValue &&
        reservationValue == other.reservationValue &&
        targetConfiguration == other.targetConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationValue.hashCode);
    _$hash = $jc(_$hash, targetConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetReservationValueBuilder
    implements Builder<TargetReservationValue, TargetReservationValueBuilder> {
  _$TargetReservationValue? _$v;

  ReservationValueBuilder? _reservationValue;
  ReservationValueBuilder get reservationValue =>
      _$this._reservationValue ??= new ReservationValueBuilder();
  set reservationValue(ReservationValueBuilder? reservationValue) =>
      _$this._reservationValue = reservationValue;

  TargetConfigurationBuilder? _targetConfiguration;
  TargetConfigurationBuilder get targetConfiguration =>
      _$this._targetConfiguration ??= new TargetConfigurationBuilder();
  set targetConfiguration(TargetConfigurationBuilder? targetConfiguration) =>
      _$this._targetConfiguration = targetConfiguration;

  TargetReservationValueBuilder();

  TargetReservationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationValue = $v.reservationValue?.toBuilder();
      _targetConfiguration = $v.targetConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetReservationValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetReservationValue;
  }

  @override
  void update(void Function(TargetReservationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetReservationValue build() => _build();

  _$TargetReservationValue _build() {
    _$TargetReservationValue _$result;
    try {
      _$result = _$v ??
          new _$TargetReservationValue._(
              reservationValue: _reservationValue?.build(),
              targetConfiguration: _targetConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservationValue';
        _reservationValue?.build();
        _$failedField = 'targetConfiguration';
        _targetConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TargetReservationValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
