// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_reserved_instances_offering_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseReservedInstancesOfferingResult
    extends PurchaseReservedInstancesOfferingResult {
  @override
  final String? reservedInstancesId;

  factory _$PurchaseReservedInstancesOfferingResult(
          [void Function(PurchaseReservedInstancesOfferingResultBuilder)?
              updates]) =>
      (new PurchaseReservedInstancesOfferingResultBuilder()..update(updates))
          ._build();

  _$PurchaseReservedInstancesOfferingResult._({this.reservedInstancesId})
      : super._();

  @override
  PurchaseReservedInstancesOfferingResult rebuild(
          void Function(PurchaseReservedInstancesOfferingResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseReservedInstancesOfferingResultBuilder toBuilder() =>
      new PurchaseReservedInstancesOfferingResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseReservedInstancesOfferingResult &&
        reservedInstancesId == other.reservedInstancesId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseReservedInstancesOfferingResultBuilder
    implements
        Builder<PurchaseReservedInstancesOfferingResult,
            PurchaseReservedInstancesOfferingResultBuilder> {
  _$PurchaseReservedInstancesOfferingResult? _$v;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  PurchaseReservedInstancesOfferingResultBuilder();

  PurchaseReservedInstancesOfferingResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesId = $v.reservedInstancesId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseReservedInstancesOfferingResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseReservedInstancesOfferingResult;
  }

  @override
  void update(
      void Function(PurchaseReservedInstancesOfferingResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseReservedInstancesOfferingResult build() => _build();

  _$PurchaseReservedInstancesOfferingResult _build() {
    final _$result = _$v ??
        new _$PurchaseReservedInstancesOfferingResult._(
            reservedInstancesId: reservedInstancesId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
