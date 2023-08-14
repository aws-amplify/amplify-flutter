// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_offering.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesOffering extends ReservedInstancesOffering {
  @override
  final String? availabilityZone;
  @override
  final _i2.Int64 duration;
  @override
  final double fixedPrice;
  @override
  final InstanceType? instanceType;
  @override
  final RiProductDescription? productDescription;
  @override
  final String? reservedInstancesOfferingId;
  @override
  final double usagePrice;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final Tenancy? instanceTenancy;
  @override
  final bool marketplace;
  @override
  final OfferingClassType? offeringClass;
  @override
  final OfferingTypeValues? offeringType;
  @override
  final _i3.BuiltList<PricingDetail>? pricingDetails;
  @override
  final _i3.BuiltList<RecurringCharge>? recurringCharges;
  @override
  final Scope? scope;

  factory _$ReservedInstancesOffering(
          [void Function(ReservedInstancesOfferingBuilder)? updates]) =>
      (new ReservedInstancesOfferingBuilder()..update(updates))._build();

  _$ReservedInstancesOffering._(
      {this.availabilityZone,
      required this.duration,
      required this.fixedPrice,
      this.instanceType,
      this.productDescription,
      this.reservedInstancesOfferingId,
      required this.usagePrice,
      this.currencyCode,
      this.instanceTenancy,
      required this.marketplace,
      this.offeringClass,
      this.offeringType,
      this.pricingDetails,
      this.recurringCharges,
      this.scope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        duration, r'ReservedInstancesOffering', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        fixedPrice, r'ReservedInstancesOffering', 'fixedPrice');
    BuiltValueNullFieldError.checkNotNull(
        usagePrice, r'ReservedInstancesOffering', 'usagePrice');
    BuiltValueNullFieldError.checkNotNull(
        marketplace, r'ReservedInstancesOffering', 'marketplace');
  }

  @override
  ReservedInstancesOffering rebuild(
          void Function(ReservedInstancesOfferingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesOfferingBuilder toBuilder() =>
      new ReservedInstancesOfferingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesOffering &&
        availabilityZone == other.availabilityZone &&
        duration == other.duration &&
        fixedPrice == other.fixedPrice &&
        instanceType == other.instanceType &&
        productDescription == other.productDescription &&
        reservedInstancesOfferingId == other.reservedInstancesOfferingId &&
        usagePrice == other.usagePrice &&
        currencyCode == other.currencyCode &&
        instanceTenancy == other.instanceTenancy &&
        marketplace == other.marketplace &&
        offeringClass == other.offeringClass &&
        offeringType == other.offeringType &&
        pricingDetails == other.pricingDetails &&
        recurringCharges == other.recurringCharges &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, fixedPrice.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, reservedInstancesOfferingId.hashCode);
    _$hash = $jc(_$hash, usagePrice.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, marketplace.hashCode);
    _$hash = $jc(_$hash, offeringClass.hashCode);
    _$hash = $jc(_$hash, offeringType.hashCode);
    _$hash = $jc(_$hash, pricingDetails.hashCode);
    _$hash = $jc(_$hash, recurringCharges.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesOfferingBuilder
    implements
        Builder<ReservedInstancesOffering, ReservedInstancesOfferingBuilder> {
  _$ReservedInstancesOffering? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i2.Int64? _duration;
  _i2.Int64? get duration => _$this._duration;
  set duration(_i2.Int64? duration) => _$this._duration = duration;

  double? _fixedPrice;
  double? get fixedPrice => _$this._fixedPrice;
  set fixedPrice(double? fixedPrice) => _$this._fixedPrice = fixedPrice;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  RiProductDescription? _productDescription;
  RiProductDescription? get productDescription => _$this._productDescription;
  set productDescription(RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  String? _reservedInstancesOfferingId;
  String? get reservedInstancesOfferingId =>
      _$this._reservedInstancesOfferingId;
  set reservedInstancesOfferingId(String? reservedInstancesOfferingId) =>
      _$this._reservedInstancesOfferingId = reservedInstancesOfferingId;

  double? _usagePrice;
  double? get usagePrice => _$this._usagePrice;
  set usagePrice(double? usagePrice) => _$this._usagePrice = usagePrice;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  Tenancy? _instanceTenancy;
  Tenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(Tenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  bool? _marketplace;
  bool? get marketplace => _$this._marketplace;
  set marketplace(bool? marketplace) => _$this._marketplace = marketplace;

  OfferingClassType? _offeringClass;
  OfferingClassType? get offeringClass => _$this._offeringClass;
  set offeringClass(OfferingClassType? offeringClass) =>
      _$this._offeringClass = offeringClass;

  OfferingTypeValues? _offeringType;
  OfferingTypeValues? get offeringType => _$this._offeringType;
  set offeringType(OfferingTypeValues? offeringType) =>
      _$this._offeringType = offeringType;

  _i3.ListBuilder<PricingDetail>? _pricingDetails;
  _i3.ListBuilder<PricingDetail> get pricingDetails =>
      _$this._pricingDetails ??= new _i3.ListBuilder<PricingDetail>();
  set pricingDetails(_i3.ListBuilder<PricingDetail>? pricingDetails) =>
      _$this._pricingDetails = pricingDetails;

  _i3.ListBuilder<RecurringCharge>? _recurringCharges;
  _i3.ListBuilder<RecurringCharge> get recurringCharges =>
      _$this._recurringCharges ??= new _i3.ListBuilder<RecurringCharge>();
  set recurringCharges(_i3.ListBuilder<RecurringCharge>? recurringCharges) =>
      _$this._recurringCharges = recurringCharges;

  Scope? _scope;
  Scope? get scope => _$this._scope;
  set scope(Scope? scope) => _$this._scope = scope;

  ReservedInstancesOfferingBuilder() {
    ReservedInstancesOffering._init(this);
  }

  ReservedInstancesOfferingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _duration = $v.duration;
      _fixedPrice = $v.fixedPrice;
      _instanceType = $v.instanceType;
      _productDescription = $v.productDescription;
      _reservedInstancesOfferingId = $v.reservedInstancesOfferingId;
      _usagePrice = $v.usagePrice;
      _currencyCode = $v.currencyCode;
      _instanceTenancy = $v.instanceTenancy;
      _marketplace = $v.marketplace;
      _offeringClass = $v.offeringClass;
      _offeringType = $v.offeringType;
      _pricingDetails = $v.pricingDetails?.toBuilder();
      _recurringCharges = $v.recurringCharges?.toBuilder();
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesOffering other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesOffering;
  }

  @override
  void update(void Function(ReservedInstancesOfferingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesOffering build() => _build();

  _$ReservedInstancesOffering _build() {
    _$ReservedInstancesOffering _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstancesOffering._(
              availabilityZone: availabilityZone,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'ReservedInstancesOffering', 'duration'),
              fixedPrice: BuiltValueNullFieldError.checkNotNull(
                  fixedPrice, r'ReservedInstancesOffering', 'fixedPrice'),
              instanceType: instanceType,
              productDescription: productDescription,
              reservedInstancesOfferingId: reservedInstancesOfferingId,
              usagePrice: BuiltValueNullFieldError.checkNotNull(
                  usagePrice, r'ReservedInstancesOffering', 'usagePrice'),
              currencyCode: currencyCode,
              instanceTenancy: instanceTenancy,
              marketplace: BuiltValueNullFieldError.checkNotNull(
                  marketplace, r'ReservedInstancesOffering', 'marketplace'),
              offeringClass: offeringClass,
              offeringType: offeringType,
              pricingDetails: _pricingDetails?.build(),
              recurringCharges: _recurringCharges?.build(),
              scope: scope);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pricingDetails';
        _pricingDetails?.build();
        _$failedField = 'recurringCharges';
        _recurringCharges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstancesOffering', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
