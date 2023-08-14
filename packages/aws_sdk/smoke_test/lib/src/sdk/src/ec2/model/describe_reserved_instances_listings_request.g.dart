// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_listings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesListingsRequest
    extends DescribeReservedInstancesListingsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? reservedInstancesId;
  @override
  final String? reservedInstancesListingId;

  factory _$DescribeReservedInstancesListingsRequest(
          [void Function(DescribeReservedInstancesListingsRequestBuilder)?
              updates]) =>
      (new DescribeReservedInstancesListingsRequestBuilder()..update(updates))
          ._build();

  _$DescribeReservedInstancesListingsRequest._(
      {this.filters, this.reservedInstancesId, this.reservedInstancesListingId})
      : super._();

  @override
  DescribeReservedInstancesListingsRequest rebuild(
          void Function(DescribeReservedInstancesListingsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesListingsRequestBuilder toBuilder() =>
      new DescribeReservedInstancesListingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesListingsRequest &&
        filters == other.filters &&
        reservedInstancesId == other.reservedInstancesId &&
        reservedInstancesListingId == other.reservedInstancesListingId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jc(_$hash, reservedInstancesListingId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesListingsRequestBuilder
    implements
        Builder<DescribeReservedInstancesListingsRequest,
            DescribeReservedInstancesListingsRequestBuilder> {
  _$DescribeReservedInstancesListingsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  String? _reservedInstancesListingId;
  String? get reservedInstancesListingId => _$this._reservedInstancesListingId;
  set reservedInstancesListingId(String? reservedInstancesListingId) =>
      _$this._reservedInstancesListingId = reservedInstancesListingId;

  DescribeReservedInstancesListingsRequestBuilder();

  DescribeReservedInstancesListingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _reservedInstancesId = $v.reservedInstancesId;
      _reservedInstancesListingId = $v.reservedInstancesListingId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesListingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesListingsRequest;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesListingsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesListingsRequest build() => _build();

  _$DescribeReservedInstancesListingsRequest _build() {
    _$DescribeReservedInstancesListingsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesListingsRequest._(
              filters: _filters?.build(),
              reservedInstancesId: reservedInstancesId,
              reservedInstancesListingId: reservedInstancesListingId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesListingsRequest',
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
