// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PricingDetail extends PricingDetail {
  @override
  final int count;
  @override
  final double price;

  factory _$PricingDetail([void Function(PricingDetailBuilder)? updates]) =>
      (new PricingDetailBuilder()..update(updates))._build();

  _$PricingDetail._({required this.count, required this.price}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, r'PricingDetail', 'count');
    BuiltValueNullFieldError.checkNotNull(price, r'PricingDetail', 'price');
  }

  @override
  PricingDetail rebuild(void Function(PricingDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingDetailBuilder toBuilder() => new PricingDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PricingDetail &&
        count == other.count &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PricingDetailBuilder
    implements Builder<PricingDetail, PricingDetailBuilder> {
  _$PricingDetail? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  PricingDetailBuilder() {
    PricingDetail._init(this);
  }

  PricingDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PricingDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PricingDetail;
  }

  @override
  void update(void Function(PricingDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PricingDetail build() => _build();

  _$PricingDetail _build() {
    final _$result = _$v ??
        new _$PricingDetail._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PricingDetail', 'count'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PricingDetail', 'price'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
