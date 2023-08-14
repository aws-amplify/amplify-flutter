// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Route extends Route {
  @override
  final String? destinationCidrBlock;
  @override
  final String? destinationIpv6CidrBlock;
  @override
  final String? destinationPrefixListId;
  @override
  final String? egressOnlyInternetGatewayId;
  @override
  final String? gatewayId;
  @override
  final String? instanceId;
  @override
  final String? instanceOwnerId;
  @override
  final String? natGatewayId;
  @override
  final String? transitGatewayId;
  @override
  final String? localGatewayId;
  @override
  final String? carrierGatewayId;
  @override
  final String? networkInterfaceId;
  @override
  final RouteOrigin? origin;
  @override
  final RouteState? state;
  @override
  final String? vpcPeeringConnectionId;
  @override
  final String? coreNetworkArn;

  factory _$Route([void Function(RouteBuilder)? updates]) =>
      (new RouteBuilder()..update(updates))._build();

  _$Route._(
      {this.destinationCidrBlock,
      this.destinationIpv6CidrBlock,
      this.destinationPrefixListId,
      this.egressOnlyInternetGatewayId,
      this.gatewayId,
      this.instanceId,
      this.instanceOwnerId,
      this.natGatewayId,
      this.transitGatewayId,
      this.localGatewayId,
      this.carrierGatewayId,
      this.networkInterfaceId,
      this.origin,
      this.state,
      this.vpcPeeringConnectionId,
      this.coreNetworkArn})
      : super._();

  @override
  Route rebuild(void Function(RouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteBuilder toBuilder() => new RouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Route &&
        destinationCidrBlock == other.destinationCidrBlock &&
        destinationIpv6CidrBlock == other.destinationIpv6CidrBlock &&
        destinationPrefixListId == other.destinationPrefixListId &&
        egressOnlyInternetGatewayId == other.egressOnlyInternetGatewayId &&
        gatewayId == other.gatewayId &&
        instanceId == other.instanceId &&
        instanceOwnerId == other.instanceOwnerId &&
        natGatewayId == other.natGatewayId &&
        transitGatewayId == other.transitGatewayId &&
        localGatewayId == other.localGatewayId &&
        carrierGatewayId == other.carrierGatewayId &&
        networkInterfaceId == other.networkInterfaceId &&
        origin == other.origin &&
        state == other.state &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId &&
        coreNetworkArn == other.coreNetworkArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationIpv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayId.hashCode);
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceOwnerId.hashCode);
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, carrierGatewayId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jc(_$hash, coreNetworkArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RouteBuilder implements Builder<Route, RouteBuilder> {
  _$Route? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _destinationIpv6CidrBlock;
  String? get destinationIpv6CidrBlock => _$this._destinationIpv6CidrBlock;
  set destinationIpv6CidrBlock(String? destinationIpv6CidrBlock) =>
      _$this._destinationIpv6CidrBlock = destinationIpv6CidrBlock;

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

  String? _instanceOwnerId;
  String? get instanceOwnerId => _$this._instanceOwnerId;
  set instanceOwnerId(String? instanceOwnerId) =>
      _$this._instanceOwnerId = instanceOwnerId;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _carrierGatewayId;
  String? get carrierGatewayId => _$this._carrierGatewayId;
  set carrierGatewayId(String? carrierGatewayId) =>
      _$this._carrierGatewayId = carrierGatewayId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  RouteOrigin? _origin;
  RouteOrigin? get origin => _$this._origin;
  set origin(RouteOrigin? origin) => _$this._origin = origin;

  RouteState? _state;
  RouteState? get state => _$this._state;
  set state(RouteState? state) => _$this._state = state;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  String? _coreNetworkArn;
  String? get coreNetworkArn => _$this._coreNetworkArn;
  set coreNetworkArn(String? coreNetworkArn) =>
      _$this._coreNetworkArn = coreNetworkArn;

  RouteBuilder();

  RouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _destinationIpv6CidrBlock = $v.destinationIpv6CidrBlock;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _egressOnlyInternetGatewayId = $v.egressOnlyInternetGatewayId;
      _gatewayId = $v.gatewayId;
      _instanceId = $v.instanceId;
      _instanceOwnerId = $v.instanceOwnerId;
      _natGatewayId = $v.natGatewayId;
      _transitGatewayId = $v.transitGatewayId;
      _localGatewayId = $v.localGatewayId;
      _carrierGatewayId = $v.carrierGatewayId;
      _networkInterfaceId = $v.networkInterfaceId;
      _origin = $v.origin;
      _state = $v.state;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _coreNetworkArn = $v.coreNetworkArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Route other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Route;
  }

  @override
  void update(void Function(RouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Route build() => _build();

  _$Route _build() {
    final _$result = _$v ??
        new _$Route._(
            destinationCidrBlock: destinationCidrBlock,
            destinationIpv6CidrBlock: destinationIpv6CidrBlock,
            destinationPrefixListId: destinationPrefixListId,
            egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
            gatewayId: gatewayId,
            instanceId: instanceId,
            instanceOwnerId: instanceOwnerId,
            natGatewayId: natGatewayId,
            transitGatewayId: transitGatewayId,
            localGatewayId: localGatewayId,
            carrierGatewayId: carrierGatewayId,
            networkInterfaceId: networkInterfaceId,
            origin: origin,
            state: state,
            vpcPeeringConnectionId: vpcPeeringConnectionId,
            coreNetworkArn: coreNetworkArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
