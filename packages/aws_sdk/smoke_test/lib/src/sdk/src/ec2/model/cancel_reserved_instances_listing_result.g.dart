// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_reserved_instances_listing_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelReservedInstancesListingResult
    extends CancelReservedInstancesListingResult {
  @override
  final _i2.BuiltList<ReservedInstancesListing>? reservedInstancesListings;

  factory _$CancelReservedInstancesListingResult(
          [void Function(CancelReservedInstancesListingResultBuilder)?
              updates]) =>
      (new CancelReservedInstancesListingResultBuilder()..update(updates))
          ._build();

  _$CancelReservedInstancesListingResult._({this.reservedInstancesListings})
      : super._();

  @override
  CancelReservedInstancesListingResult rebuild(
          void Function(CancelReservedInstancesListingResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelReservedInstancesListingResultBuilder toBuilder() =>
      new CancelReservedInstancesListingResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelReservedInstancesListingResult &&
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

class CancelReservedInstancesListingResultBuilder
    implements
        Builder<CancelReservedInstancesListingResult,
            CancelReservedInstancesListingResultBuilder> {
  _$CancelReservedInstancesListingResult? _$v;

  _i2.ListBuilder<ReservedInstancesListing>? _reservedInstancesListings;
  _i2.ListBuilder<ReservedInstancesListing> get reservedInstancesListings =>
      _$this._reservedInstancesListings ??=
          new _i2.ListBuilder<ReservedInstancesListing>();
  set reservedInstancesListings(
          _i2.ListBuilder<ReservedInstancesListing>?
              reservedInstancesListings) =>
      _$this._reservedInstancesListings = reservedInstancesListings;

  CancelReservedInstancesListingResultBuilder();

  CancelReservedInstancesListingResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesListings = $v.reservedInstancesListings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelReservedInstancesListingResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelReservedInstancesListingResult;
  }

  @override
  void update(
      void Function(CancelReservedInstancesListingResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelReservedInstancesListingResult build() => _build();

  _$CancelReservedInstancesListingResult _build() {
    _$CancelReservedInstancesListingResult _$result;
    try {
      _$result = _$v ??
          new _$CancelReservedInstancesListingResult._(
              reservedInstancesListings: _reservedInstancesListings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesListings';
        _reservedInstancesListings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelReservedInstancesListingResult',
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
