// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_client_vpn_connections_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminateClientVpnConnectionsResult
    extends TerminateClientVpnConnectionsResult {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? username;
  @override
  final _i2.BuiltList<TerminateConnectionStatus>? connectionStatuses;

  factory _$TerminateClientVpnConnectionsResult(
          [void Function(TerminateClientVpnConnectionsResultBuilder)?
              updates]) =>
      (new TerminateClientVpnConnectionsResultBuilder()..update(updates))
          ._build();

  _$TerminateClientVpnConnectionsResult._(
      {this.clientVpnEndpointId, this.username, this.connectionStatuses})
      : super._();

  @override
  TerminateClientVpnConnectionsResult rebuild(
          void Function(TerminateClientVpnConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminateClientVpnConnectionsResultBuilder toBuilder() =>
      new TerminateClientVpnConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminateClientVpnConnectionsResult &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        username == other.username &&
        connectionStatuses == other.connectionStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, connectionStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TerminateClientVpnConnectionsResultBuilder
    implements
        Builder<TerminateClientVpnConnectionsResult,
            TerminateClientVpnConnectionsResultBuilder> {
  _$TerminateClientVpnConnectionsResult? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  _i2.ListBuilder<TerminateConnectionStatus>? _connectionStatuses;
  _i2.ListBuilder<TerminateConnectionStatus> get connectionStatuses =>
      _$this._connectionStatuses ??=
          new _i2.ListBuilder<TerminateConnectionStatus>();
  set connectionStatuses(
          _i2.ListBuilder<TerminateConnectionStatus>? connectionStatuses) =>
      _$this._connectionStatuses = connectionStatuses;

  TerminateClientVpnConnectionsResultBuilder();

  TerminateClientVpnConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _username = $v.username;
      _connectionStatuses = $v.connectionStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminateClientVpnConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminateClientVpnConnectionsResult;
  }

  @override
  void update(
      void Function(TerminateClientVpnConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminateClientVpnConnectionsResult build() => _build();

  _$TerminateClientVpnConnectionsResult _build() {
    _$TerminateClientVpnConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$TerminateClientVpnConnectionsResult._(
              clientVpnEndpointId: clientVpnEndpointId,
              username: username,
              connectionStatuses: _connectionStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionStatuses';
        _connectionStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TerminateClientVpnConnectionsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
