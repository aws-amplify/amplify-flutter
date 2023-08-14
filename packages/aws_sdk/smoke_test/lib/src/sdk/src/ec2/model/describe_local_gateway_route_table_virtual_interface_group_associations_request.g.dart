// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_route_table_virtual_interface_group_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
    extends DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest {
  @override
  final _i3.BuiltList<String>?
      localGatewayRouteTableVirtualInterfaceGroupAssociationIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest(
          [void Function(
                  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociationIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults,
        r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest',
        'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun,
        r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest',
        'dryRun');
  }

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest rebuild(
          void Function(
                  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder
      toBuilder() =>
          new DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest &&
        localGatewayRouteTableVirtualInterfaceGroupAssociationIds ==
            other.localGatewayRouteTableVirtualInterfaceGroupAssociationIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash,
        localGatewayRouteTableVirtualInterfaceGroupAssociationIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder
    implements
        Builder<
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest,
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder> {
  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest? _$v;

  _i3.ListBuilder<String>?
      _localGatewayRouteTableVirtualInterfaceGroupAssociationIds;
  _i3.ListBuilder<String>
      get localGatewayRouteTableVirtualInterfaceGroupAssociationIds =>
          _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationIds ??=
              new _i3.ListBuilder<String>();
  set localGatewayRouteTableVirtualInterfaceGroupAssociationIds(
          _i3.ListBuilder<String>?
              localGatewayRouteTableVirtualInterfaceGroupAssociationIds) =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationIds =
          localGatewayRouteTableVirtualInterfaceGroupAssociationIds;

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

  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder() {
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
        ._init(this);
  }

  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVirtualInterfaceGroupAssociationIds = $v
          .localGatewayRouteTableVirtualInterfaceGroupAssociationIds
          ?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest;
  }

  @override
  void update(
      void Function(
              DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
      build() => _build();

  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
      _build() {
    _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
        _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest._(
              localGatewayRouteTableVirtualInterfaceGroupAssociationIds:
                  _localGatewayRouteTableVirtualInterfaceGroupAssociationIds
                      ?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'localGatewayRouteTableVirtualInterfaceGroupAssociationIds';
        _localGatewayRouteTableVirtualInterfaceGroupAssociationIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest',
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
