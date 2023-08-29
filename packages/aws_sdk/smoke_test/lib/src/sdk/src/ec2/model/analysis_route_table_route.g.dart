// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_route_table_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisRouteTableRoute extends AnalysisRouteTableRoute {
  @override
  final String? destinationCidr;
  @override
  final String? destinationPrefixListId;
  @override
  final String? egressOnlyInternetGatewayId;
  @override
  final String? gatewayId;
  @override
  final String? instanceId;
  @override
  final String? natGatewayId;
  @override
  final String? networkInterfaceId;
  @override
  final String? origin;
  @override
  final String? transitGatewayId;
  @override
  final String? vpcPeeringConnectionId;
  @override
  final String? state;
  @override
  final String? carrierGatewayId;
  @override
  final String? coreNetworkArn;
  @override
  final String? localGatewayId;

  factory _$AnalysisRouteTableRoute(
          [void Function(AnalysisRouteTableRouteBuilder)? updates]) =>
      (new AnalysisRouteTableRouteBuilder()..update(updates))._build();

  _$AnalysisRouteTableRoute._(
      {this.destinationCidr,
      this.destinationPrefixListId,
      this.egressOnlyInternetGatewayId,
      this.gatewayId,
      this.instanceId,
      this.natGatewayId,
      this.networkInterfaceId,
      this.origin,
      this.transitGatewayId,
      this.vpcPeeringConnectionId,
      this.state,
      this.carrierGatewayId,
      this.coreNetworkArn,
      this.localGatewayId})
      : super._();

  @override
  AnalysisRouteTableRoute rebuild(
          void Function(AnalysisRouteTableRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisRouteTableRouteBuilder toBuilder() =>
      new AnalysisRouteTableRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisRouteTableRoute &&
        destinationCidr == other.destinationCidr &&
        destinationPrefixListId == other.destinationPrefixListId &&
        egressOnlyInternetGatewayId == other.egressOnlyInternetGatewayId &&
        gatewayId == other.gatewayId &&
        instanceId == other.instanceId &&
        natGatewayId == other.natGatewayId &&
        networkInterfaceId == other.networkInterfaceId &&
        origin == other.origin &&
        transitGatewayId == other.transitGatewayId &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId &&
        state == other.state &&
        carrierGatewayId == other.carrierGatewayId &&
        coreNetworkArn == other.coreNetworkArn &&
        localGatewayId == other.localGatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidr.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayId.hashCode);
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, carrierGatewayId.hashCode);
    _$hash = $jc(_$hash, coreNetworkArn.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisRouteTableRouteBuilder
    implements
        Builder<AnalysisRouteTableRoute, AnalysisRouteTableRouteBuilder> {
  _$AnalysisRouteTableRoute? _$v;

  String? _destinationCidr;
  String? get destinationCidr => _$this._destinationCidr;
  set destinationCidr(String? destinationCidr) =>
      _$this._destinationCidr = destinationCidr;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  String? _egressOnlyInternetGatewayId;
  String? get egressOnlyInternetGatewayId =>
      _$this._egressOnlyInternetGatewayId;
  set egressOnlyInternetGatewayId(String? egressOnlyInternetGatewayId) =>
      _$this._egressOnlyInternetGatewayId = egressOnlyInternetGatewayId;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _carrierGatewayId;
  String? get carrierGatewayId => _$this._carrierGatewayId;
  set carrierGatewayId(String? carrierGatewayId) =>
      _$this._carrierGatewayId = carrierGatewayId;

  String? _coreNetworkArn;
  String? get coreNetworkArn => _$this._coreNetworkArn;
  set coreNetworkArn(String? coreNetworkArn) =>
      _$this._coreNetworkArn = coreNetworkArn;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  AnalysisRouteTableRouteBuilder();

  AnalysisRouteTableRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidr = $v.destinationCidr;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _egressOnlyInternetGatewayId = $v.egressOnlyInternetGatewayId;
      _gatewayId = $v.gatewayId;
      _instanceId = $v.instanceId;
      _natGatewayId = $v.natGatewayId;
      _networkInterfaceId = $v.networkInterfaceId;
      _origin = $v.origin;
      _transitGatewayId = $v.transitGatewayId;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _state = $v.state;
      _carrierGatewayId = $v.carrierGatewayId;
      _coreNetworkArn = $v.coreNetworkArn;
      _localGatewayId = $v.localGatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisRouteTableRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisRouteTableRoute;
  }

  @override
  void update(void Function(AnalysisRouteTableRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisRouteTableRoute build() => _build();

  _$AnalysisRouteTableRoute _build() {
    final _$result = _$v ??
        new _$AnalysisRouteTableRoute._(
            destinationCidr: destinationCidr,
            destinationPrefixListId: destinationPrefixListId,
            egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
            gatewayId: gatewayId,
            instanceId: instanceId,
            natGatewayId: natGatewayId,
            networkInterfaceId: networkInterfaceId,
            origin: origin,
            transitGatewayId: transitGatewayId,
            vpcPeeringConnectionId: vpcPeeringConnectionId,
            state: state,
            carrierGatewayId: carrierGatewayId,
            coreNetworkArn: coreNetworkArn,
            localGatewayId: localGatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
