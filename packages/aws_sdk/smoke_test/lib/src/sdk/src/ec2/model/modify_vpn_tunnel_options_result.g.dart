// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_tunnel_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelOptionsResult extends ModifyVpnTunnelOptionsResult {
  @override
  final VpnConnection? vpnConnection;

  factory _$ModifyVpnTunnelOptionsResult(
          [void Function(ModifyVpnTunnelOptionsResultBuilder)? updates]) =>
      (new ModifyVpnTunnelOptionsResultBuilder()..update(updates))._build();

  _$ModifyVpnTunnelOptionsResult._({this.vpnConnection}) : super._();

  @override
  ModifyVpnTunnelOptionsResult rebuild(
          void Function(ModifyVpnTunnelOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelOptionsResultBuilder toBuilder() =>
      new ModifyVpnTunnelOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelOptionsResult &&
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

class ModifyVpnTunnelOptionsResultBuilder
    implements
        Builder<ModifyVpnTunnelOptionsResult,
            ModifyVpnTunnelOptionsResultBuilder> {
  _$ModifyVpnTunnelOptionsResult? _$v;

  VpnConnectionBuilder? _vpnConnection;
  VpnConnectionBuilder get vpnConnection =>
      _$this._vpnConnection ??= new VpnConnectionBuilder();
  set vpnConnection(VpnConnectionBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  ModifyVpnTunnelOptionsResultBuilder();

  ModifyVpnTunnelOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnTunnelOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelOptionsResult;
  }

  @override
  void update(void Function(ModifyVpnTunnelOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelOptionsResult build() => _build();

  _$ModifyVpnTunnelOptionsResult _build() {
    _$ModifyVpnTunnelOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnTunnelOptionsResult._(
              vpnConnection: _vpnConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnTunnelOptionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
