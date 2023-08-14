// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_route_table_propagations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayRouteTablePropagationsRequest
    extends GetTransitGatewayRouteTablePropagationsRequest {
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

  factory _$GetTransitGatewayRouteTablePropagationsRequest(
          [void Function(GetTransitGatewayRouteTablePropagationsRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayRouteTablePropagationsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayRouteTablePropagationsRequest._(
      {this.transitGatewayRouteTableId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayRouteTablePropagationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetTransitGatewayRouteTablePropagationsRequest', 'dryRun');
  }

  @override
  GetTransitGatewayRouteTablePropagationsRequest rebuild(
          void Function(GetTransitGatewayRouteTablePropagationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayRouteTablePropagationsRequestBuilder toBuilder() =>
      new GetTransitGatewayRouteTablePropagationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayRouteTablePropagationsRequest &&
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

class GetTransitGatewayRouteTablePropagationsRequestBuilder
    implements
        Builder<GetTransitGatewayRouteTablePropagationsRequest,
            GetTransitGatewayRouteTablePropagationsRequestBuilder> {
  _$GetTransitGatewayRouteTablePropagationsRequest? _$v;

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

  GetTransitGatewayRouteTablePropagationsRequestBuilder() {
    GetTransitGatewayRouteTablePropagationsRequest._init(this);
  }

  GetTransitGatewayRouteTablePropagationsRequestBuilder get _$this {
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
  void replace(GetTransitGatewayRouteTablePropagationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayRouteTablePropagationsRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayRouteTablePropagationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayRouteTablePropagationsRequest build() => _build();

  _$GetTransitGatewayRouteTablePropagationsRequest _build() {
    _$GetTransitGatewayRouteTablePropagationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayRouteTablePropagationsRequest._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetTransitGatewayRouteTablePropagationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetTransitGatewayRouteTablePropagationsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayRouteTablePropagationsRequest',
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
