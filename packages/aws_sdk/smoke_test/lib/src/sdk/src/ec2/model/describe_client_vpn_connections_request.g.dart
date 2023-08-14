// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_connections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnConnectionsRequest
    extends DescribeClientVpnConnectionsRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$DescribeClientVpnConnectionsRequest(
          [void Function(DescribeClientVpnConnectionsRequestBuilder)?
              updates]) =>
      (new DescribeClientVpnConnectionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnConnectionsRequest._(
      {this.clientVpnEndpointId,
      this.filters,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeClientVpnConnectionsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClientVpnConnectionsRequest', 'dryRun');
  }

  @override
  DescribeClientVpnConnectionsRequest rebuild(
          void Function(DescribeClientVpnConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnConnectionsRequestBuilder toBuilder() =>
      new DescribeClientVpnConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnConnectionsRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnConnectionsRequestBuilder
    implements
        Builder<DescribeClientVpnConnectionsRequest,
            DescribeClientVpnConnectionsRequestBuilder> {
  _$DescribeClientVpnConnectionsRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeClientVpnConnectionsRequestBuilder() {
    DescribeClientVpnConnectionsRequest._init(this);
  }

  DescribeClientVpnConnectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnConnectionsRequest;
  }

  @override
  void update(
      void Function(DescribeClientVpnConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnConnectionsRequest build() => _build();

  _$DescribeClientVpnConnectionsRequest _build() {
    _$DescribeClientVpnConnectionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnConnectionsRequest._(
              clientVpnEndpointId: clientVpnEndpointId,
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeClientVpnConnectionsRequest', 'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeClientVpnConnectionsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnConnectionsRequest',
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
