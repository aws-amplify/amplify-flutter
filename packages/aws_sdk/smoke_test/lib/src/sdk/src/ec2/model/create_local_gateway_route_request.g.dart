// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteRequest extends CreateLocalGatewayRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final bool dryRun;
  @override
  final String? networkInterfaceId;
  @override
  final String? destinationPrefixListId;

  factory _$CreateLocalGatewayRouteRequest(
          [void Function(CreateLocalGatewayRouteRequestBuilder)? updates]) =>
      (new CreateLocalGatewayRouteRequestBuilder()..update(updates))._build();

  _$CreateLocalGatewayRouteRequest._(
      {this.destinationCidrBlock,
      this.localGatewayRouteTableId,
      this.localGatewayVirtualInterfaceGroupId,
      required this.dryRun,
      this.networkInterfaceId,
      this.destinationPrefixListId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateLocalGatewayRouteRequest', 'dryRun');
  }

  @override
  CreateLocalGatewayRouteRequest rebuild(
          void Function(CreateLocalGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteRequestBuilder toBuilder() =>
      new CreateLocalGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        dryRun == other.dryRun &&
        networkInterfaceId == other.networkInterfaceId &&
        destinationPrefixListId == other.destinationPrefixListId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteRequestBuilder
    implements
        Builder<CreateLocalGatewayRouteRequest,
            CreateLocalGatewayRouteRequestBuilder> {
  _$CreateLocalGatewayRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  CreateLocalGatewayRouteRequestBuilder() {
    CreateLocalGatewayRouteRequest._init(this);
  }

  CreateLocalGatewayRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _dryRun = $v.dryRun;
      _networkInterfaceId = $v.networkInterfaceId;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteRequest;
  }

  @override
  void update(void Function(CreateLocalGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteRequest build() => _build();

  _$CreateLocalGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$CreateLocalGatewayRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            localGatewayRouteTableId: localGatewayRouteTableId,
            localGatewayVirtualInterfaceGroupId:
                localGatewayVirtualInterfaceGroupId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateLocalGatewayRouteRequest', 'dryRun'),
            networkInterfaceId: networkInterfaceId,
            destinationPrefixListId: destinationPrefixListId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
