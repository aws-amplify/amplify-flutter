// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_vpn_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateClientVpnRouteRequest extends CreateClientVpnRouteRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? destinationCidrBlock;
  @override
  final String? targetVpcSubnetId;
  @override
  final String? description;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$CreateClientVpnRouteRequest(
          [void Function(CreateClientVpnRouteRequestBuilder)? updates]) =>
      (new CreateClientVpnRouteRequestBuilder()..update(updates))._build();

  _$CreateClientVpnRouteRequest._(
      {this.clientVpnEndpointId,
      this.destinationCidrBlock,
      this.targetVpcSubnetId,
      this.description,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateClientVpnRouteRequest', 'dryRun');
  }

  @override
  CreateClientVpnRouteRequest rebuild(
          void Function(CreateClientVpnRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateClientVpnRouteRequestBuilder toBuilder() =>
      new CreateClientVpnRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateClientVpnRouteRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        destinationCidrBlock == other.destinationCidrBlock &&
        targetVpcSubnetId == other.targetVpcSubnetId &&
        description == other.description &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, targetVpcSubnetId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateClientVpnRouteRequestBuilder
    implements
        Builder<CreateClientVpnRouteRequest,
            CreateClientVpnRouteRequestBuilder> {
  _$CreateClientVpnRouteRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _targetVpcSubnetId;
  String? get targetVpcSubnetId => _$this._targetVpcSubnetId;
  set targetVpcSubnetId(String? targetVpcSubnetId) =>
      _$this._targetVpcSubnetId = targetVpcSubnetId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateClientVpnRouteRequestBuilder() {
    CreateClientVpnRouteRequest._init(this);
  }

  CreateClientVpnRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _targetVpcSubnetId = $v.targetVpcSubnetId;
      _description = $v.description;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateClientVpnRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateClientVpnRouteRequest;
  }

  @override
  void update(void Function(CreateClientVpnRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateClientVpnRouteRequest build() => _build();

  _$CreateClientVpnRouteRequest _build() {
    final _$result = _$v ??
        new _$CreateClientVpnRouteRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            destinationCidrBlock: destinationCidrBlock,
            targetVpcSubnetId: targetVpcSubnetId,
            description: description,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateClientVpnRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
