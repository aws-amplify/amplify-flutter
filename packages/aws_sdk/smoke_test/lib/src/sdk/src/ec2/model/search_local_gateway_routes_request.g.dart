// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_local_gateway_routes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchLocalGatewayRoutesRequest
    extends SearchLocalGatewayRoutesRequest {
  @override
  final String? localGatewayRouteTableId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$SearchLocalGatewayRoutesRequest(
          [void Function(SearchLocalGatewayRoutesRequestBuilder)? updates]) =>
      (new SearchLocalGatewayRoutesRequestBuilder()..update(updates))._build();

  _$SearchLocalGatewayRoutesRequest._(
      {this.localGatewayRouteTableId,
      this.filters,
      this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'SearchLocalGatewayRoutesRequest', 'dryRun');
  }

  @override
  SearchLocalGatewayRoutesRequest rebuild(
          void Function(SearchLocalGatewayRoutesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchLocalGatewayRoutesRequestBuilder toBuilder() =>
      new SearchLocalGatewayRoutesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchLocalGatewayRoutesRequest &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchLocalGatewayRoutesRequestBuilder
    implements
        Builder<SearchLocalGatewayRoutesRequest,
            SearchLocalGatewayRoutesRequestBuilder> {
  _$SearchLocalGatewayRoutesRequest? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

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

  SearchLocalGatewayRoutesRequestBuilder() {
    SearchLocalGatewayRoutesRequest._init(this);
  }

  SearchLocalGatewayRoutesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchLocalGatewayRoutesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchLocalGatewayRoutesRequest;
  }

  @override
  void update(void Function(SearchLocalGatewayRoutesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchLocalGatewayRoutesRequest build() => _build();

  _$SearchLocalGatewayRoutesRequest _build() {
    _$SearchLocalGatewayRoutesRequest _$result;
    try {
      _$result = _$v ??
          new _$SearchLocalGatewayRoutesRequest._(
              localGatewayRouteTableId: localGatewayRouteTableId,
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'SearchLocalGatewayRoutesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchLocalGatewayRoutesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
