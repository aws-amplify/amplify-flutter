// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_offerings_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesOfferingsResult
    extends DescribeReservedInstancesOfferingsResult {
  @override
  final _i2.BuiltList<ReservedInstancesOffering>? reservedInstancesOfferings;
  @override
  final String? nextToken;

  factory _$DescribeReservedInstancesOfferingsResult(
          [void Function(DescribeReservedInstancesOfferingsResultBuilder)?
              updates]) =>
      (new DescribeReservedInstancesOfferingsResultBuilder()..update(updates))
          ._build();

  _$DescribeReservedInstancesOfferingsResult._(
      {this.reservedInstancesOfferings, this.nextToken})
      : super._();

  @override
  DescribeReservedInstancesOfferingsResult rebuild(
          void Function(DescribeReservedInstancesOfferingsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesOfferingsResultBuilder toBuilder() =>
      new DescribeReservedInstancesOfferingsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesOfferingsResult &&
        reservedInstancesOfferings == other.reservedInstancesOfferings &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesOfferings.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesOfferingsResultBuilder
    implements
        Builder<DescribeReservedInstancesOfferingsResult,
            DescribeReservedInstancesOfferingsResultBuilder> {
  _$DescribeReservedInstancesOfferingsResult? _$v;

  _i2.ListBuilder<ReservedInstancesOffering>? _reservedInstancesOfferings;
  _i2.ListBuilder<ReservedInstancesOffering> get reservedInstancesOfferings =>
      _$this._reservedInstancesOfferings ??=
          new _i2.ListBuilder<ReservedInstancesOffering>();
  set reservedInstancesOfferings(
          _i2.ListBuilder<ReservedInstancesOffering>?
              reservedInstancesOfferings) =>
      _$this._reservedInstancesOfferings = reservedInstancesOfferings;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeReservedInstancesOfferingsResultBuilder();

  DescribeReservedInstancesOfferingsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesOfferings = $v.reservedInstancesOfferings?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesOfferingsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesOfferingsResult;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesOfferingsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesOfferingsResult build() => _build();

  _$DescribeReservedInstancesOfferingsResult _build() {
    _$DescribeReservedInstancesOfferingsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesOfferingsResult._(
              reservedInstancesOfferings: _reservedInstancesOfferings?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesOfferings';
        _reservedInstancesOfferings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesOfferingsResult',
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
