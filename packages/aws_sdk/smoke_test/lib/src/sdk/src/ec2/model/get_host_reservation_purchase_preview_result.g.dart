// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_host_reservation_purchase_preview_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHostReservationPurchasePreviewResult
    extends GetHostReservationPurchasePreviewResult {
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final _i2.BuiltList<Purchase>? purchase;
  @override
  final String? totalHourlyPrice;
  @override
  final String? totalUpfrontPrice;

  factory _$GetHostReservationPurchasePreviewResult(
          [void Function(GetHostReservationPurchasePreviewResultBuilder)?
              updates]) =>
      (new GetHostReservationPurchasePreviewResultBuilder()..update(updates))
          ._build();

  _$GetHostReservationPurchasePreviewResult._(
      {this.currencyCode,
      this.purchase,
      this.totalHourlyPrice,
      this.totalUpfrontPrice})
      : super._();

  @override
  GetHostReservationPurchasePreviewResult rebuild(
          void Function(GetHostReservationPurchasePreviewResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHostReservationPurchasePreviewResultBuilder toBuilder() =>
      new GetHostReservationPurchasePreviewResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHostReservationPurchasePreviewResult &&
        currencyCode == other.currencyCode &&
        purchase == other.purchase &&
        totalHourlyPrice == other.totalHourlyPrice &&
        totalUpfrontPrice == other.totalUpfrontPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, purchase.hashCode);
    _$hash = $jc(_$hash, totalHourlyPrice.hashCode);
    _$hash = $jc(_$hash, totalUpfrontPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetHostReservationPurchasePreviewResultBuilder
    implements
        Builder<GetHostReservationPurchasePreviewResult,
            GetHostReservationPurchasePreviewResultBuilder> {
  _$GetHostReservationPurchasePreviewResult? _$v;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  _i2.ListBuilder<Purchase>? _purchase;
  _i2.ListBuilder<Purchase> get purchase =>
      _$this._purchase ??= new _i2.ListBuilder<Purchase>();
  set purchase(_i2.ListBuilder<Purchase>? purchase) =>
      _$this._purchase = purchase;

  String? _totalHourlyPrice;
  String? get totalHourlyPrice => _$this._totalHourlyPrice;
  set totalHourlyPrice(String? totalHourlyPrice) =>
      _$this._totalHourlyPrice = totalHourlyPrice;

  String? _totalUpfrontPrice;
  String? get totalUpfrontPrice => _$this._totalUpfrontPrice;
  set totalUpfrontPrice(String? totalUpfrontPrice) =>
      _$this._totalUpfrontPrice = totalUpfrontPrice;

  GetHostReservationPurchasePreviewResultBuilder();

  GetHostReservationPurchasePreviewResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _purchase = $v.purchase?.toBuilder();
      _totalHourlyPrice = $v.totalHourlyPrice;
      _totalUpfrontPrice = $v.totalUpfrontPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHostReservationPurchasePreviewResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetHostReservationPurchasePreviewResult;
  }

  @override
  void update(
      void Function(GetHostReservationPurchasePreviewResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHostReservationPurchasePreviewResult build() => _build();

  _$GetHostReservationPurchasePreviewResult _build() {
    _$GetHostReservationPurchasePreviewResult _$result;
    try {
      _$result = _$v ??
          new _$GetHostReservationPurchasePreviewResult._(
              currencyCode: currencyCode,
              purchase: _purchase?.build(),
              totalHourlyPrice: totalHourlyPrice,
              totalUpfrontPrice: totalUpfrontPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'purchase';
        _purchase?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetHostReservationPurchasePreviewResult',
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
