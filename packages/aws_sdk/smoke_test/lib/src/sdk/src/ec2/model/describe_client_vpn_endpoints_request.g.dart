// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnEndpointsRequest
    extends DescribeClientVpnEndpointsRequest {
  @override
  final _i3.BuiltList<String>? clientVpnEndpointIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeClientVpnEndpointsRequest(
          [void Function(DescribeClientVpnEndpointsRequestBuilder)? updates]) =>
      (new DescribeClientVpnEndpointsRequestBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnEndpointsRequest._(
      {this.clientVpnEndpointIds,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeClientVpnEndpointsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClientVpnEndpointsRequest', 'dryRun');
  }

  @override
  DescribeClientVpnEndpointsRequest rebuild(
          void Function(DescribeClientVpnEndpointsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnEndpointsRequestBuilder toBuilder() =>
      new DescribeClientVpnEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnEndpointsRequest &&
        clientVpnEndpointIds == other.clientVpnEndpointIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnEndpointsRequestBuilder
    implements
        Builder<DescribeClientVpnEndpointsRequest,
            DescribeClientVpnEndpointsRequestBuilder> {
  _$DescribeClientVpnEndpointsRequest? _$v;

  _i3.ListBuilder<String>? _clientVpnEndpointIds;
  _i3.ListBuilder<String> get clientVpnEndpointIds =>
      _$this._clientVpnEndpointIds ??= new _i3.ListBuilder<String>();
  set clientVpnEndpointIds(_i3.ListBuilder<String>? clientVpnEndpointIds) =>
      _$this._clientVpnEndpointIds = clientVpnEndpointIds;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeClientVpnEndpointsRequestBuilder() {
    DescribeClientVpnEndpointsRequest._init(this);
  }

  DescribeClientVpnEndpointsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointIds = $v.clientVpnEndpointIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnEndpointsRequest;
  }

  @override
  void update(
      void Function(DescribeClientVpnEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnEndpointsRequest build() => _build();

  _$DescribeClientVpnEndpointsRequest _build() {
    _$DescribeClientVpnEndpointsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnEndpointsRequest._(
              clientVpnEndpointIds: _clientVpnEndpointIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeClientVpnEndpointsRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeClientVpnEndpointsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientVpnEndpointIds';
        _clientVpnEndpointIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnEndpointsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
