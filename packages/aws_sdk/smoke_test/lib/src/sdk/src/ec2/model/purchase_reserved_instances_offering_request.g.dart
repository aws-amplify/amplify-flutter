// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_reserved_instances_offering_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseReservedInstancesOfferingRequest
    extends PurchaseReservedInstancesOfferingRequest {
  @override
  final int instanceCount;
  @override
  final String? reservedInstancesOfferingId;
  @override
  final bool dryRun;
  @override
  final ReservedInstanceLimitPrice? limitPrice;
  @override
  final DateTime? purchaseTime;

  factory _$PurchaseReservedInstancesOfferingRequest(
          [void Function(PurchaseReservedInstancesOfferingRequestBuilder)?
              updates]) =>
      (new PurchaseReservedInstancesOfferingRequestBuilder()..update(updates))
          ._build();

  _$PurchaseReservedInstancesOfferingRequest._(
      {required this.instanceCount,
      this.reservedInstancesOfferingId,
      required this.dryRun,
      this.limitPrice,
      this.purchaseTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceCount,
        r'PurchaseReservedInstancesOfferingRequest', 'instanceCount');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'PurchaseReservedInstancesOfferingRequest', 'dryRun');
  }

  @override
  PurchaseReservedInstancesOfferingRequest rebuild(
          void Function(PurchaseReservedInstancesOfferingRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseReservedInstancesOfferingRequestBuilder toBuilder() =>
      new PurchaseReservedInstancesOfferingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseReservedInstancesOfferingRequest &&
        instanceCount == other.instanceCount &&
        reservedInstancesOfferingId == other.reservedInstancesOfferingId &&
        dryRun == other.dryRun &&
        limitPrice == other.limitPrice &&
        purchaseTime == other.purchaseTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, reservedInstancesOfferingId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, limitPrice.hashCode);
    _$hash = $jc(_$hash, purchaseTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseReservedInstancesOfferingRequestBuilder
    implements
        Builder<PurchaseReservedInstancesOfferingRequest,
            PurchaseReservedInstancesOfferingRequestBuilder> {
  _$PurchaseReservedInstancesOfferingRequest? _$v;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _reservedInstancesOfferingId;
  String? get reservedInstancesOfferingId =>
      _$this._reservedInstancesOfferingId;
  set reservedInstancesOfferingId(String? reservedInstancesOfferingId) =>
      _$this._reservedInstancesOfferingId = reservedInstancesOfferingId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ReservedInstanceLimitPriceBuilder? _limitPrice;
  ReservedInstanceLimitPriceBuilder get limitPrice =>
      _$this._limitPrice ??= new ReservedInstanceLimitPriceBuilder();
  set limitPrice(ReservedInstanceLimitPriceBuilder? limitPrice) =>
      _$this._limitPrice = limitPrice;

  DateTime? _purchaseTime;
  DateTime? get purchaseTime => _$this._purchaseTime;
  set purchaseTime(DateTime? purchaseTime) =>
      _$this._purchaseTime = purchaseTime;

  PurchaseReservedInstancesOfferingRequestBuilder() {
    PurchaseReservedInstancesOfferingRequest._init(this);
  }

  PurchaseReservedInstancesOfferingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCount = $v.instanceCount;
      _reservedInstancesOfferingId = $v.reservedInstancesOfferingId;
      _dryRun = $v.dryRun;
      _limitPrice = $v.limitPrice?.toBuilder();
      _purchaseTime = $v.purchaseTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseReservedInstancesOfferingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseReservedInstancesOfferingRequest;
  }

  @override
  void update(
      void Function(PurchaseReservedInstancesOfferingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseReservedInstancesOfferingRequest build() => _build();

  _$PurchaseReservedInstancesOfferingRequest _build() {
    _$PurchaseReservedInstancesOfferingRequest _$result;
    try {
      _$result = _$v ??
          new _$PurchaseReservedInstancesOfferingRequest._(
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount,
                  r'PurchaseReservedInstancesOfferingRequest',
                  'instanceCount'),
              reservedInstancesOfferingId: reservedInstancesOfferingId,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'PurchaseReservedInstancesOfferingRequest', 'dryRun'),
              limitPrice: _limitPrice?.build(),
              purchaseTime: purchaseTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'limitPrice';
        _limitPrice?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PurchaseReservedInstancesOfferingRequest',
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
