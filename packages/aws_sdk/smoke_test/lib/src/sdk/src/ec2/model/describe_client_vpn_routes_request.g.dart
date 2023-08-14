// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_routes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnRoutesRequest extends DescribeClientVpnRoutesRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeClientVpnRoutesRequest(
          [void Function(DescribeClientVpnRoutesRequestBuilder)? updates]) =>
      (new DescribeClientVpnRoutesRequestBuilder()..update(updates))._build();

  _$DescribeClientVpnRoutesRequest._(
      {this.clientVpnEndpointId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeClientVpnRoutesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClientVpnRoutesRequest', 'dryRun');
  }

  @override
  DescribeClientVpnRoutesRequest rebuild(
          void Function(DescribeClientVpnRoutesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnRoutesRequestBuilder toBuilder() =>
      new DescribeClientVpnRoutesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnRoutesRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnRoutesRequestBuilder
    implements
        Builder<DescribeClientVpnRoutesRequest,
            DescribeClientVpnRoutesRequestBuilder> {
  _$DescribeClientVpnRoutesRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

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

  DescribeClientVpnRoutesRequestBuilder() {
    DescribeClientVpnRoutesRequest._init(this);
  }

  DescribeClientVpnRoutesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnRoutesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnRoutesRequest;
  }

  @override
  void update(void Function(DescribeClientVpnRoutesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnRoutesRequest build() => _build();

  _$DescribeClientVpnRoutesRequest _build() {
    _$DescribeClientVpnRoutesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnRoutesRequest._(
              clientVpnEndpointId: clientVpnEndpointId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeClientVpnRoutesRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeClientVpnRoutesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnRoutesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
