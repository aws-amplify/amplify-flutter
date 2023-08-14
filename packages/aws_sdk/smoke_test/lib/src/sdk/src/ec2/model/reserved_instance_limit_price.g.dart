// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instance_limit_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstanceLimitPrice extends ReservedInstanceLimitPrice {
  @override
  final double amount;
  @override
  final CurrencyCodeValues? currencyCode;

  factory _$ReservedInstanceLimitPrice(
          [void Function(ReservedInstanceLimitPriceBuilder)? updates]) =>
      (new ReservedInstanceLimitPriceBuilder()..update(updates))._build();

  _$ReservedInstanceLimitPrice._({required this.amount, this.currencyCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'ReservedInstanceLimitPrice', 'amount');
  }

  @override
  ReservedInstanceLimitPrice rebuild(
          void Function(ReservedInstanceLimitPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstanceLimitPriceBuilder toBuilder() =>
      new ReservedInstanceLimitPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstanceLimitPrice &&
        amount == other.amount &&
        currencyCode == other.currencyCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstanceLimitPriceBuilder
    implements
        Builder<ReservedInstanceLimitPrice, ReservedInstanceLimitPriceBuilder> {
  _$ReservedInstanceLimitPrice? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  ReservedInstanceLimitPriceBuilder() {
    ReservedInstanceLimitPrice._init(this);
  }

  ReservedInstanceLimitPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currencyCode = $v.currencyCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstanceLimitPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstanceLimitPrice;
  }

  @override
  void update(void Function(ReservedInstanceLimitPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstanceLimitPrice build() => _build();

  _$ReservedInstanceLimitPrice _build() {
    final _$result = _$v ??
        new _$ReservedInstanceLimitPrice._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'ReservedInstanceLimitPrice', 'amount'),
            currencyCode: currencyCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
