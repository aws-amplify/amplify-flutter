// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_connection_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnConnectionOptionsResult
    extends ModifyVpnConnectionOptionsResult {
  @override
  final VpnConnection? vpnConnection;

  factory _$ModifyVpnConnectionOptionsResult(
          [void Function(ModifyVpnConnectionOptionsResultBuilder)? updates]) =>
      (new ModifyVpnConnectionOptionsResultBuilder()..update(updates))._build();

  _$ModifyVpnConnectionOptionsResult._({this.vpnConnection}) : super._();

  @override
  ModifyVpnConnectionOptionsResult rebuild(
          void Function(ModifyVpnConnectionOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnConnectionOptionsResultBuilder toBuilder() =>
      new ModifyVpnConnectionOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnConnectionOptionsResult &&
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

class ModifyVpnConnectionOptionsResultBuilder
    implements
        Builder<ModifyVpnConnectionOptionsResult,
            ModifyVpnConnectionOptionsResultBuilder> {
  _$ModifyVpnConnectionOptionsResult? _$v;

  VpnConnectionBuilder? _vpnConnection;
  VpnConnectionBuilder get vpnConnection =>
      _$this._vpnConnection ??= new VpnConnectionBuilder();
  set vpnConnection(VpnConnectionBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  ModifyVpnConnectionOptionsResultBuilder();

  ModifyVpnConnectionOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnConnectionOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnConnectionOptionsResult;
  }

  @override
  void update(void Function(ModifyVpnConnectionOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnConnectionOptionsResult build() => _build();

  _$ModifyVpnConnectionOptionsResult _build() {
    _$ModifyVpnConnectionOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnConnectionOptionsResult._(
              vpnConnection: _vpnConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnConnectionOptionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
