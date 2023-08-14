// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_multicast_domain_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayMulticastDomainAssociationsRequest
    extends GetTransitGatewayMulticastDomainAssociationsRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetTransitGatewayMulticastDomainAssociationsRequest(
          [void Function(
                  GetTransitGatewayMulticastDomainAssociationsRequestBuilder)?
              updates]) =>
      (new GetTransitGatewayMulticastDomainAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayMulticastDomainAssociationsRequest._(
      {this.transitGatewayMulticastDomainId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetTransitGatewayMulticastDomainAssociationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'GetTransitGatewayMulticastDomainAssociationsRequest', 'dryRun');
  }

  @override
  GetTransitGatewayMulticastDomainAssociationsRequest rebuild(
          void Function(
                  GetTransitGatewayMulticastDomainAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayMulticastDomainAssociationsRequestBuilder toBuilder() =>
      new GetTransitGatewayMulticastDomainAssociationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayMulticastDomainAssociationsRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayMulticastDomainAssociationsRequestBuilder
    implements
        Builder<GetTransitGatewayMulticastDomainAssociationsRequest,
            GetTransitGatewayMulticastDomainAssociationsRequestBuilder> {
  _$GetTransitGatewayMulticastDomainAssociationsRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

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

  GetTransitGatewayMulticastDomainAssociationsRequestBuilder() {
    GetTransitGatewayMulticastDomainAssociationsRequest._init(this);
  }

  GetTransitGatewayMulticastDomainAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayMulticastDomainAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayMulticastDomainAssociationsRequest;
  }

  @override
  void update(
      void Function(GetTransitGatewayMulticastDomainAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayMulticastDomainAssociationsRequest build() => _build();

  _$GetTransitGatewayMulticastDomainAssociationsRequest _build() {
    _$GetTransitGatewayMulticastDomainAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayMulticastDomainAssociationsRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetTransitGatewayMulticastDomainAssociationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'GetTransitGatewayMulticastDomainAssociationsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayMulticastDomainAssociationsRequest',
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
