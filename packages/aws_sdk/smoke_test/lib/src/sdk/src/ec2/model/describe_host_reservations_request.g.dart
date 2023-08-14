// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_host_reservations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostReservationsRequest
    extends DescribeHostReservationsRequest {
  @override
  final _i3.BuiltList<Filter>? filter;
  @override
  final _i3.BuiltList<String>? hostReservationIdSet;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeHostReservationsRequest(
          [void Function(DescribeHostReservationsRequestBuilder)? updates]) =>
      (new DescribeHostReservationsRequestBuilder()..update(updates))._build();

  _$DescribeHostReservationsRequest._(
      {this.filter,
      this.hostReservationIdSet,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeHostReservationsRequest', 'maxResults');
  }

  @override
  DescribeHostReservationsRequest rebuild(
          void Function(DescribeHostReservationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostReservationsRequestBuilder toBuilder() =>
      new DescribeHostReservationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostReservationsRequest &&
        filter == other.filter &&
        hostReservationIdSet == other.hostReservationIdSet &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, hostReservationIdSet.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostReservationsRequestBuilder
    implements
        Builder<DescribeHostReservationsRequest,
            DescribeHostReservationsRequestBuilder> {
  _$DescribeHostReservationsRequest? _$v;

  _i3.ListBuilder<Filter>? _filter;
  _i3.ListBuilder<Filter> get filter =>
      _$this._filter ??= new _i3.ListBuilder<Filter>();
  set filter(_i3.ListBuilder<Filter>? filter) => _$this._filter = filter;

  _i3.ListBuilder<String>? _hostReservationIdSet;
  _i3.ListBuilder<String> get hostReservationIdSet =>
      _$this._hostReservationIdSet ??= new _i3.ListBuilder<String>();
  set hostReservationIdSet(_i3.ListBuilder<String>? hostReservationIdSet) =>
      _$this._hostReservationIdSet = hostReservationIdSet;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeHostReservationsRequestBuilder() {
    DescribeHostReservationsRequest._init(this);
  }

  DescribeHostReservationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _hostReservationIdSet = $v.hostReservationIdSet?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostReservationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostReservationsRequest;
  }

  @override
  void update(void Function(DescribeHostReservationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostReservationsRequest build() => _build();

  _$DescribeHostReservationsRequest _build() {
    _$DescribeHostReservationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostReservationsRequest._(
              filter: _filter?.build(),
              hostReservationIdSet: _hostReservationIdSet?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeHostReservationsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
        _$failedField = 'hostReservationIdSet';
        _hostReservationIdSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostReservationsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
