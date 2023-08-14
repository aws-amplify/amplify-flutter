// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_transit_gateway_multicast_group_sources_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterTransitGatewayMulticastGroupSourcesRequest
    extends RegisterTransitGatewayMulticastGroupSourcesRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? groupIpAddress;
  @override
  final _i3.BuiltList<String>? networkInterfaceIds;
  @override
  final bool dryRun;

  factory _$RegisterTransitGatewayMulticastGroupSourcesRequest(
          [void Function(
                  RegisterTransitGatewayMulticastGroupSourcesRequestBuilder)?
              updates]) =>
      (new RegisterTransitGatewayMulticastGroupSourcesRequestBuilder()
            ..update(updates))
          ._build();

  _$RegisterTransitGatewayMulticastGroupSourcesRequest._(
      {this.transitGatewayMulticastDomainId,
      this.groupIpAddress,
      this.networkInterfaceIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'RegisterTransitGatewayMulticastGroupSourcesRequest', 'dryRun');
  }

  @override
  RegisterTransitGatewayMulticastGroupSourcesRequest rebuild(
          void Function(
                  RegisterTransitGatewayMulticastGroupSourcesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterTransitGatewayMulticastGroupSourcesRequestBuilder toBuilder() =>
      new RegisterTransitGatewayMulticastGroupSourcesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterTransitGatewayMulticastGroupSourcesRequest &&
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

class RegisterTransitGatewayMulticastGroupSourcesRequestBuilder
    implements
        Builder<RegisterTransitGatewayMulticastGroupSourcesRequest,
            RegisterTransitGatewayMulticastGroupSourcesRequestBuilder> {
  _$RegisterTransitGatewayMulticastGroupSourcesRequest? _$v;

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

  RegisterTransitGatewayMulticastGroupSourcesRequestBuilder() {
    RegisterTransitGatewayMulticastGroupSourcesRequest._init(this);
  }

  RegisterTransitGatewayMulticastGroupSourcesRequestBuilder get _$this {
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
  void replace(RegisterTransitGatewayMulticastGroupSourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterTransitGatewayMulticastGroupSourcesRequest;
  }

  @override
  void update(
      void Function(RegisterTransitGatewayMulticastGroupSourcesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterTransitGatewayMulticastGroupSourcesRequest build() => _build();

  _$RegisterTransitGatewayMulticastGroupSourcesRequest _build() {
    _$RegisterTransitGatewayMulticastGroupSourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$RegisterTransitGatewayMulticastGroupSourcesRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              groupIpAddress: groupIpAddress,
              networkInterfaceIds: _networkInterfaceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'RegisterTransitGatewayMulticastGroupSourcesRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterTransitGatewayMulticastGroupSourcesRequest',
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
