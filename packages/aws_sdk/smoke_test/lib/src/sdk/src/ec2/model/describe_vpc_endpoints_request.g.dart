// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointsRequest extends DescribeVpcEndpointsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? vpcEndpointIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointsRequest(
          [void Function(DescribeVpcEndpointsRequestBuilder)? updates]) =>
      (new DescribeVpcEndpointsRequestBuilder()..update(updates))._build();

  _$DescribeVpcEndpointsRequest._(
      {required this.dryRun,
      this.vpcEndpointIds,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcEndpointsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVpcEndpointsRequest', 'maxResults');
  }

  @override
  DescribeVpcEndpointsRequest rebuild(
          void Function(DescribeVpcEndpointsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointsRequestBuilder toBuilder() =>
      new DescribeVpcEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointsRequest &&
        dryRun == other.dryRun &&
        vpcEndpointIds == other.vpcEndpointIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcEndpointIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointsRequestBuilder
    implements
        Builder<DescribeVpcEndpointsRequest,
            DescribeVpcEndpointsRequestBuilder> {
  _$DescribeVpcEndpointsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _vpcEndpointIds;
  _i3.ListBuilder<String> get vpcEndpointIds =>
      _$this._vpcEndpointIds ??= new _i3.ListBuilder<String>();
  set vpcEndpointIds(_i3.ListBuilder<String>? vpcEndpointIds) =>
      _$this._vpcEndpointIds = vpcEndpointIds;

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

  DescribeVpcEndpointsRequestBuilder() {
    DescribeVpcEndpointsRequest._init(this);
  }

  DescribeVpcEndpointsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcEndpointIds = $v.vpcEndpointIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointsRequest;
  }

  @override
  void update(void Function(DescribeVpcEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointsRequest build() => _build();

  _$DescribeVpcEndpointsRequest _build() {
    _$DescribeVpcEndpointsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpcEndpointsRequest', 'dryRun'),
              vpcEndpointIds: _vpcEndpointIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeVpcEndpointsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpointIds';
        _vpcEndpointIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
