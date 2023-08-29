// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_host_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseHostReservationResult extends PurchaseHostReservationResult {
  @override
  final String? clientToken;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final _i2.BuiltList<Purchase>? purchase;
  @override
  final String? totalHourlyPrice;
  @override
  final String? totalUpfrontPrice;

  factory _$PurchaseHostReservationResult(
          [void Function(PurchaseHostReservationResultBuilder)? updates]) =>
      (new PurchaseHostReservationResultBuilder()..update(updates))._build();

  _$PurchaseHostReservationResult._(
      {this.clientToken,
      this.currencyCode,
      this.purchase,
      this.totalHourlyPrice,
      this.totalUpfrontPrice})
      : super._();

  @override
  PurchaseHostReservationResult rebuild(
          void Function(PurchaseHostReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseHostReservationResultBuilder toBuilder() =>
      new PurchaseHostReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseHostReservationResult &&
        clientToken == other.clientToken &&
        currencyCode == other.currencyCode &&
        purchase == other.purchase &&
        totalHourlyPrice == other.totalHourlyPrice &&
        totalUpfrontPrice == other.totalUpfrontPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, purchase.hashCode);
    _$hash = $jc(_$hash, totalHourlyPrice.hashCode);
    _$hash = $jc(_$hash, totalUpfrontPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseHostReservationResultBuilder
    implements
        Builder<PurchaseHostReservationResult,
            PurchaseHostReservationResultBuilder> {
  _$PurchaseHostReservationResult? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

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

  PurchaseHostReservationResultBuilder();

  PurchaseHostReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _currencyCode = $v.currencyCode;
      _purchase = $v.purchase?.toBuilder();
      _totalHourlyPrice = $v.totalHourlyPrice;
      _totalUpfrontPrice = $v.totalUpfrontPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseHostReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseHostReservationResult;
  }

  @override
  void update(void Function(PurchaseHostReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseHostReservationResult build() => _build();

  _$PurchaseHostReservationResult _build() {
    _$PurchaseHostReservationResult _$result;
    try {
      _$result = _$v ??
          new _$PurchaseHostReservationResult._(
              clientToken: clientToken,
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
            r'PurchaseHostReservationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
