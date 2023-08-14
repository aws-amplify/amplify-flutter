// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_acls_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkAclsRequest extends DescribeNetworkAclsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? networkAclIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeNetworkAclsRequest(
          [void Function(DescribeNetworkAclsRequestBuilder)? updates]) =>
      (new DescribeNetworkAclsRequestBuilder()..update(updates))._build();

  _$DescribeNetworkAclsRequest._(
      {this.filters,
      required this.dryRun,
      this.networkAclIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkAclsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeNetworkAclsRequest', 'maxResults');
  }

  @override
  DescribeNetworkAclsRequest rebuild(
          void Function(DescribeNetworkAclsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkAclsRequestBuilder toBuilder() =>
      new DescribeNetworkAclsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkAclsRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        networkAclIds == other.networkAclIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkAclIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkAclsRequestBuilder
    implements
        Builder<DescribeNetworkAclsRequest, DescribeNetworkAclsRequestBuilder> {
  _$DescribeNetworkAclsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _networkAclIds;
  _i3.ListBuilder<String> get networkAclIds =>
      _$this._networkAclIds ??= new _i3.ListBuilder<String>();
  set networkAclIds(_i3.ListBuilder<String>? networkAclIds) =>
      _$this._networkAclIds = networkAclIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeNetworkAclsRequestBuilder() {
    DescribeNetworkAclsRequest._init(this);
  }

  DescribeNetworkAclsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _networkAclIds = $v.networkAclIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkAclsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkAclsRequest;
  }

  @override
  void update(void Function(DescribeNetworkAclsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkAclsRequest build() => _build();

  _$DescribeNetworkAclsRequest _build() {
    _$DescribeNetworkAclsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkAclsRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeNetworkAclsRequest', 'dryRun'),
              networkAclIds: _networkAclIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeNetworkAclsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'networkAclIds';
        _networkAclIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkAclsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
