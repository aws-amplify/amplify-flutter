// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_vpn_tunnel_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceVpnTunnelRequest extends ReplaceVpnTunnelRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnTunnelOutsideIpAddress;
  @override
  final bool applyPendingMaintenance;
  @override
  final bool dryRun;

  factory _$ReplaceVpnTunnelRequest(
          [void Function(ReplaceVpnTunnelRequestBuilder)? updates]) =>
      (new ReplaceVpnTunnelRequestBuilder()..update(updates))._build();

  _$ReplaceVpnTunnelRequest._(
      {this.vpnConnectionId,
      this.vpnTunnelOutsideIpAddress,
      required this.applyPendingMaintenance,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(applyPendingMaintenance,
        r'ReplaceVpnTunnelRequest', 'applyPendingMaintenance');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReplaceVpnTunnelRequest', 'dryRun');
  }

  @override
  ReplaceVpnTunnelRequest rebuild(
          void Function(ReplaceVpnTunnelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceVpnTunnelRequestBuilder toBuilder() =>
      new ReplaceVpnTunnelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceVpnTunnelRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnTunnelOutsideIpAddress == other.vpnTunnelOutsideIpAddress &&
        applyPendingMaintenance == other.applyPendingMaintenance &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnTunnelOutsideIpAddress.hashCode);
    _$hash = $jc(_$hash, applyPendingMaintenance.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceVpnTunnelRequestBuilder
    implements
        Builder<ReplaceVpnTunnelRequest, ReplaceVpnTunnelRequestBuilder> {
  _$ReplaceVpnTunnelRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnTunnelOutsideIpAddress;
  String? get vpnTunnelOutsideIpAddress => _$this._vpnTunnelOutsideIpAddress;
  set vpnTunnelOutsideIpAddress(String? vpnTunnelOutsideIpAddress) =>
      _$this._vpnTunnelOutsideIpAddress = vpnTunnelOutsideIpAddress;

  bool? _applyPendingMaintenance;
  bool? get applyPendingMaintenance => _$this._applyPendingMaintenance;
  set applyPendingMaintenance(bool? applyPendingMaintenance) =>
      _$this._applyPendingMaintenance = applyPendingMaintenance;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ReplaceVpnTunnelRequestBuilder() {
    ReplaceVpnTunnelRequest._init(this);
  }

  ReplaceVpnTunnelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnTunnelOutsideIpAddress = $v.vpnTunnelOutsideIpAddress;
      _applyPendingMaintenance = $v.applyPendingMaintenance;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceVpnTunnelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceVpnTunnelRequest;
  }

  @override
  void update(void Function(ReplaceVpnTunnelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceVpnTunnelRequest build() => _build();

  _$ReplaceVpnTunnelRequest _build() {
    final _$result = _$v ??
        new _$ReplaceVpnTunnelRequest._(
            vpnConnectionId: vpnConnectionId,
            vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
            applyPendingMaintenance: BuiltValueNullFieldError.checkNotNull(
                applyPendingMaintenance,
                r'ReplaceVpnTunnelRequest',
                'applyPendingMaintenance'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReplaceVpnTunnelRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
