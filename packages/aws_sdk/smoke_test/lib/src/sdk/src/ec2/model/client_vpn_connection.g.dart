// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_vpn_connection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnConnection extends ClientVpnConnection {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? timestamp;
  @override
  final String? connectionId;
  @override
  final String? username;
  @override
  final String? connectionEstablishedTime;
  @override
  final String? ingressBytes;
  @override
  final String? egressBytes;
  @override
  final String? ingressPackets;
  @override
  final String? egressPackets;
  @override
  final String? clientIp;
  @override
  final String? commonName;
  @override
  final ClientVpnConnectionStatus? status;
  @override
  final String? connectionEndTime;
  @override
  final _i2.BuiltList<String>? postureComplianceStatuses;

  factory _$ClientVpnConnection(
          [void Function(ClientVpnConnectionBuilder)? updates]) =>
      (new ClientVpnConnectionBuilder()..update(updates))._build();

  _$ClientVpnConnection._(
      {this.clientVpnEndpointId,
      this.timestamp,
      this.connectionId,
      this.username,
      this.connectionEstablishedTime,
      this.ingressBytes,
      this.egressBytes,
      this.ingressPackets,
      this.egressPackets,
      this.clientIp,
      this.commonName,
      this.status,
      this.connectionEndTime,
      this.postureComplianceStatuses})
      : super._();

  @override
  ClientVpnConnection rebuild(
          void Function(ClientVpnConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnConnectionBuilder toBuilder() =>
      new ClientVpnConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnConnection &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        timestamp == other.timestamp &&
        connectionId == other.connectionId &&
        username == other.username &&
        connectionEstablishedTime == other.connectionEstablishedTime &&
        ingressBytes == other.ingressBytes &&
        egressBytes == other.egressBytes &&
        ingressPackets == other.ingressPackets &&
        egressPackets == other.egressPackets &&
        clientIp == other.clientIp &&
        commonName == other.commonName &&
        status == other.status &&
        connectionEndTime == other.connectionEndTime &&
        postureComplianceStatuses == other.postureComplianceStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, connectionEstablishedTime.hashCode);
    _$hash = $jc(_$hash, ingressBytes.hashCode);
    _$hash = $jc(_$hash, egressBytes.hashCode);
    _$hash = $jc(_$hash, ingressPackets.hashCode);
    _$hash = $jc(_$hash, egressPackets.hashCode);
    _$hash = $jc(_$hash, clientIp.hashCode);
    _$hash = $jc(_$hash, commonName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, connectionEndTime.hashCode);
    _$hash = $jc(_$hash, postureComplianceStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnConnectionBuilder
    implements Builder<ClientVpnConnection, ClientVpnConnectionBuilder> {
  _$ClientVpnConnection? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  String? _connectionId;
  String? get connectionId => _$this._connectionId;
  set connectionId(String? connectionId) => _$this._connectionId = connectionId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _connectionEstablishedTime;
  String? get connectionEstablishedTime => _$this._connectionEstablishedTime;
  set connectionEstablishedTime(String? connectionEstablishedTime) =>
      _$this._connectionEstablishedTime = connectionEstablishedTime;

  String? _ingressBytes;
  String? get ingressBytes => _$this._ingressBytes;
  set ingressBytes(String? ingressBytes) => _$this._ingressBytes = ingressBytes;

  String? _egressBytes;
  String? get egressBytes => _$this._egressBytes;
  set egressBytes(String? egressBytes) => _$this._egressBytes = egressBytes;

  String? _ingressPackets;
  String? get ingressPackets => _$this._ingressPackets;
  set ingressPackets(String? ingressPackets) =>
      _$this._ingressPackets = ingressPackets;

  String? _egressPackets;
  String? get egressPackets => _$this._egressPackets;
  set egressPackets(String? egressPackets) =>
      _$this._egressPackets = egressPackets;

  String? _clientIp;
  String? get clientIp => _$this._clientIp;
  set clientIp(String? clientIp) => _$this._clientIp = clientIp;

  String? _commonName;
  String? get commonName => _$this._commonName;
  set commonName(String? commonName) => _$this._commonName = commonName;

  ClientVpnConnectionStatusBuilder? _status;
  ClientVpnConnectionStatusBuilder get status =>
      _$this._status ??= new ClientVpnConnectionStatusBuilder();
  set status(ClientVpnConnectionStatusBuilder? status) =>
      _$this._status = status;

  String? _connectionEndTime;
  String? get connectionEndTime => _$this._connectionEndTime;
  set connectionEndTime(String? connectionEndTime) =>
      _$this._connectionEndTime = connectionEndTime;

  _i2.ListBuilder<String>? _postureComplianceStatuses;
  _i2.ListBuilder<String> get postureComplianceStatuses =>
      _$this._postureComplianceStatuses ??= new _i2.ListBuilder<String>();
  set postureComplianceStatuses(
          _i2.ListBuilder<String>? postureComplianceStatuses) =>
      _$this._postureComplianceStatuses = postureComplianceStatuses;

  ClientVpnConnectionBuilder();

  ClientVpnConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _timestamp = $v.timestamp;
      _connectionId = $v.connectionId;
      _username = $v.username;
      _connectionEstablishedTime = $v.connectionEstablishedTime;
      _ingressBytes = $v.ingressBytes;
      _egressBytes = $v.egressBytes;
      _ingressPackets = $v.ingressPackets;
      _egressPackets = $v.egressPackets;
      _clientIp = $v.clientIp;
      _commonName = $v.commonName;
      _status = $v.status?.toBuilder();
      _connectionEndTime = $v.connectionEndTime;
      _postureComplianceStatuses = $v.postureComplianceStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnConnection;
  }

  @override
  void update(void Function(ClientVpnConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnConnection build() => _build();

  _$ClientVpnConnection _build() {
    _$ClientVpnConnection _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnConnection._(
              clientVpnEndpointId: clientVpnEndpointId,
              timestamp: timestamp,
              connectionId: connectionId,
              username: username,
              connectionEstablishedTime: connectionEstablishedTime,
              ingressBytes: ingressBytes,
              egressBytes: egressBytes,
              ingressPackets: ingressPackets,
              egressPackets: egressPackets,
              clientIp: clientIp,
              commonName: commonName,
              status: _status?.build(),
              connectionEndTime: connectionEndTime,
              postureComplianceStatuses: _postureComplianceStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'postureComplianceStatuses';
        _postureComplianceStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientVpnConnection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
