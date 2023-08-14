// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_transit_gateway_multicast_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchTransitGatewayMulticastGroupsRequest
    extends SearchTransitGatewayMulticastGroupsRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$SearchTransitGatewayMulticastGroupsRequest(
          [void Function(SearchTransitGatewayMulticastGroupsRequestBuilder)?
              updates]) =>
      (new SearchTransitGatewayMulticastGroupsRequestBuilder()..update(updates))
          ._build();

  _$SearchTransitGatewayMulticastGroupsRequest._(
      {this.transitGatewayMulticastDomainId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'SearchTransitGatewayMulticastGroupsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'SearchTransitGatewayMulticastGroupsRequest', 'dryRun');
  }

  @override
  SearchTransitGatewayMulticastGroupsRequest rebuild(
          void Function(SearchTransitGatewayMulticastGroupsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTransitGatewayMulticastGroupsRequestBuilder toBuilder() =>
      new SearchTransitGatewayMulticastGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTransitGatewayMulticastGroupsRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchTransitGatewayMulticastGroupsRequestBuilder
    implements
        Builder<SearchTransitGatewayMulticastGroupsRequest,
            SearchTransitGatewayMulticastGroupsRequestBuilder> {
  _$SearchTransitGatewayMulticastGroupsRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  SearchTransitGatewayMulticastGroupsRequestBuilder() {
    SearchTransitGatewayMulticastGroupsRequest._init(this);
  }

  SearchTransitGatewayMulticastGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTransitGatewayMulticastGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchTransitGatewayMulticastGroupsRequest;
  }

  @override
  void update(
      void Function(SearchTransitGatewayMulticastGroupsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchTransitGatewayMulticastGroupsRequest build() => _build();

  _$SearchTransitGatewayMulticastGroupsRequest _build() {
    _$SearchTransitGatewayMulticastGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$SearchTransitGatewayMulticastGroupsRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'SearchTransitGatewayMulticastGroupsRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'SearchTransitGatewayMulticastGroupsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchTransitGatewayMulticastGroupsRequest',
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
