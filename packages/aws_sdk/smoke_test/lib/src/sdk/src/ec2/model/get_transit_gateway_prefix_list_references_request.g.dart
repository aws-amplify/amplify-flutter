// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_prefix_list_references_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPrefixListReferencesRequest
    extends GetTransitGatewayPrefixListReferencesRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetTransitGatewayPrefixListReferencesRequest(
          [void Function(GetTransitGatewayPrefixListReferencesRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayPrefixListReferencesRequestBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayPrefixListReferencesRequest._(
      {this.transitGatewayRouteTableId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayPrefixListReferencesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetTransitGatewayPrefixListReferencesRequest', 'dryRun');
  }

  @override
  GetTransitGatewayPrefixListReferencesRequest rebuild(
          void Function(GetTransitGatewayPrefixListReferencesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPrefixListReferencesRequestBuilder toBuilder() =>
      new GetTransitGatewayPrefixListReferencesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPrefixListReferencesRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPrefixListReferencesRequestBuilder
    implements
        Builder<GetTransitGatewayPrefixListReferencesRequest,
            GetTransitGatewayPrefixListReferencesRequestBuilder> {
  _$GetTransitGatewayPrefixListReferencesRequest? _$v;

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

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetTransitGatewayPrefixListReferencesRequestBuilder() {
    GetTransitGatewayPrefixListReferencesRequest._init(this);
  }

  GetTransitGatewayPrefixListReferencesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPrefixListReferencesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPrefixListReferencesRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayPrefixListReferencesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPrefixListReferencesRequest build() => _build();

  _$GetTransitGatewayPrefixListReferencesRequest _build() {
    _$GetTransitGatewayPrefixListReferencesRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPrefixListReferencesRequest._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetTransitGatewayPrefixListReferencesRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetTransitGatewayPrefixListReferencesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPrefixListReferencesRequest',
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
