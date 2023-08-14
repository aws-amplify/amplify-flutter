// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_route_tables_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayRouteTablesRequest
    extends DescribeTransitGatewayRouteTablesRequest {
  @override
  final _i3.BuiltList<String>? transitGatewayRouteTableIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeTransitGatewayRouteTablesRequest(
          [void Function(DescribeTransitGatewayRouteTablesRequestBuilder)?
              updates]) =>
      (new DescribeTransitGatewayRouteTablesRequestBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayRouteTablesRequest._(
      {this.transitGatewayRouteTableIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTransitGatewayRouteTablesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTransitGatewayRouteTablesRequest', 'dryRun');
  }

  @override
  DescribeTransitGatewayRouteTablesRequest rebuild(
          void Function(DescribeTransitGatewayRouteTablesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayRouteTablesRequestBuilder toBuilder() =>
      new DescribeTransitGatewayRouteTablesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayRouteTablesRequest &&
        transitGatewayRouteTableIds == other.transitGatewayRouteTableIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayRouteTablesRequestBuilder
    implements
        Builder<DescribeTransitGatewayRouteTablesRequest,
            DescribeTransitGatewayRouteTablesRequestBuilder> {
  _$DescribeTransitGatewayRouteTablesRequest? _$v;

  _i3.ListBuilder<String>? _transitGatewayRouteTableIds;
  _i3.ListBuilder<String> get transitGatewayRouteTableIds =>
      _$this._transitGatewayRouteTableIds ??= new _i3.ListBuilder<String>();
  set transitGatewayRouteTableIds(
          _i3.ListBuilder<String>? transitGatewayRouteTableIds) =>
      _$this._transitGatewayRouteTableIds = transitGatewayRouteTableIds;

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

  DescribeTransitGatewayRouteTablesRequestBuilder() {
    DescribeTransitGatewayRouteTablesRequest._init(this);
  }

  DescribeTransitGatewayRouteTablesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableIds =
          $v.transitGatewayRouteTableIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayRouteTablesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayRouteTablesRequest;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayRouteTablesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayRouteTablesRequest build() => _build();

  _$DescribeTransitGatewayRouteTablesRequest _build() {
    _$DescribeTransitGatewayRouteTablesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayRouteTablesRequest._(
              transitGatewayRouteTableIds:
                  _transitGatewayRouteTableIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTransitGatewayRouteTablesRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeTransitGatewayRouteTablesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTableIds';
        _transitGatewayRouteTableIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayRouteTablesRequest',
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
