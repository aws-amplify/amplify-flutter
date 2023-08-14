// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservationValue extends ReservationValue {
  @override
  final String? hourlyPrice;
  @override
  final String? remainingTotalValue;
  @override
  final String? remainingUpfrontValue;

  factory _$ReservationValue(
          [void Function(ReservationValueBuilder)? updates]) =>
      (new ReservationValueBuilder()..update(updates))._build();

  _$ReservationValue._(
      {this.hourlyPrice, this.remainingTotalValue, this.remainingUpfrontValue})
      : super._();

  @override
  ReservationValue rebuild(void Function(ReservationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationValueBuilder toBuilder() =>
      new ReservationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservationValue &&
        hourlyPrice == other.hourlyPrice &&
        remainingTotalValue == other.remainingTotalValue &&
        remainingUpfrontValue == other.remainingUpfrontValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, remainingTotalValue.hashCode);
    _$hash = $jc(_$hash, remainingUpfrontValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservationValueBuilder
    implements Builder<ReservationValue, ReservationValueBuilder> {
  _$ReservationValue? _$v;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  String? _remainingTotalValue;
  String? get remainingTotalValue => _$this._remainingTotalValue;
  set remainingTotalValue(String? remainingTotalValue) =>
      _$this._remainingTotalValue = remainingTotalValue;

  String? _remainingUpfrontValue;
  String? get remainingUpfrontValue => _$this._remainingUpfrontValue;
  set remainingUpfrontValue(String? remainingUpfrontValue) =>
      _$this._remainingUpfrontValue = remainingUpfrontValue;

  ReservationValueBuilder();

  ReservationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hourlyPrice = $v.hourlyPrice;
      _remainingTotalValue = $v.remainingTotalValue;
      _remainingUpfrontValue = $v.remainingUpfrontValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservationValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservationValue;
  }

  @override
  void update(void Function(ReservationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservationValue build() => _build();

  _$ReservationValue _build() {
    final _$result = _$v ??
        new _$ReservationValue._(
            hourlyPrice: hourlyPrice,
            remainingTotalValue: remainingTotalValue,
            remainingUpfrontValue: remainingUpfrontValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
