// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_tunnel_certificate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelCertificateRequest
    extends ModifyVpnTunnelCertificateRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnTunnelOutsideIpAddress;
  @override
  final bool dryRun;

  factory _$ModifyVpnTunnelCertificateRequest(
          [void Function(ModifyVpnTunnelCertificateRequestBuilder)? updates]) =>
      (new ModifyVpnTunnelCertificateRequestBuilder()..update(updates))
          ._build();

  _$ModifyVpnTunnelCertificateRequest._(
      {this.vpnConnectionId,
      this.vpnTunnelOutsideIpAddress,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpnTunnelCertificateRequest', 'dryRun');
  }

  @override
  ModifyVpnTunnelCertificateRequest rebuild(
          void Function(ModifyVpnTunnelCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelCertificateRequestBuilder toBuilder() =>
      new ModifyVpnTunnelCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelCertificateRequest &&
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

class ModifyVpnTunnelCertificateRequestBuilder
    implements
        Builder<ModifyVpnTunnelCertificateRequest,
            ModifyVpnTunnelCertificateRequestBuilder> {
  _$ModifyVpnTunnelCertificateRequest? _$v;

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

  ModifyVpnTunnelCertificateRequestBuilder() {
    ModifyVpnTunnelCertificateRequest._init(this);
  }

  ModifyVpnTunnelCertificateRequestBuilder get _$this {
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
  void replace(ModifyVpnTunnelCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelCertificateRequest;
  }

  @override
  void update(
      void Function(ModifyVpnTunnelCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelCertificateRequest build() => _build();

  _$ModifyVpnTunnelCertificateRequest _build() {
    final _$result = _$v ??
        new _$ModifyVpnTunnelCertificateRequest._(
            vpnConnectionId: vpnConnectionId,
            vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVpnTunnelCertificateRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
