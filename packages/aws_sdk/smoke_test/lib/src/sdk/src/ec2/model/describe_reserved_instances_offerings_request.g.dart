// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_offerings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesOfferingsRequest
    extends DescribeReservedInstancesOfferingsRequest {
  @override
  final String? availabilityZone;
  @override
  final _i4.BuiltList<Filter>? filters;
  @override
  final bool includeMarketplace;
  @override
  final InstanceType? instanceType;
  @override
  final _i3.Int64 maxDuration;
  @override
  final int maxInstanceCount;
  @override
  final _i3.Int64 minDuration;
  @override
  final OfferingClassType? offeringClass;
  @override
  final RiProductDescription? productDescription;
  @override
  final _i4.BuiltList<String>? reservedInstancesOfferingIds;
  @override
  final bool dryRun;
  @override
  final Tenancy? instanceTenancy;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final OfferingTypeValues? offeringType;

  factory _$DescribeReservedInstancesOfferingsRequest(
          [void Function(DescribeReservedInstancesOfferingsRequestBuilder)?
              updates]) =>
      (new DescribeReservedInstancesOfferingsRequestBuilder()..update(updates))
          ._build();

  _$DescribeReservedInstancesOfferingsRequest._(
      {this.availabilityZone,
      this.filters,
      required this.includeMarketplace,
      this.instanceType,
      required this.maxDuration,
      required this.maxInstanceCount,
      required this.minDuration,
      this.offeringClass,
      this.productDescription,
      this.reservedInstancesOfferingIds,
      required this.dryRun,
      this.instanceTenancy,
      required this.maxResults,
      this.nextToken,
      this.offeringType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(includeMarketplace,
        r'DescribeReservedInstancesOfferingsRequest', 'includeMarketplace');
    BuiltValueNullFieldError.checkNotNull(maxDuration,
        r'DescribeReservedInstancesOfferingsRequest', 'maxDuration');
    BuiltValueNullFieldError.checkNotNull(maxInstanceCount,
        r'DescribeReservedInstancesOfferingsRequest', 'maxInstanceCount');
    BuiltValueNullFieldError.checkNotNull(minDuration,
        r'DescribeReservedInstancesOfferingsRequest', 'minDuration');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeReservedInstancesOfferingsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeReservedInstancesOfferingsRequest', 'maxResults');
  }

  @override
  DescribeReservedInstancesOfferingsRequest rebuild(
          void Function(DescribeReservedInstancesOfferingsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesOfferingsRequestBuilder toBuilder() =>
      new DescribeReservedInstancesOfferingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesOfferingsRequest &&
        availabilityZone == other.availabilityZone &&
        filters == other.filters &&
        includeMarketplace == other.includeMarketplace &&
        instanceType == other.instanceType &&
        maxDuration == other.maxDuration &&
        maxInstanceCount == other.maxInstanceCount &&
        minDuration == other.minDuration &&
        offeringClass == other.offeringClass &&
        productDescription == other.productDescription &&
        reservedInstancesOfferingIds == other.reservedInstancesOfferingIds &&
        dryRun == other.dryRun &&
        instanceTenancy == other.instanceTenancy &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        offeringType == other.offeringType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, includeMarketplace.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, maxDuration.hashCode);
    _$hash = $jc(_$hash, maxInstanceCount.hashCode);
    _$hash = $jc(_$hash, minDuration.hashCode);
    _$hash = $jc(_$hash, offeringClass.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, reservedInstancesOfferingIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, offeringType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesOfferingsRequestBuilder
    implements
        Builder<DescribeReservedInstancesOfferingsRequest,
            DescribeReservedInstancesOfferingsRequestBuilder> {
  _$DescribeReservedInstancesOfferingsRequest? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i4.ListBuilder<Filter>? _filters;
  _i4.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<Filter>();
  set filters(_i4.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _includeMarketplace;
  bool? get includeMarketplace => _$this._includeMarketplace;
  set includeMarketplace(bool? includeMarketplace) =>
      _$this._includeMarketplace = includeMarketplace;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  _i3.Int64? _maxDuration;
  _i3.Int64? get maxDuration => _$this._maxDuration;
  set maxDuration(_i3.Int64? maxDuration) => _$this._maxDuration = maxDuration;

  int? _maxInstanceCount;
  int? get maxInstanceCount => _$this._maxInstanceCount;
  set maxInstanceCount(int? maxInstanceCount) =>
      _$this._maxInstanceCount = maxInstanceCount;

  _i3.Int64? _minDuration;
  _i3.Int64? get minDuration => _$this._minDuration;
  set minDuration(_i3.Int64? minDuration) => _$this._minDuration = minDuration;

  OfferingClassType? _offeringClass;
  OfferingClassType? get offeringClass => _$this._offeringClass;
  set offeringClass(OfferingClassType? offeringClass) =>
      _$this._offeringClass = offeringClass;

  RiProductDescription? _productDescription;
  RiProductDescription? get productDescription => _$this._productDescription;
  set productDescription(RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  _i4.ListBuilder<String>? _reservedInstancesOfferingIds;
  _i4.ListBuilder<String> get reservedInstancesOfferingIds =>
      _$this._reservedInstancesOfferingIds ??= new _i4.ListBuilder<String>();
  set reservedInstancesOfferingIds(
          _i4.ListBuilder<String>? reservedInstancesOfferingIds) =>
      _$this._reservedInstancesOfferingIds = reservedInstancesOfferingIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  Tenancy? _instanceTenancy;
  Tenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(Tenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  OfferingTypeValues? _offeringType;
  OfferingTypeValues? get offeringType => _$this._offeringType;
  set offeringType(OfferingTypeValues? offeringType) =>
      _$this._offeringType = offeringType;

  DescribeReservedInstancesOfferingsRequestBuilder() {
    DescribeReservedInstancesOfferingsRequest._init(this);
  }

  DescribeReservedInstancesOfferingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _filters = $v.filters?.toBuilder();
      _includeMarketplace = $v.includeMarketplace;
      _instanceType = $v.instanceType;
      _maxDuration = $v.maxDuration;
      _maxInstanceCount = $v.maxInstanceCount;
      _minDuration = $v.minDuration;
      _offeringClass = $v.offeringClass;
      _productDescription = $v.productDescription;
      _reservedInstancesOfferingIds =
          $v.reservedInstancesOfferingIds?.toBuilder();
      _dryRun = $v.dryRun;
      _instanceTenancy = $v.instanceTenancy;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _offeringType = $v.offeringType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesOfferingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesOfferingsRequest;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesOfferingsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesOfferingsRequest build() => _build();

  _$DescribeReservedInstancesOfferingsRequest _build() {
    _$DescribeReservedInstancesOfferingsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesOfferingsRequest._(
              availabilityZone: availabilityZone,
              filters: _filters?.build(),
              includeMarketplace: BuiltValueNullFieldError.checkNotNull(
                  includeMarketplace,
                  r'DescribeReservedInstancesOfferingsRequest',
                  'includeMarketplace'),
              instanceType: instanceType,
              maxDuration: BuiltValueNullFieldError.checkNotNull(
                  maxDuration, r'DescribeReservedInstancesOfferingsRequest', 'maxDuration'),
              maxInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  maxInstanceCount, r'DescribeReservedInstancesOfferingsRequest', 'maxInstanceCount'),
              minDuration: BuiltValueNullFieldError.checkNotNull(
                  minDuration, r'DescribeReservedInstancesOfferingsRequest', 'minDuration'),
              offeringClass: offeringClass,
              productDescription: productDescription,
              reservedInstancesOfferingIds:
                  _reservedInstancesOfferingIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeReservedInstancesOfferingsRequest', 'dryRun'),
              instanceTenancy: instanceTenancy,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeReservedInstancesOfferingsRequest', 'maxResults'),
              nextToken: nextToken,
              offeringType: offeringType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'reservedInstancesOfferingIds';
        _reservedInstancesOfferingIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesOfferingsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
