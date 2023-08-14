// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotPrice extends SpotPrice {
  @override
  final String? availabilityZone;
  @override
  final InstanceType? instanceType;
  @override
  final RiProductDescription? productDescription;
  @override
  final String? spotPrice;
  @override
  final DateTime? timestamp;

  factory _$SpotPrice([void Function(SpotPriceBuilder)? updates]) =>
      (new SpotPriceBuilder()..update(updates))._build();

  _$SpotPrice._(
      {this.availabilityZone,
      this.instanceType,
      this.productDescription,
      this.spotPrice,
      this.timestamp})
      : super._();

  @override
  SpotPrice rebuild(void Function(SpotPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotPriceBuilder toBuilder() => new SpotPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotPrice &&
        availabilityZone == other.availabilityZone &&
        instanceType == other.instanceType &&
        productDescription == other.productDescription &&
        spotPrice == other.spotPrice &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotPriceBuilder implements Builder<SpotPrice, SpotPriceBuilder> {
  _$SpotPrice? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  RiProductDescription? _productDescription;
  RiProductDescription? get productDescription => _$this._productDescription;
  set productDescription(RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  SpotPriceBuilder();

  SpotPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _instanceType = $v.instanceType;
      _productDescription = $v.productDescription;
      _spotPrice = $v.spotPrice;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotPrice;
  }

  @override
  void update(void Function(SpotPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotPrice build() => _build();

  _$SpotPrice _build() {
    final _$result = _$v ??
        new _$SpotPrice._(
            availabilityZone: availabilityZone,
            instanceType: instanceType,
            productDescription: productDescription,
            spotPrice: spotPrice,
            timestamp: timestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
