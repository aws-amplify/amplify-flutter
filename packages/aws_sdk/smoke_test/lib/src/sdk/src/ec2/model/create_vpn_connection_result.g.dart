// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpn_connection_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpnConnectionResult extends CreateVpnConnectionResult {
  @override
  final VpnConnection? vpnConnection;

  factory _$CreateVpnConnectionResult(
          [void Function(CreateVpnConnectionResultBuilder)? updates]) =>
      (new CreateVpnConnectionResultBuilder()..update(updates))._build();

  _$CreateVpnConnectionResult._({this.vpnConnection}) : super._();

  @override
  CreateVpnConnectionResult rebuild(
          void Function(CreateVpnConnectionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpnConnectionResultBuilder toBuilder() =>
      new CreateVpnConnectionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpnConnectionResult &&
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

class CreateVpnConnectionResultBuilder
    implements
        Builder<CreateVpnConnectionResult, CreateVpnConnectionResultBuilder> {
  _$CreateVpnConnectionResult? _$v;

  VpnConnectionBuilder? _vpnConnection;
  VpnConnectionBuilder get vpnConnection =>
      _$this._vpnConnection ??= new VpnConnectionBuilder();
  set vpnConnection(VpnConnectionBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  CreateVpnConnectionResultBuilder();

  CreateVpnConnectionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpnConnectionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpnConnectionResult;
  }

  @override
  void update(void Function(CreateVpnConnectionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpnConnectionResult build() => _build();

  _$CreateVpnConnectionResult _build() {
    _$CreateVpnConnectionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpnConnectionResult._(
              vpnConnection: _vpnConnection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpnConnectionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
