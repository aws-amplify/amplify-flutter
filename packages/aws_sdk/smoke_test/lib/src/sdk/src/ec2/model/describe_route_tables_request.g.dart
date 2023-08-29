// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_route_tables_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRouteTablesRequest extends DescribeRouteTablesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? routeTableIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeRouteTablesRequest(
          [void Function(DescribeRouteTablesRequestBuilder)? updates]) =>
      (new DescribeRouteTablesRequestBuilder()..update(updates))._build();

  _$DescribeRouteTablesRequest._(
      {this.filters,
      required this.dryRun,
      this.routeTableIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeRouteTablesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeRouteTablesRequest', 'maxResults');
  }

  @override
  DescribeRouteTablesRequest rebuild(
          void Function(DescribeRouteTablesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRouteTablesRequestBuilder toBuilder() =>
      new DescribeRouteTablesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRouteTablesRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        routeTableIds == other.routeTableIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, routeTableIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRouteTablesRequestBuilder
    implements
        Builder<DescribeRouteTablesRequest, DescribeRouteTablesRequestBuilder> {
  _$DescribeRouteTablesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _routeTableIds;
  _i3.ListBuilder<String> get routeTableIds =>
      _$this._routeTableIds ??= new _i3.ListBuilder<String>();
  set routeTableIds(_i3.ListBuilder<String>? routeTableIds) =>
      _$this._routeTableIds = routeTableIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeRouteTablesRequestBuilder() {
    DescribeRouteTablesRequest._init(this);
  }

  DescribeRouteTablesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _routeTableIds = $v.routeTableIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRouteTablesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRouteTablesRequest;
  }

  @override
  void update(void Function(DescribeRouteTablesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRouteTablesRequest build() => _build();

  _$DescribeRouteTablesRequest _build() {
    _$DescribeRouteTablesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRouteTablesRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeRouteTablesRequest', 'dryRun'),
              routeTableIds: _routeTableIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeRouteTablesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'routeTableIds';
        _routeTableIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRouteTablesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
