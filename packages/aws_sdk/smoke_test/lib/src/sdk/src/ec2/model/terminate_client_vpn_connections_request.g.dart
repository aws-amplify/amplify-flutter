// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_client_vpn_connections_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminateClientVpnConnectionsRequest
    extends TerminateClientVpnConnectionsRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? connectionId;
  @override
  final String? username;
  @override
  final bool dryRun;

  factory _$TerminateClientVpnConnectionsRequest(
          [void Function(TerminateClientVpnConnectionsRequestBuilder)?
              updates]) =>
      (new TerminateClientVpnConnectionsRequestBuilder()..update(updates))
          ._build();

  _$TerminateClientVpnConnectionsRequest._(
      {this.clientVpnEndpointId,
      this.connectionId,
      this.username,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'TerminateClientVpnConnectionsRequest', 'dryRun');
  }

  @override
  TerminateClientVpnConnectionsRequest rebuild(
          void Function(TerminateClientVpnConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminateClientVpnConnectionsRequestBuilder toBuilder() =>
      new TerminateClientVpnConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminateClientVpnConnectionsRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        connectionId == other.connectionId &&
        username == other.username &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TerminateClientVpnConnectionsRequestBuilder
    implements
        Builder<TerminateClientVpnConnectionsRequest,
            TerminateClientVpnConnectionsRequestBuilder> {
  _$TerminateClientVpnConnectionsRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _connectionId;
  String? get connectionId => _$this._connectionId;
  set connectionId(String? connectionId) => _$this._connectionId = connectionId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  TerminateClientVpnConnectionsRequestBuilder() {
    TerminateClientVpnConnectionsRequest._init(this);
  }

  TerminateClientVpnConnectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _connectionId = $v.connectionId;
      _username = $v.username;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminateClientVpnConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminateClientVpnConnectionsRequest;
  }

  @override
  void update(
      void Function(TerminateClientVpnConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminateClientVpnConnectionsRequest build() => _build();

  _$TerminateClientVpnConnectionsRequest _build() {
    final _$result = _$v ??
        new _$TerminateClientVpnConnectionsRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            connectionId: connectionId,
            username: username,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'TerminateClientVpnConnectionsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
