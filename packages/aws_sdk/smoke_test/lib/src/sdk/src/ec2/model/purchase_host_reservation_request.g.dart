// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_host_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseHostReservationRequest extends PurchaseHostReservationRequest {
  @override
  final String? clientToken;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final _i3.BuiltList<String>? hostIdSet;
  @override
  final String? limitPrice;
  @override
  final String? offeringId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$PurchaseHostReservationRequest(
          [void Function(PurchaseHostReservationRequestBuilder)? updates]) =>
      (new PurchaseHostReservationRequestBuilder()..update(updates))._build();

  _$PurchaseHostReservationRequest._(
      {this.clientToken,
      this.currencyCode,
      this.hostIdSet,
      this.limitPrice,
      this.offeringId,
      this.tagSpecifications})
      : super._();

  @override
  PurchaseHostReservationRequest rebuild(
          void Function(PurchaseHostReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseHostReservationRequestBuilder toBuilder() =>
      new PurchaseHostReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseHostReservationRequest &&
        clientToken == other.clientToken &&
        currencyCode == other.currencyCode &&
        hostIdSet == other.hostIdSet &&
        limitPrice == other.limitPrice &&
        offeringId == other.offeringId &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, hostIdSet.hashCode);
    _$hash = $jc(_$hash, limitPrice.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseHostReservationRequestBuilder
    implements
        Builder<PurchaseHostReservationRequest,
            PurchaseHostReservationRequestBuilder> {
  _$PurchaseHostReservationRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  _i3.ListBuilder<String>? _hostIdSet;
  _i3.ListBuilder<String> get hostIdSet =>
      _$this._hostIdSet ??= new _i3.ListBuilder<String>();
  set hostIdSet(_i3.ListBuilder<String>? hostIdSet) =>
      _$this._hostIdSet = hostIdSet;

  String? _limitPrice;
  String? get limitPrice => _$this._limitPrice;
  set limitPrice(String? limitPrice) => _$this._limitPrice = limitPrice;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  PurchaseHostReservationRequestBuilder();

  PurchaseHostReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _currencyCode = $v.currencyCode;
      _hostIdSet = $v.hostIdSet?.toBuilder();
      _limitPrice = $v.limitPrice;
      _offeringId = $v.offeringId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseHostReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseHostReservationRequest;
  }

  @override
  void update(void Function(PurchaseHostReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseHostReservationRequest build() => _build();

  _$PurchaseHostReservationRequest _build() {
    _$PurchaseHostReservationRequest _$result;
    try {
      _$result = _$v ??
          new _$PurchaseHostReservationRequest._(
              clientToken: clientToken,
              currencyCode: currencyCode,
              hostIdSet: _hostIdSet?.build(),
              limitPrice: limitPrice,
              offeringId: offeringId,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIdSet';
        _hostIdSet?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PurchaseHostReservationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
