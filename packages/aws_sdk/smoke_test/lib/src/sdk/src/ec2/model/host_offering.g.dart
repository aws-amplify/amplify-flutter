// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_offering.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostOffering extends HostOffering {
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final int duration;
  @override
  final String? hourlyPrice;
  @override
  final String? instanceFamily;
  @override
  final String? offeringId;
  @override
  final PaymentOption? paymentOption;
  @override
  final String? upfrontPrice;

  factory _$HostOffering([void Function(HostOfferingBuilder)? updates]) =>
      (new HostOfferingBuilder()..update(updates))._build();

  _$HostOffering._(
      {this.currencyCode,
      required this.duration,
      this.hourlyPrice,
      this.instanceFamily,
      this.offeringId,
      this.paymentOption,
      this.upfrontPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        duration, r'HostOffering', 'duration');
  }

  @override
  HostOffering rebuild(void Function(HostOfferingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostOfferingBuilder toBuilder() => new HostOfferingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostOffering &&
        currencyCode == other.currencyCode &&
        duration == other.duration &&
        hourlyPrice == other.hourlyPrice &&
        instanceFamily == other.instanceFamily &&
        offeringId == other.offeringId &&
        paymentOption == other.paymentOption &&
        upfrontPrice == other.upfrontPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jc(_$hash, paymentOption.hashCode);
    _$hash = $jc(_$hash, upfrontPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostOfferingBuilder
    implements Builder<HostOffering, HostOfferingBuilder> {
  _$HostOffering? _$v;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  PaymentOption? _paymentOption;
  PaymentOption? get paymentOption => _$this._paymentOption;
  set paymentOption(PaymentOption? paymentOption) =>
      _$this._paymentOption = paymentOption;

  String? _upfrontPrice;
  String? get upfrontPrice => _$this._upfrontPrice;
  set upfrontPrice(String? upfrontPrice) => _$this._upfrontPrice = upfrontPrice;

  HostOfferingBuilder() {
    HostOffering._init(this);
  }

  HostOfferingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _duration = $v.duration;
      _hourlyPrice = $v.hourlyPrice;
      _instanceFamily = $v.instanceFamily;
      _offeringId = $v.offeringId;
      _paymentOption = $v.paymentOption;
      _upfrontPrice = $v.upfrontPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostOffering other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostOffering;
  }

  @override
  void update(void Function(HostOfferingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostOffering build() => _build();

  _$HostOffering _build() {
    final _$result = _$v ??
        new _$HostOffering._(
            currencyCode: currencyCode,
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'HostOffering', 'duration'),
            hourlyPrice: hourlyPrice,
            instanceFamily: instanceFamily,
            offeringId: offeringId,
            paymentOption: paymentOption,
            upfrontPrice: upfrontPrice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
