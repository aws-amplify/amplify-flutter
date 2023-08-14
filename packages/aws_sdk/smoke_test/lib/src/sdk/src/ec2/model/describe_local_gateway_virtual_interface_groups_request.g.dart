// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_virtual_interface_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayVirtualInterfaceGroupsRequest
    extends DescribeLocalGatewayVirtualInterfaceGroupsRequest {
  @override
  final _i3.BuiltList<String>? localGatewayVirtualInterfaceGroupIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewayVirtualInterfaceGroupsRequest(
          [void Function(
                  DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder)?
              updates]) =>
      (new DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayVirtualInterfaceGroupsRequest._(
      {this.localGatewayVirtualInterfaceGroupIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeLocalGatewayVirtualInterfaceGroupsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLocalGatewayVirtualInterfaceGroupsRequest', 'dryRun');
  }

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsRequest rebuild(
          void Function(
                  DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder toBuilder() =>
      new DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayVirtualInterfaceGroupsRequest &&
        localGatewayVirtualInterfaceGroupIds ==
            other.localGatewayVirtualInterfaceGroupIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder
    implements
        Builder<DescribeLocalGatewayVirtualInterfaceGroupsRequest,
            DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder> {
  _$DescribeLocalGatewayVirtualInterfaceGroupsRequest? _$v;

  _i3.ListBuilder<String>? _localGatewayVirtualInterfaceGroupIds;
  _i3.ListBuilder<String> get localGatewayVirtualInterfaceGroupIds =>
      _$this._localGatewayVirtualInterfaceGroupIds ??=
          new _i3.ListBuilder<String>();
  set localGatewayVirtualInterfaceGroupIds(
          _i3.ListBuilder<String>? localGatewayVirtualInterfaceGroupIds) =>
      _$this._localGatewayVirtualInterfaceGroupIds =
          localGatewayVirtualInterfaceGroupIds;

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

  DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder() {
    DescribeLocalGatewayVirtualInterfaceGroupsRequest._init(this);
  }

  DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaceGroupIds =
          $v.localGatewayVirtualInterfaceGroupIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayVirtualInterfaceGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayVirtualInterfaceGroupsRequest;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayVirtualInterfaceGroupsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayVirtualInterfaceGroupsRequest build() => _build();

  _$DescribeLocalGatewayVirtualInterfaceGroupsRequest _build() {
    _$DescribeLocalGatewayVirtualInterfaceGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayVirtualInterfaceGroupsRequest._(
              localGatewayVirtualInterfaceGroupIds:
                  _localGatewayVirtualInterfaceGroupIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeLocalGatewayVirtualInterfaceGroupsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeLocalGatewayVirtualInterfaceGroupsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayVirtualInterfaceGroupIds';
        _localGatewayVirtualInterfaceGroupIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayVirtualInterfaceGroupsRequest',
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
