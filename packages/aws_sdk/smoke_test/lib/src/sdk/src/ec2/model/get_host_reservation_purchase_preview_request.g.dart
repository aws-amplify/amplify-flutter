// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_host_reservation_purchase_preview_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHostReservationPurchasePreviewRequest
    extends GetHostReservationPurchasePreviewRequest {
  @override
  final _i3.BuiltList<String>? hostIdSet;
  @override
  final String? offeringId;

  factory _$GetHostReservationPurchasePreviewRequest(
          [void Function(GetHostReservationPurchasePreviewRequestBuilder)?
              updates]) =>
      (new GetHostReservationPurchasePreviewRequestBuilder()..update(updates))
          ._build();

  _$GetHostReservationPurchasePreviewRequest._(
      {this.hostIdSet, this.offeringId})
      : super._();

  @override
  GetHostReservationPurchasePreviewRequest rebuild(
          void Function(GetHostReservationPurchasePreviewRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHostReservationPurchasePreviewRequestBuilder toBuilder() =>
      new GetHostReservationPurchasePreviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHostReservationPurchasePreviewRequest &&
        hostIdSet == other.hostIdSet &&
        offeringId == other.offeringId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostIdSet.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetHostReservationPurchasePreviewRequestBuilder
    implements
        Builder<GetHostReservationPurchasePreviewRequest,
            GetHostReservationPurchasePreviewRequestBuilder> {
  _$GetHostReservationPurchasePreviewRequest? _$v;

  _i3.ListBuilder<String>? _hostIdSet;
  _i3.ListBuilder<String> get hostIdSet =>
      _$this._hostIdSet ??= new _i3.ListBuilder<String>();
  set hostIdSet(_i3.ListBuilder<String>? hostIdSet) =>
      _$this._hostIdSet = hostIdSet;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  GetHostReservationPurchasePreviewRequestBuilder();

  GetHostReservationPurchasePreviewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostIdSet = $v.hostIdSet?.toBuilder();
      _offeringId = $v.offeringId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHostReservationPurchasePreviewRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetHostReservationPurchasePreviewRequest;
  }

  @override
  void update(
      void Function(GetHostReservationPurchasePreviewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHostReservationPurchasePreviewRequest build() => _build();

  _$GetHostReservationPurchasePreviewRequest _build() {
    _$GetHostReservationPurchasePreviewRequest _$result;
    try {
      _$result = _$v ??
          new _$GetHostReservationPurchasePreviewRequest._(
              hostIdSet: _hostIdSet?.build(), offeringId: offeringId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIdSet';
        _hostIdSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetHostReservationPurchasePreviewRequest',
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
