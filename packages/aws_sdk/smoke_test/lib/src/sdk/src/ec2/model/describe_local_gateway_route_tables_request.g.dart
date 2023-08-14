// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_route_tables_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTablesRequest
    extends DescribeLocalGatewayRouteTablesRequest {
  @override
  final _i3.BuiltList<String>? localGatewayRouteTableIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewayRouteTablesRequest(
          [void Function(DescribeLocalGatewayRouteTablesRequestBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTablesRequestBuilder()..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTablesRequest._(
      {this.localGatewayRouteTableIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeLocalGatewayRouteTablesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLocalGatewayRouteTablesRequest', 'dryRun');
  }

  @override
  DescribeLocalGatewayRouteTablesRequest rebuild(
          void Function(DescribeLocalGatewayRouteTablesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTablesRequestBuilder toBuilder() =>
      new DescribeLocalGatewayRouteTablesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayRouteTablesRequest &&
        localGatewayRouteTableIds == other.localGatewayRouteTableIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTablesRequestBuilder
    implements
        Builder<DescribeLocalGatewayRouteTablesRequest,
            DescribeLocalGatewayRouteTablesRequestBuilder> {
  _$DescribeLocalGatewayRouteTablesRequest? _$v;

  _i3.ListBuilder<String>? _localGatewayRouteTableIds;
  _i3.ListBuilder<String> get localGatewayRouteTableIds =>
      _$this._localGatewayRouteTableIds ??= new _i3.ListBuilder<String>();
  set localGatewayRouteTableIds(
          _i3.ListBuilder<String>? localGatewayRouteTableIds) =>
      _$this._localGatewayRouteTableIds = localGatewayRouteTableIds;

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

  DescribeLocalGatewayRouteTablesRequestBuilder() {
    DescribeLocalGatewayRouteTablesRequest._init(this);
  }

  DescribeLocalGatewayRouteTablesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableIds = $v.localGatewayRouteTableIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayRouteTablesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayRouteTablesRequest;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayRouteTablesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTablesRequest build() => _build();

  _$DescribeLocalGatewayRouteTablesRequest _build() {
    _$DescribeLocalGatewayRouteTablesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTablesRequest._(
              localGatewayRouteTableIds: _localGatewayRouteTableIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeLocalGatewayRouteTablesRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeLocalGatewayRouteTablesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTableIds';
        _localGatewayRouteTableIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTablesRequest',
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
