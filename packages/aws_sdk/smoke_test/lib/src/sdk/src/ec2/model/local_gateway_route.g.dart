// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayRoute extends LocalGatewayRoute {
  @override
  final String? destinationCidrBlock;
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final LocalGatewayRouteType? type;
  @override
  final LocalGatewayRouteState? state;
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayRouteTableArn;
  @override
  final String? ownerId;
  @override
  final String? subnetId;
  @override
  final String? coipPoolId;
  @override
  final String? networkInterfaceId;
  @override
  final String? destinationPrefixListId;

  factory _$LocalGatewayRoute(
          [void Function(LocalGatewayRouteBuilder)? updates]) =>
      (new LocalGatewayRouteBuilder()..update(updates))._build();

  _$LocalGatewayRoute._(
      {this.destinationCidrBlock,
      this.localGatewayVirtualInterfaceGroupId,
      this.type,
      this.state,
      this.localGatewayRouteTableId,
      this.localGatewayRouteTableArn,
      this.ownerId,
      this.subnetId,
      this.coipPoolId,
      this.networkInterfaceId,
      this.destinationPrefixListId})
      : super._();

  @override
  LocalGatewayRoute rebuild(void Function(LocalGatewayRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayRouteBuilder toBuilder() =>
      new LocalGatewayRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayRoute &&
        destinationCidrBlock == other.destinationCidrBlock &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        type == other.type &&
        state == other.state &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayRouteTableArn == other.localGatewayRouteTableArn &&
        ownerId == other.ownerId &&
        subnetId == other.subnetId &&
        coipPoolId == other.coipPoolId &&
        networkInterfaceId == other.networkInterfaceId &&
        destinationPrefixListId == other.destinationPrefixListId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, coipPoolId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayRouteBuilder
    implements Builder<LocalGatewayRoute, LocalGatewayRouteBuilder> {
  _$LocalGatewayRoute? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  LocalGatewayRouteType? _type;
  LocalGatewayRouteType? get type => _$this._type;
  set type(LocalGatewayRouteType? type) => _$this._type = type;

  LocalGatewayRouteState? _state;
  LocalGatewayRouteState? get state => _$this._state;
  set state(LocalGatewayRouteState? state) => _$this._state = state;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayRouteTableArn;
  String? get localGatewayRouteTableArn => _$this._localGatewayRouteTableArn;
  set localGatewayRouteTableArn(String? localGatewayRouteTableArn) =>
      _$this._localGatewayRouteTableArn = localGatewayRouteTableArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  LocalGatewayRouteBuilder();

  LocalGatewayRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _type = $v.type;
      _state = $v.state;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayRouteTableArn = $v.localGatewayRouteTableArn;
      _ownerId = $v.ownerId;
      _subnetId = $v.subnetId;
      _coipPoolId = $v.coipPoolId;
      _networkInterfaceId = $v.networkInterfaceId;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayRoute;
  }

  @override
  void update(void Function(LocalGatewayRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayRoute build() => _build();

  _$LocalGatewayRoute _build() {
    final _$result = _$v ??
        new _$LocalGatewayRoute._(
            destinationCidrBlock: destinationCidrBlock,
            localGatewayVirtualInterfaceGroupId:
                localGatewayVirtualInterfaceGroupId,
            type: type,
            state: state,
            localGatewayRouteTableId: localGatewayRouteTableId,
            localGatewayRouteTableArn: localGatewayRouteTableArn,
            ownerId: ownerId,
            subnetId: subnetId,
            coipPoolId: coipPoolId,
            networkInterfaceId: networkInterfaceId,
            destinationPrefixListId: destinationPrefixListId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
