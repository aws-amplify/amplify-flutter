// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Purchase extends Purchase {
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final int duration;
  @override
  final _i2.BuiltList<String>? hostIdSet;
  @override
  final String? hostReservationId;
  @override
  final String? hourlyPrice;
  @override
  final String? instanceFamily;
  @override
  final PaymentOption? paymentOption;
  @override
  final String? upfrontPrice;

  factory _$Purchase([void Function(PurchaseBuilder)? updates]) =>
      (new PurchaseBuilder()..update(updates))._build();

  _$Purchase._(
      {this.currencyCode,
      required this.duration,
      this.hostIdSet,
      this.hostReservationId,
      this.hourlyPrice,
      this.instanceFamily,
      this.paymentOption,
      this.upfrontPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(duration, r'Purchase', 'duration');
  }

  @override
  Purchase rebuild(void Function(PurchaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseBuilder toBuilder() => new PurchaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Purchase &&
        currencyCode == other.currencyCode &&
        duration == other.duration &&
        hostIdSet == other.hostIdSet &&
        hostReservationId == other.hostReservationId &&
        hourlyPrice == other.hourlyPrice &&
        instanceFamily == other.instanceFamily &&
        paymentOption == other.paymentOption &&
        upfrontPrice == other.upfrontPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, hostIdSet.hashCode);
    _$hash = $jc(_$hash, hostReservationId.hashCode);
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, paymentOption.hashCode);
    _$hash = $jc(_$hash, upfrontPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseBuilder implements Builder<Purchase, PurchaseBuilder> {
  _$Purchase? _$v;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  _i2.ListBuilder<String>? _hostIdSet;
  _i2.ListBuilder<String> get hostIdSet =>
      _$this._hostIdSet ??= new _i2.ListBuilder<String>();
  set hostIdSet(_i2.ListBuilder<String>? hostIdSet) =>
      _$this._hostIdSet = hostIdSet;

  String? _hostReservationId;
  String? get hostReservationId => _$this._hostReservationId;
  set hostReservationId(String? hostReservationId) =>
      _$this._hostReservationId = hostReservationId;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  PaymentOption? _paymentOption;
  PaymentOption? get paymentOption => _$this._paymentOption;
  set paymentOption(PaymentOption? paymentOption) =>
      _$this._paymentOption = paymentOption;

  String? _upfrontPrice;
  String? get upfrontPrice => _$this._upfrontPrice;
  set upfrontPrice(String? upfrontPrice) => _$this._upfrontPrice = upfrontPrice;

  PurchaseBuilder() {
    Purchase._init(this);
  }

  PurchaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _duration = $v.duration;
      _hostIdSet = $v.hostIdSet?.toBuilder();
      _hostReservationId = $v.hostReservationId;
      _hourlyPrice = $v.hourlyPrice;
      _instanceFamily = $v.instanceFamily;
      _paymentOption = $v.paymentOption;
      _upfrontPrice = $v.upfrontPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Purchase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Purchase;
  }

  @override
  void update(void Function(PurchaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Purchase build() => _build();

  _$Purchase _build() {
    _$Purchase _$result;
    try {
      _$result = _$v ??
          new _$Purchase._(
              currencyCode: currencyCode,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'Purchase', 'duration'),
              hostIdSet: _hostIdSet?.build(),
              hostReservationId: hostReservationId,
              hourlyPrice: hourlyPrice,
              instanceFamily: instanceFamily,
              paymentOption: paymentOption,
              upfrontPrice: upfrontPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIdSet';
        _hostIdSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Purchase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
