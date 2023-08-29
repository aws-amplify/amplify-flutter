// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpn_connection_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpnConnectionRouteRequest
    extends DeleteVpnConnectionRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? vpnConnectionId;

  factory _$DeleteVpnConnectionRouteRequest(
          [void Function(DeleteVpnConnectionRouteRequestBuilder)? updates]) =>
      (new DeleteVpnConnectionRouteRequestBuilder()..update(updates))._build();

  _$DeleteVpnConnectionRouteRequest._(
      {this.destinationCidrBlock, this.vpnConnectionId})
      : super._();

  @override
  DeleteVpnConnectionRouteRequest rebuild(
          void Function(DeleteVpnConnectionRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpnConnectionRouteRequestBuilder toBuilder() =>
      new DeleteVpnConnectionRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpnConnectionRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        vpnConnectionId == other.vpnConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpnConnectionRouteRequestBuilder
    implements
        Builder<DeleteVpnConnectionRouteRequest,
            DeleteVpnConnectionRouteRequestBuilder> {
  _$DeleteVpnConnectionRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  DeleteVpnConnectionRouteRequestBuilder();

  DeleteVpnConnectionRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _vpnConnectionId = $v.vpnConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpnConnectionRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpnConnectionRouteRequest;
  }

  @override
  void update(void Function(DeleteVpnConnectionRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpnConnectionRouteRequest build() => _build();

  _$DeleteVpnConnectionRouteRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpnConnectionRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            vpnConnectionId: vpnConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
