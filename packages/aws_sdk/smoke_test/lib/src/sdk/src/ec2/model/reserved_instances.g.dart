// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstances extends ReservedInstances {
  @override
  final String? availabilityZone;
  @override
  final _i2.Int64 duration;
  @override
  final DateTime? end;
  @override
  final double fixedPrice;
  @override
  final int instanceCount;
  @override
  final InstanceType? instanceType;
  @override
  final RiProductDescription? productDescription;
  @override
  final String? reservedInstancesId;
  @override
  final DateTime? start;
  @override
  final ReservedInstanceState? state;
  @override
  final double usagePrice;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final Tenancy? instanceTenancy;
  @override
  final OfferingClassType? offeringClass;
  @override
  final OfferingTypeValues? offeringType;
  @override
  final _i3.BuiltList<RecurringCharge>? recurringCharges;
  @override
  final Scope? scope;
  @override
  final _i3.BuiltList<Tag>? tags;

  factory _$ReservedInstances(
          [void Function(ReservedInstancesBuilder)? updates]) =>
      (new ReservedInstancesBuilder()..update(updates))._build();

  _$ReservedInstances._(
      {this.availabilityZone,
      required this.duration,
      this.end,
      required this.fixedPrice,
      required this.instanceCount,
      this.instanceType,
      this.productDescription,
      this.reservedInstancesId,
      this.start,
      this.state,
      required this.usagePrice,
      this.currencyCode,
      this.instanceTenancy,
      this.offeringClass,
      this.offeringType,
      this.recurringCharges,
      this.scope,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        duration, r'ReservedInstances', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        fixedPrice, r'ReservedInstances', 'fixedPrice');
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'ReservedInstances', 'instanceCount');
    BuiltValueNullFieldError.checkNotNull(
        usagePrice, r'ReservedInstances', 'usagePrice');
  }

  @override
  ReservedInstances rebuild(void Function(ReservedInstancesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesBuilder toBuilder() =>
      new ReservedInstancesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstances &&
        availabilityZone == other.availabilityZone &&
        duration == other.duration &&
        end == other.end &&
        fixedPrice == other.fixedPrice &&
        instanceCount == other.instanceCount &&
        instanceType == other.instanceType &&
        productDescription == other.productDescription &&
        reservedInstancesId == other.reservedInstancesId &&
        start == other.start &&
        state == other.state &&
        usagePrice == other.usagePrice &&
        currencyCode == other.currencyCode &&
        instanceTenancy == other.instanceTenancy &&
        offeringClass == other.offeringClass &&
        offeringType == other.offeringType &&
        recurringCharges == other.recurringCharges &&
        scope == other.scope &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, fixedPrice.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, usagePrice.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, offeringClass.hashCode);
    _$hash = $jc(_$hash, offeringType.hashCode);
    _$hash = $jc(_$hash, recurringCharges.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesBuilder
    implements Builder<ReservedInstances, ReservedInstancesBuilder> {
  _$ReservedInstances? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i2.Int64? _duration;
  _i2.Int64? get duration => _$this._duration;
  set duration(_i2.Int64? duration) => _$this._duration = duration;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  double? _fixedPrice;
  double? get fixedPrice => _$this._fixedPrice;
  set fixedPrice(double? fixedPrice) => _$this._fixedPrice = fixedPrice;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  RiProductDescription? _productDescription;
  RiProductDescription? get productDescription => _$this._productDescription;
  set productDescription(RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  ReservedInstanceState? _state;
  ReservedInstanceState? get state => _$this._state;
  set state(ReservedInstanceState? state) => _$this._state = state;

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

  OfferingClassType? _offeringClass;
  OfferingClassType? get offeringClass => _$this._offeringClass;
  set offeringClass(OfferingClassType? offeringClass) =>
      _$this._offeringClass = offeringClass;

  OfferingTypeValues? _offeringType;
  OfferingTypeValues? get offeringType => _$this._offeringType;
  set offeringType(OfferingTypeValues? offeringType) =>
      _$this._offeringType = offeringType;

  _i3.ListBuilder<RecurringCharge>? _recurringCharges;
  _i3.ListBuilder<RecurringCharge> get recurringCharges =>
      _$this._recurringCharges ??= new _i3.ListBuilder<RecurringCharge>();
  set recurringCharges(_i3.ListBuilder<RecurringCharge>? recurringCharges) =>
      _$this._recurringCharges = recurringCharges;

  Scope? _scope;
  Scope? get scope => _$this._scope;
  set scope(Scope? scope) => _$this._scope = scope;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ReservedInstancesBuilder() {
    ReservedInstances._init(this);
  }

  ReservedInstancesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _duration = $v.duration;
      _end = $v.end;
      _fixedPrice = $v.fixedPrice;
      _instanceCount = $v.instanceCount;
      _instanceType = $v.instanceType;
      _productDescription = $v.productDescription;
      _reservedInstancesId = $v.reservedInstancesId;
      _start = $v.start;
      _state = $v.state;
      _usagePrice = $v.usagePrice;
      _currencyCode = $v.currencyCode;
      _instanceTenancy = $v.instanceTenancy;
      _offeringClass = $v.offeringClass;
      _offeringType = $v.offeringType;
      _recurringCharges = $v.recurringCharges?.toBuilder();
      _scope = $v.scope;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstances other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstances;
  }

  @override
  void update(void Function(ReservedInstancesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstances build() => _build();

  _$ReservedInstances _build() {
    _$ReservedInstances _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstances._(
              availabilityZone: availabilityZone,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'ReservedInstances', 'duration'),
              end: end,
              fixedPrice: BuiltValueNullFieldError.checkNotNull(
                  fixedPrice, r'ReservedInstances', 'fixedPrice'),
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount, r'ReservedInstances', 'instanceCount'),
              instanceType: instanceType,
              productDescription: productDescription,
              reservedInstancesId: reservedInstancesId,
              start: start,
              state: state,
              usagePrice: BuiltValueNullFieldError.checkNotNull(
                  usagePrice, r'ReservedInstances', 'usagePrice'),
              currencyCode: currencyCode,
              instanceTenancy: instanceTenancy,
              offeringClass: offeringClass,
              offeringType: offeringType,
              recurringCharges: _recurringCharges?.build(),
              scope: scope,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recurringCharges';
        _recurringCharges?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstances', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
