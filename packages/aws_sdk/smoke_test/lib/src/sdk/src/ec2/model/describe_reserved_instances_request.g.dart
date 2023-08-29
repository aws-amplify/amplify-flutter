// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesRequest
    extends DescribeReservedInstancesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final OfferingClassType? offeringClass;
  @override
  final _i3.BuiltList<String>? reservedInstancesIds;
  @override
  final bool dryRun;
  @override
  final OfferingTypeValues? offeringType;

  factory _$DescribeReservedInstancesRequest(
          [void Function(DescribeReservedInstancesRequestBuilder)? updates]) =>
      (new DescribeReservedInstancesRequestBuilder()..update(updates))._build();

  _$DescribeReservedInstancesRequest._(
      {this.filters,
      this.offeringClass,
      this.reservedInstancesIds,
      required this.dryRun,
      this.offeringType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeReservedInstancesRequest', 'dryRun');
  }

  @override
  DescribeReservedInstancesRequest rebuild(
          void Function(DescribeReservedInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesRequestBuilder toBuilder() =>
      new DescribeReservedInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesRequest &&
        filters == other.filters &&
        offeringClass == other.offeringClass &&
        reservedInstancesIds == other.reservedInstancesIds &&
        dryRun == other.dryRun &&
        offeringType == other.offeringType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, offeringClass.hashCode);
    _$hash = $jc(_$hash, reservedInstancesIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, offeringType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesRequestBuilder
    implements
        Builder<DescribeReservedInstancesRequest,
            DescribeReservedInstancesRequestBuilder> {
  _$DescribeReservedInstancesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  OfferingClassType? _offeringClass;
  OfferingClassType? get offeringClass => _$this._offeringClass;
  set offeringClass(OfferingClassType? offeringClass) =>
      _$this._offeringClass = offeringClass;

  _i3.ListBuilder<String>? _reservedInstancesIds;
  _i3.ListBuilder<String> get reservedInstancesIds =>
      _$this._reservedInstancesIds ??= new _i3.ListBuilder<String>();
  set reservedInstancesIds(_i3.ListBuilder<String>? reservedInstancesIds) =>
      _$this._reservedInstancesIds = reservedInstancesIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  OfferingTypeValues? _offeringType;
  OfferingTypeValues? get offeringType => _$this._offeringType;
  set offeringType(OfferingTypeValues? offeringType) =>
      _$this._offeringType = offeringType;

  DescribeReservedInstancesRequestBuilder() {
    DescribeReservedInstancesRequest._init(this);
  }

  DescribeReservedInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _offeringClass = $v.offeringClass;
      _reservedInstancesIds = $v.reservedInstancesIds?.toBuilder();
      _dryRun = $v.dryRun;
      _offeringType = $v.offeringType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesRequest;
  }

  @override
  void update(void Function(DescribeReservedInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesRequest build() => _build();

  _$DescribeReservedInstancesRequest _build() {
    _$DescribeReservedInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesRequest._(
              filters: _filters?.build(),
              offeringClass: offeringClass,
              reservedInstancesIds: _reservedInstancesIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeReservedInstancesRequest', 'dryRun'),
              offeringType: offeringType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'reservedInstancesIds';
        _reservedInstancesIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
