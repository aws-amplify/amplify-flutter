// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_transit_gateway_routes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchTransitGatewayRoutesRequest
    extends SearchTransitGatewayRoutesRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$SearchTransitGatewayRoutesRequest(
          [void Function(SearchTransitGatewayRoutesRequestBuilder)? updates]) =>
      (new SearchTransitGatewayRoutesRequestBuilder()..update(updates))
          ._build();

  _$SearchTransitGatewayRoutesRequest._(
      {this.transitGatewayRouteTableId,
      this.filters,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'SearchTransitGatewayRoutesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'SearchTransitGatewayRoutesRequest', 'dryRun');
  }

  @override
  SearchTransitGatewayRoutesRequest rebuild(
          void Function(SearchTransitGatewayRoutesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTransitGatewayRoutesRequestBuilder toBuilder() =>
      new SearchTransitGatewayRoutesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTransitGatewayRoutesRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchTransitGatewayRoutesRequestBuilder
    implements
        Builder<SearchTransitGatewayRoutesRequest,
            SearchTransitGatewayRoutesRequestBuilder> {
  _$SearchTransitGatewayRoutesRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  SearchTransitGatewayRoutesRequestBuilder() {
    SearchTransitGatewayRoutesRequest._init(this);
  }

  SearchTransitGatewayRoutesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTransitGatewayRoutesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchTransitGatewayRoutesRequest;
  }

  @override
  void update(
      void Function(SearchTransitGatewayRoutesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchTransitGatewayRoutesRequest build() => _build();

  _$SearchTransitGatewayRoutesRequest _build() {
    _$SearchTransitGatewayRoutesRequest _$result;
    try {
      _$result = _$v ??
          new _$SearchTransitGatewayRoutesRequest._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'SearchTransitGatewayRoutesRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'SearchTransitGatewayRoutesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchTransitGatewayRoutesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
