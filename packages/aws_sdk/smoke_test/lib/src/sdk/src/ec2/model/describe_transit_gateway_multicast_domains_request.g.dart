// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_multicast_domains_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayMulticastDomainsRequest
    extends DescribeTransitGatewayMulticastDomainsRequest {
  @override
  final _i3.BuiltList<String>? transitGatewayMulticastDomainIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeTransitGatewayMulticastDomainsRequest(
          [void Function(DescribeTransitGatewayMulticastDomainsRequestBuilder)?
              updates]) =>
      (new DescribeTransitGatewayMulticastDomainsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeTransitGatewayMulticastDomainsRequest._(
      {this.transitGatewayMulticastDomainIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeTransitGatewayMulticastDomainsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTransitGatewayMulticastDomainsRequest', 'dryRun');
  }

  @override
  DescribeTransitGatewayMulticastDomainsRequest rebuild(
          void Function(DescribeTransitGatewayMulticastDomainsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayMulticastDomainsRequestBuilder toBuilder() =>
      new DescribeTransitGatewayMulticastDomainsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayMulticastDomainsRequest &&
        transitGatewayMulticastDomainIds ==
            other.transitGatewayMulticastDomainIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayMulticastDomainsRequestBuilder
    implements
        Builder<DescribeTransitGatewayMulticastDomainsRequest,
            DescribeTransitGatewayMulticastDomainsRequestBuilder> {
  _$DescribeTransitGatewayMulticastDomainsRequest? _$v;

  _i3.ListBuilder<String>? _transitGatewayMulticastDomainIds;
  _i3.ListBuilder<String> get transitGatewayMulticastDomainIds =>
      _$this._transitGatewayMulticastDomainIds ??=
          new _i3.ListBuilder<String>();
  set transitGatewayMulticastDomainIds(
          _i3.ListBuilder<String>? transitGatewayMulticastDomainIds) =>
      _$this._transitGatewayMulticastDomainIds =
          transitGatewayMulticastDomainIds;

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

  DescribeTransitGatewayMulticastDomainsRequestBuilder() {
    DescribeTransitGatewayMulticastDomainsRequest._init(this);
  }

  DescribeTransitGatewayMulticastDomainsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainIds =
          $v.transitGatewayMulticastDomainIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayMulticastDomainsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayMulticastDomainsRequest;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayMulticastDomainsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayMulticastDomainsRequest build() => _build();

  _$DescribeTransitGatewayMulticastDomainsRequest _build() {
    _$DescribeTransitGatewayMulticastDomainsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayMulticastDomainsRequest._(
              transitGatewayMulticastDomainIds:
                  _transitGatewayMulticastDomainIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeTransitGatewayMulticastDomainsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeTransitGatewayMulticastDomainsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayMulticastDomainIds';
        _transitGatewayMulticastDomainIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayMulticastDomainsRequest',
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
