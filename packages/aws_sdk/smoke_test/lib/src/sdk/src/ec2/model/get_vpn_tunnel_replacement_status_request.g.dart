// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_tunnel_replacement_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnTunnelReplacementStatusRequest
    extends GetVpnTunnelReplacementStatusRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnTunnelOutsideIpAddress;
  @override
  final bool dryRun;

  factory _$GetVpnTunnelReplacementStatusRequest(
          [void Function(GetVpnTunnelReplacementStatusRequestBuilder)?
              updates]) =>
      (new GetVpnTunnelReplacementStatusRequestBuilder()..update(updates))
          ._build();

  _$GetVpnTunnelReplacementStatusRequest._(
      {this.vpnConnectionId,
      this.vpnTunnelOutsideIpAddress,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetVpnTunnelReplacementStatusRequest', 'dryRun');
  }

  @override
  GetVpnTunnelReplacementStatusRequest rebuild(
          void Function(GetVpnTunnelReplacementStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnTunnelReplacementStatusRequestBuilder toBuilder() =>
      new GetVpnTunnelReplacementStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnTunnelReplacementStatusRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnTunnelOutsideIpAddress == other.vpnTunnelOutsideIpAddress &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnTunnelOutsideIpAddress.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnTunnelReplacementStatusRequestBuilder
    implements
        Builder<GetVpnTunnelReplacementStatusRequest,
            GetVpnTunnelReplacementStatusRequestBuilder> {
  _$GetVpnTunnelReplacementStatusRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnTunnelOutsideIpAddress;
  String? get vpnTunnelOutsideIpAddress => _$this._vpnTunnelOutsideIpAddress;
  set vpnTunnelOutsideIpAddress(String? vpnTunnelOutsideIpAddress) =>
      _$this._vpnTunnelOutsideIpAddress = vpnTunnelOutsideIpAddress;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetVpnTunnelReplacementStatusRequestBuilder() {
    GetVpnTunnelReplacementStatusRequest._init(this);
  }

  GetVpnTunnelReplacementStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnTunnelOutsideIpAddress = $v.vpnTunnelOutsideIpAddress;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnTunnelReplacementStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnTunnelReplacementStatusRequest;
  }

  @override
  void update(
      void Function(GetVpnTunnelReplacementStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnTunnelReplacementStatusRequest build() => _build();

  _$GetVpnTunnelReplacementStatusRequest _build() {
    final _$result = _$v ??
        new _$GetVpnTunnelReplacementStatusRequest._(
            vpnConnectionId: vpnConnectionId,
            vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetVpnTunnelReplacementStatusRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
