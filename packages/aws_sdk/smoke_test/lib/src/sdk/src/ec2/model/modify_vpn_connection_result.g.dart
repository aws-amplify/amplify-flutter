// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnConnectionResult extends ModifyVpnConnectionResult {
  @override
  final VpnConnection? vpnConnection;

  factory _$ModifyVpnConnectionResult(
          [void Function(ModifyVpnConnectionResultBuilder)? updates]) =>
      (new ModifyVpnConnectionResultBuilder()..update(updates))._build();

  _$ModifyVpnConnectionResult._({this.vpnConnection}) : super._();

  @override
  ModifyVpnConnectionResult rebuild(
          void Function(ModifyVpnConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnConnectionResultBuilder toBuilder() =>
      new ModifyVpnConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnConnectionResult &&
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

class ModifyVpnConnectionResultBuilder
    implements
        Builder<ModifyVpnConnectionResult, ModifyVpnConnectionResultBuilder> {
  _$ModifyVpnConnectionResult? _$v;

  VpnConnectionBuilder? _vpnConnection;
  VpnConnectionBuilder get vpnConnection =>
      _$this._vpnConnection ??= new VpnConnectionBuilder();
  set vpnConnection(VpnConnectionBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  ModifyVpnConnectionResultBuilder();

  ModifyVpnConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnConnectionResult;
  }

  @override
  void update(void Function(ModifyVpnConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnConnectionResult build() => _build();

  _$ModifyVpnConnectionResult _build() {
    _$ModifyVpnConnectionResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnConnectionResult._(
              vpnConnection: _vpnConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnConnectionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
