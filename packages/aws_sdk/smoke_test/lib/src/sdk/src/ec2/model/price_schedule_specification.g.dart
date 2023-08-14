// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_schedule_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PriceScheduleSpecification extends PriceScheduleSpecification {
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final double price;
  @override
  final _i2.Int64 term;

  factory _$PriceScheduleSpecification(
          [void Function(PriceScheduleSpecificationBuilder)? updates]) =>
      (new PriceScheduleSpecificationBuilder()..update(updates))._build();

  _$PriceScheduleSpecification._(
      {this.currencyCode, required this.price, required this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        price, r'PriceScheduleSpecification', 'price');
    BuiltValueNullFieldError.checkNotNull(
        term, r'PriceScheduleSpecification', 'term');
  }

  @override
  PriceScheduleSpecification rebuild(
          void Function(PriceScheduleSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceScheduleSpecificationBuilder toBuilder() =>
      new PriceScheduleSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PriceScheduleSpecification &&
        currencyCode == other.currencyCode &&
        price == other.price &&
        term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PriceScheduleSpecificationBuilder
    implements
        Builder<PriceScheduleSpecification, PriceScheduleSpecificationBuilder> {
  _$PriceScheduleSpecification? _$v;

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

  PriceScheduleSpecificationBuilder() {
    PriceScheduleSpecification._init(this);
  }

  PriceScheduleSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _price = $v.price;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PriceScheduleSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PriceScheduleSpecification;
  }

  @override
  void update(void Function(PriceScheduleSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PriceScheduleSpecification build() => _build();

  _$PriceScheduleSpecification _build() {
    final _$result = _$v ??
        new _$PriceScheduleSpecification._(
            currencyCode: currencyCode,
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PriceScheduleSpecification', 'price'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'PriceScheduleSpecification', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
