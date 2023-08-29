// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceSchedule extends PriceSchedule {
  @override
  final bool active;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final double price;
  @override
  final _i2.Int64 term;

  factory _$PriceSchedule([void Function(PriceScheduleBuilder)? updates]) =>
      (new PriceScheduleBuilder()..update(updates))._build();

  _$PriceSchedule._(
      {required this.active,
      this.currencyCode,
      required this.price,
      required this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(active, r'PriceSchedule', 'active');
    BuiltValueNullFieldError.checkNotNull(price, r'PriceSchedule', 'price');
    BuiltValueNullFieldError.checkNotNull(term, r'PriceSchedule', 'term');
  }

  @override
  PriceSchedule rebuild(void Function(PriceScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceScheduleBuilder toBuilder() => new PriceScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceSchedule &&
        active == other.active &&
        currencyCode == other.currencyCode &&
        price == other.price &&
        term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PriceScheduleBuilder
    implements Builder<PriceSchedule, PriceScheduleBuilder> {
  _$PriceSchedule? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  _i2.Int64? _term;
  _i2.Int64? get term => _$this._term;
  set term(_i2.Int64? term) => _$this._term = term;

  PriceScheduleBuilder() {
    PriceSchedule._init(this);
  }

  PriceScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _currencyCode = $v.currencyCode;
      _price = $v.price;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceSchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceSchedule;
  }

  @override
  void update(void Function(PriceScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceSchedule build() => _build();

  _$PriceSchedule _build() {
    final _$result = _$v ??
        new _$PriceSchedule._(
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'PriceSchedule', 'active'),
            currencyCode: currencyCode,
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PriceSchedule', 'price'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'PriceSchedule', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
