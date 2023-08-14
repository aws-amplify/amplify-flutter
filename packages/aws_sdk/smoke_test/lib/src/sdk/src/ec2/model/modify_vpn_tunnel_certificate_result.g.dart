// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_tunnel_certificate_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelCertificateResult
    extends ModifyVpnTunnelCertificateResult {
  @override
  final VpnConnection? vpnConnection;

  factory _$ModifyVpnTunnelCertificateResult(
          [void Function(ModifyVpnTunnelCertificateResultBuilder)? updates]) =>
      (new ModifyVpnTunnelCertificateResultBuilder()..update(updates))._build();

  _$ModifyVpnTunnelCertificateResult._({this.vpnConnection}) : super._();

  @override
  ModifyVpnTunnelCertificateResult rebuild(
          void Function(ModifyVpnTunnelCertificateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelCertificateResultBuilder toBuilder() =>
      new ModifyVpnTunnelCertificateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelCertificateResult &&
        vpnConnection == other.vpnConnection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnTunnelCertificateResultBuilder
    implements
        Builder<ModifyVpnTunnelCertificateResult,
            ModifyVpnTunnelCertificateResultBuilder> {
  _$ModifyVpnTunnelCertificateResult? _$v;

  VpnConnectionBuilder? _vpnConnection;
  VpnConnectionBuilder get vpnConnection =>
      _$this._vpnConnection ??= new VpnConnectionBuilder();
  set vpnConnection(VpnConnectionBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  ModifyVpnTunnelCertificateResultBuilder();

  ModifyVpnTunnelCertificateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnTunnelCertificateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelCertificateResult;
  }

  @override
  void update(void Function(ModifyVpnTunnelCertificateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelCertificateResult build() => _build();

  _$ModifyVpnTunnelCertificateResult _build() {
    _$ModifyVpnTunnelCertificateResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnTunnelCertificateResult._(
              vpnConnection: _vpnConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnTunnelCertificateResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
