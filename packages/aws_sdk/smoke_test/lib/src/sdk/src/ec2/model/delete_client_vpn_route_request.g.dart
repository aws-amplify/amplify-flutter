// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_client_vpn_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteClientVpnRouteRequest extends DeleteClientVpnRouteRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? targetVpcSubnetId;
  @override
  final String? destinationCidrBlock;
  @override
  final bool dryRun;

  factory _$DeleteClientVpnRouteRequest(
          [void Function(DeleteClientVpnRouteRequestBuilder)? updates]) =>
      (new DeleteClientVpnRouteRequestBuilder()..update(updates))._build();

  _$DeleteClientVpnRouteRequest._(
      {this.clientVpnEndpointId,
      this.targetVpcSubnetId,
      this.destinationCidrBlock,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteClientVpnRouteRequest', 'dryRun');
  }

  @override
  DeleteClientVpnRouteRequest rebuild(
          void Function(DeleteClientVpnRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientVpnRouteRequestBuilder toBuilder() =>
      new DeleteClientVpnRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientVpnRouteRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        targetVpcSubnetId == other.targetVpcSubnetId &&
        destinationCidrBlock == other.destinationCidrBlock &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, targetVpcSubnetId.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteClientVpnRouteRequestBuilder
    implements
        Builder<DeleteClientVpnRouteRequest,
            DeleteClientVpnRouteRequestBuilder> {
  _$DeleteClientVpnRouteRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _targetVpcSubnetId;
  String? get targetVpcSubnetId => _$this._targetVpcSubnetId;
  set targetVpcSubnetId(String? targetVpcSubnetId) =>
      _$this._targetVpcSubnetId = targetVpcSubnetId;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteClientVpnRouteRequestBuilder() {
    DeleteClientVpnRouteRequest._init(this);
  }

  DeleteClientVpnRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _targetVpcSubnetId = $v.targetVpcSubnetId;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteClientVpnRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientVpnRouteRequest;
  }

  @override
  void update(void Function(DeleteClientVpnRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientVpnRouteRequest build() => _build();

  _$DeleteClientVpnRouteRequest _build() {
    final _$result = _$v ??
        new _$DeleteClientVpnRouteRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            targetVpcSubnetId: targetVpcSubnetId,
            destinationCidrBlock: destinationCidrBlock,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteClientVpnRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
