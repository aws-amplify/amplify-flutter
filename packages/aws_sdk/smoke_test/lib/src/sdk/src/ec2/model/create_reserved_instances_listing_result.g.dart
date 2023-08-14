// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reserved_instances_listing_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReservedInstancesListingResult
    extends CreateReservedInstancesListingResult {
  @override
  final _i2.BuiltList<ReservedInstancesListing>? reservedInstancesListings;

  factory _$CreateReservedInstancesListingResult(
          [void Function(CreateReservedInstancesListingResultBuilder)?
              updates]) =>
      (new CreateReservedInstancesListingResultBuilder()..update(updates))
          ._build();

  _$CreateReservedInstancesListingResult._({this.reservedInstancesListings})
      : super._();

  @override
  CreateReservedInstancesListingResult rebuild(
          void Function(CreateReservedInstancesListingResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReservedInstancesListingResultBuilder toBuilder() =>
      new CreateReservedInstancesListingResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReservedInstancesListingResult &&
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

class CreateReservedInstancesListingResultBuilder
    implements
        Builder<CreateReservedInstancesListingResult,
            CreateReservedInstancesListingResultBuilder> {
  _$CreateReservedInstancesListingResult? _$v;

  _i2.ListBuilder<ReservedInstancesListing>? _reservedInstancesListings;
  _i2.ListBuilder<ReservedInstancesListing> get reservedInstancesListings =>
      _$this._reservedInstancesListings ??=
          new _i2.ListBuilder<ReservedInstancesListing>();
  set reservedInstancesListings(
          _i2.ListBuilder<ReservedInstancesListing>?
              reservedInstancesListings) =>
      _$this._reservedInstancesListings = reservedInstancesListings;

  CreateReservedInstancesListingResultBuilder();

  CreateReservedInstancesListingResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesListings = $v.reservedInstancesListings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReservedInstancesListingResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReservedInstancesListingResult;
  }

  @override
  void update(
      void Function(CreateReservedInstancesListingResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReservedInstancesListingResult build() => _build();

  _$CreateReservedInstancesListingResult _build() {
    _$CreateReservedInstancesListingResult _$result;
    try {
      _$result = _$v ??
          new _$CreateReservedInstancesListingResult._(
              reservedInstancesListings: _reservedInstancesListings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesListings';
        _reservedInstancesListings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateReservedInstancesListingResult',
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
