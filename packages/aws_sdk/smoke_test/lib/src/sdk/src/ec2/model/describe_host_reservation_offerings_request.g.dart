// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_host_reservation_offerings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostReservationOfferingsRequest
    extends DescribeHostReservationOfferingsRequest {
  @override
  final _i3.BuiltList<Filter>? filter;
  @override
  final int maxDuration;
  @override
  final int maxResults;
  @override
  final int minDuration;
  @override
  final String? nextToken;
  @override
  final String? offeringId;

  factory _$DescribeHostReservationOfferingsRequest(
          [void Function(DescribeHostReservationOfferingsRequestBuilder)?
              updates]) =>
      (new DescribeHostReservationOfferingsRequestBuilder()..update(updates))
          ._build();

  _$DescribeHostReservationOfferingsRequest._(
      {this.filter,
      required this.maxDuration,
      required this.maxResults,
      required this.minDuration,
      this.nextToken,
      this.offeringId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxDuration, r'DescribeHostReservationOfferingsRequest', 'maxDuration');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeHostReservationOfferingsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        minDuration, r'DescribeHostReservationOfferingsRequest', 'minDuration');
  }

  @override
  DescribeHostReservationOfferingsRequest rebuild(
          void Function(DescribeHostReservationOfferingsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostReservationOfferingsRequestBuilder toBuilder() =>
      new DescribeHostReservationOfferingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostReservationOfferingsRequest &&
        filter == other.filter &&
        maxDuration == other.maxDuration &&
        maxResults == other.maxResults &&
        minDuration == other.minDuration &&
        nextToken == other.nextToken &&
        offeringId == other.offeringId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, maxDuration.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, minDuration.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostReservationOfferingsRequestBuilder
    implements
        Builder<DescribeHostReservationOfferingsRequest,
            DescribeHostReservationOfferingsRequestBuilder> {
  _$DescribeHostReservationOfferingsRequest? _$v;

  _i3.ListBuilder<Filter>? _filter;
  _i3.ListBuilder<Filter> get filter =>
      _$this._filter ??= new _i3.ListBuilder<Filter>();
  set filter(_i3.ListBuilder<Filter>? filter) => _$this._filter = filter;

  int? _maxDuration;
  int? get maxDuration => _$this._maxDuration;
  set maxDuration(int? maxDuration) => _$this._maxDuration = maxDuration;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  int? _minDuration;
  int? get minDuration => _$this._minDuration;
  set minDuration(int? minDuration) => _$this._minDuration = minDuration;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  DescribeHostReservationOfferingsRequestBuilder() {
    DescribeHostReservationOfferingsRequest._init(this);
  }

  DescribeHostReservationOfferingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _maxDuration = $v.maxDuration;
      _maxResults = $v.maxResults;
      _minDuration = $v.minDuration;
      _nextToken = $v.nextToken;
      _offeringId = $v.offeringId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostReservationOfferingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostReservationOfferingsRequest;
  }

  @override
  void update(
      void Function(DescribeHostReservationOfferingsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostReservationOfferingsRequest build() => _build();

  _$DescribeHostReservationOfferingsRequest _build() {
    _$DescribeHostReservationOfferingsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostReservationOfferingsRequest._(
              filter: _filter?.build(),
              maxDuration: BuiltValueNullFieldError.checkNotNull(maxDuration,
                  r'DescribeHostReservationOfferingsRequest', 'maxDuration'),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeHostReservationOfferingsRequest', 'maxResults'),
              minDuration: BuiltValueNullFieldError.checkNotNull(minDuration,
                  r'DescribeHostReservationOfferingsRequest', 'minDuration'),
              nextToken: nextToken,
              offeringId: offeringId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostReservationOfferingsRequest',
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
