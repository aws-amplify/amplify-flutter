// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_reserved_instances_listing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelReservedInstancesListingRequest
    extends CancelReservedInstancesListingRequest {
  @override
  final String? reservedInstancesListingId;

  factory _$CancelReservedInstancesListingRequest(
          [void Function(CancelReservedInstancesListingRequestBuilder)?
              updates]) =>
      (new CancelReservedInstancesListingRequestBuilder()..update(updates))
          ._build();

  _$CancelReservedInstancesListingRequest._({this.reservedInstancesListingId})
      : super._();

  @override
  CancelReservedInstancesListingRequest rebuild(
          void Function(CancelReservedInstancesListingRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelReservedInstancesListingRequestBuilder toBuilder() =>
      new CancelReservedInstancesListingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelReservedInstancesListingRequest &&
        reservedInstancesListingId == other.reservedInstancesListingId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesListingId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelReservedInstancesListingRequestBuilder
    implements
        Builder<CancelReservedInstancesListingRequest,
            CancelReservedInstancesListingRequestBuilder> {
  _$CancelReservedInstancesListingRequest? _$v;

  String? _reservedInstancesListingId;
  String? get reservedInstancesListingId => _$this._reservedInstancesListingId;
  set reservedInstancesListingId(String? reservedInstancesListingId) =>
      _$this._reservedInstancesListingId = reservedInstancesListingId;

  CancelReservedInstancesListingRequestBuilder();

  CancelReservedInstancesListingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesListingId = $v.reservedInstancesListingId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelReservedInstancesListingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelReservedInstancesListingRequest;
  }

  @override
  void update(
      void Function(CancelReservedInstancesListingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelReservedInstancesListingRequest build() => _build();

  _$CancelReservedInstancesListingRequest _build() {
    final _$result = _$v ??
        new _$CancelReservedInstancesListingRequest._(
            reservedInstancesListingId: reservedInstancesListingId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
