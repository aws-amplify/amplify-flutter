// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_connect_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceConnectEndpointsRequest
    extends DescribeInstanceConnectEndpointsRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? instanceConnectEndpointIds;

  factory _$DescribeInstanceConnectEndpointsRequest(
          [void Function(DescribeInstanceConnectEndpointsRequestBuilder)?
              updates]) =>
      (new DescribeInstanceConnectEndpointsRequestBuilder()..update(updates))
          ._build();

  _$DescribeInstanceConnectEndpointsRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.filters,
      this.instanceConnectEndpointIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceConnectEndpointsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeInstanceConnectEndpointsRequest', 'maxResults');
  }

  @override
  DescribeInstanceConnectEndpointsRequest rebuild(
          void Function(DescribeInstanceConnectEndpointsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceConnectEndpointsRequestBuilder toBuilder() =>
      new DescribeInstanceConnectEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceConnectEndpointsRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        instanceConnectEndpointIds == other.instanceConnectEndpointIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, instanceConnectEndpointIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceConnectEndpointsRequestBuilder
    implements
        Builder<DescribeInstanceConnectEndpointsRequest,
            DescribeInstanceConnectEndpointsRequestBuilder> {
  _$DescribeInstanceConnectEndpointsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _instanceConnectEndpointIds;
  _i3.ListBuilder<String> get instanceConnectEndpointIds =>
      _$this._instanceConnectEndpointIds ??= new _i3.ListBuilder<String>();
  set instanceConnectEndpointIds(
          _i3.ListBuilder<String>? instanceConnectEndpointIds) =>
      _$this._instanceConnectEndpointIds = instanceConnectEndpointIds;

  DescribeInstanceConnectEndpointsRequestBuilder() {
    DescribeInstanceConnectEndpointsRequest._init(this);
  }

  DescribeInstanceConnectEndpointsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _instanceConnectEndpointIds = $v.instanceConnectEndpointIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceConnectEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceConnectEndpointsRequest;
  }

  @override
  void update(
      void Function(DescribeInstanceConnectEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceConnectEndpointsRequest build() => _build();

  _$DescribeInstanceConnectEndpointsRequest _build() {
    _$DescribeInstanceConnectEndpointsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceConnectEndpointsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstanceConnectEndpointsRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeInstanceConnectEndpointsRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              instanceConnectEndpointIds: _instanceConnectEndpointIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'instanceConnectEndpointIds';
        _instanceConnectEndpointIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceConnectEndpointsRequest',
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
