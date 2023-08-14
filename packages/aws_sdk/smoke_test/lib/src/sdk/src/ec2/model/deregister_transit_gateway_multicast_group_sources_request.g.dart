// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_transit_gateway_multicast_group_sources_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTransitGatewayMulticastGroupSourcesRequest
    extends DeregisterTransitGatewayMulticastGroupSourcesRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? groupIpAddress;
  @override
  final _i3.BuiltList<String>? networkInterfaceIds;
  @override
  final bool dryRun;

  factory _$DeregisterTransitGatewayMulticastGroupSourcesRequest(
          [void Function(
                  DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder)?
              updates]) =>
      (new DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder()
            ..update(updates))
          ._build();

  _$DeregisterTransitGatewayMulticastGroupSourcesRequest._(
      {this.transitGatewayMulticastDomainId,
      this.groupIpAddress,
      this.networkInterfaceIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DeregisterTransitGatewayMulticastGroupSourcesRequest', 'dryRun');
  }

  @override
  DeregisterTransitGatewayMulticastGroupSourcesRequest rebuild(
          void Function(
                  DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder toBuilder() =>
      new DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTransitGatewayMulticastGroupSourcesRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        groupIpAddress == other.groupIpAddress &&
        networkInterfaceIds == other.networkInterfaceIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, groupIpAddress.hashCode);
    _$hash = $jc(_$hash, networkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder
    implements
        Builder<DeregisterTransitGatewayMulticastGroupSourcesRequest,
            DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder> {
  _$DeregisterTransitGatewayMulticastGroupSourcesRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  String? _groupIpAddress;
  String? get groupIpAddress => _$this._groupIpAddress;
  set groupIpAddress(String? groupIpAddress) =>
      _$this._groupIpAddress = groupIpAddress;

  _i3.ListBuilder<String>? _networkInterfaceIds;
  _i3.ListBuilder<String> get networkInterfaceIds =>
      _$this._networkInterfaceIds ??= new _i3.ListBuilder<String>();
  set networkInterfaceIds(_i3.ListBuilder<String>? networkInterfaceIds) =>
      _$this._networkInterfaceIds = networkInterfaceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder() {
    DeregisterTransitGatewayMulticastGroupSourcesRequest._init(this);
  }

  DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _groupIpAddress = $v.groupIpAddress;
      _networkInterfaceIds = $v.networkInterfaceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterTransitGatewayMulticastGroupSourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTransitGatewayMulticastGroupSourcesRequest;
  }

  @override
  void update(
      void Function(
              DeregisterTransitGatewayMulticastGroupSourcesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTransitGatewayMulticastGroupSourcesRequest build() => _build();

  _$DeregisterTransitGatewayMulticastGroupSourcesRequest _build() {
    _$DeregisterTransitGatewayMulticastGroupSourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$DeregisterTransitGatewayMulticastGroupSourcesRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              groupIpAddress: groupIpAddress,
              networkInterfaceIds: _networkInterfaceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DeregisterTransitGatewayMulticastGroupSourcesRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterTransitGatewayMulticastGroupSourcesRequest',
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
