// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_capacity_reservation_fleet_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelCapacityReservationFleetError
    extends CancelCapacityReservationFleetError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$CancelCapacityReservationFleetError(
          [void Function(CancelCapacityReservationFleetErrorBuilder)?
              updates]) =>
      (new CancelCapacityReservationFleetErrorBuilder()..update(updates))
          ._build();

  _$CancelCapacityReservationFleetError._({this.code, this.message})
      : super._();

  @override
  CancelCapacityReservationFleetError rebuild(
          void Function(CancelCapacityReservationFleetErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelCapacityReservationFleetErrorBuilder toBuilder() =>
      new CancelCapacityReservationFleetErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelCapacityReservationFleetError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelCapacityReservationFleetErrorBuilder
    implements
        Builder<CancelCapacityReservationFleetError,
            CancelCapacityReservationFleetErrorBuilder> {
  _$CancelCapacityReservationFleetError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CancelCapacityReservationFleetErrorBuilder();

  CancelCapacityReservationFleetErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelCapacityReservationFleetError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelCapacityReservationFleetError;
  }

  @override
  void update(
      void Function(CancelCapacityReservationFleetErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelCapacityReservationFleetError build() => _build();

  _$CancelCapacityReservationFleetError _build() {
    final _$result = _$v ??
        new _$CancelCapacityReservationFleetError._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
