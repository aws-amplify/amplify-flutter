// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_listings_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesListingsResult
    extends DescribeReservedInstancesListingsResult {
  @override
  final _i2.BuiltList<ReservedInstancesListing>? reservedInstancesListings;

  factory _$DescribeReservedInstancesListingsResult(
          [void Function(DescribeReservedInstancesListingsResultBuilder)?
              updates]) =>
      (new DescribeReservedInstancesListingsResultBuilder()..update(updates))
          ._build();

  _$DescribeReservedInstancesListingsResult._({this.reservedInstancesListings})
      : super._();

  @override
  DescribeReservedInstancesListingsResult rebuild(
          void Function(DescribeReservedInstancesListingsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesListingsResultBuilder toBuilder() =>
      new DescribeReservedInstancesListingsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesListingsResult &&
        reservedInstancesListings == other.reservedInstancesListings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesListings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesListingsResultBuilder
    implements
        Builder<DescribeReservedInstancesListingsResult,
            DescribeReservedInstancesListingsResultBuilder> {
  _$DescribeReservedInstancesListingsResult? _$v;

  _i2.ListBuilder<ReservedInstancesListing>? _reservedInstancesListings;
  _i2.ListBuilder<ReservedInstancesListing> get reservedInstancesListings =>
      _$this._reservedInstancesListings ??=
          new _i2.ListBuilder<ReservedInstancesListing>();
  set reservedInstancesListings(
          _i2.ListBuilder<ReservedInstancesListing>?
              reservedInstancesListings) =>
      _$this._reservedInstancesListings = reservedInstancesListings;

  DescribeReservedInstancesListingsResultBuilder();

  DescribeReservedInstancesListingsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesListings = $v.reservedInstancesListings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesListingsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesListingsResult;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesListingsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesListingsResult build() => _build();

  _$DescribeReservedInstancesListingsResult _build() {
    _$DescribeReservedInstancesListingsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesListingsResult._(
              reservedInstancesListings: _reservedInstancesListings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesListings';
        _reservedInstancesListings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesListingsResult',
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
