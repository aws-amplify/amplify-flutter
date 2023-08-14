// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_client_vpn_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyClientVpnEndpointRequest extends ModifyClientVpnEndpointRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? serverCertificateArn;
  @override
  final ConnectionLogOptions? connectionLogOptions;
  @override
  final DnsServersOptionsModifyStructure? dnsServers;
  @override
  final int vpnPort;
  @override
  final String? description;
  @override
  final bool splitTunnel;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final String? vpcId;
  @override
  final SelfServicePortal? selfServicePortal;
  @override
  final ClientConnectOptions? clientConnectOptions;
  @override
  final int sessionTimeoutHours;
  @override
  final ClientLoginBannerOptions? clientLoginBannerOptions;

  factory _$ModifyClientVpnEndpointRequest(
          [void Function(ModifyClientVpnEndpointRequestBuilder)? updates]) =>
      (new ModifyClientVpnEndpointRequestBuilder()..update(updates))._build();

  _$ModifyClientVpnEndpointRequest._(
      {this.clientVpnEndpointId,
      this.serverCertificateArn,
      this.connectionLogOptions,
      this.dnsServers,
      required this.vpnPort,
      this.description,
      required this.splitTunnel,
      required this.dryRun,
      this.securityGroupIds,
      this.vpcId,
      this.selfServicePortal,
      this.clientConnectOptions,
      required this.sessionTimeoutHours,
      this.clientLoginBannerOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpnPort, r'ModifyClientVpnEndpointRequest', 'vpnPort');
    BuiltValueNullFieldError.checkNotNull(
        splitTunnel, r'ModifyClientVpnEndpointRequest', 'splitTunnel');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyClientVpnEndpointRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(sessionTimeoutHours,
        r'ModifyClientVpnEndpointRequest', 'sessionTimeoutHours');
  }

  @override
  ModifyClientVpnEndpointRequest rebuild(
          void Function(ModifyClientVpnEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyClientVpnEndpointRequestBuilder toBuilder() =>
      new ModifyClientVpnEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyClientVpnEndpointRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        serverCertificateArn == other.serverCertificateArn &&
        connectionLogOptions == other.connectionLogOptions &&
        dnsServers == other.dnsServers &&
        vpnPort == other.vpnPort &&
        description == other.description &&
        splitTunnel == other.splitTunnel &&
        dryRun == other.dryRun &&
        securityGroupIds == other.securityGroupIds &&
        vpcId == other.vpcId &&
        selfServicePortal == other.selfServicePortal &&
        clientConnectOptions == other.clientConnectOptions &&
        sessionTimeoutHours == other.sessionTimeoutHours &&
        clientLoginBannerOptions == other.clientLoginBannerOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, serverCertificateArn.hashCode);
    _$hash = $jc(_$hash, connectionLogOptions.hashCode);
    _$hash = $jc(_$hash, dnsServers.hashCode);
    _$hash = $jc(_$hash, vpnPort.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, splitTunnel.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, selfServicePortal.hashCode);
    _$hash = $jc(_$hash, clientConnectOptions.hashCode);
    _$hash = $jc(_$hash, sessionTimeoutHours.hashCode);
    _$hash = $jc(_$hash, clientLoginBannerOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyClientVpnEndpointRequestBuilder
    implements
        Builder<ModifyClientVpnEndpointRequest,
            ModifyClientVpnEndpointRequestBuilder> {
  _$ModifyClientVpnEndpointRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _serverCertificateArn;
  String? get serverCertificateArn => _$this._serverCertificateArn;
  set serverCertificateArn(String? serverCertificateArn) =>
      _$this._serverCertificateArn = serverCertificateArn;

  ConnectionLogOptionsBuilder? _connectionLogOptions;
  ConnectionLogOptionsBuilder get connectionLogOptions =>
      _$this._connectionLogOptions ??= new ConnectionLogOptionsBuilder();
  set connectionLogOptions(ConnectionLogOptionsBuilder? connectionLogOptions) =>
      _$this._connectionLogOptions = connectionLogOptions;

  DnsServersOptionsModifyStructureBuilder? _dnsServers;
  DnsServersOptionsModifyStructureBuilder get dnsServers =>
      _$this._dnsServers ??= new DnsServersOptionsModifyStructureBuilder();
  set dnsServers(DnsServersOptionsModifyStructureBuilder? dnsServers) =>
      _$this._dnsServers = dnsServers;

  int? _vpnPort;
  int? get vpnPort => _$this._vpnPort;
  set vpnPort(int? vpnPort) => _$this._vpnPort = vpnPort;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _splitTunnel;
  bool? get splitTunnel => _$this._splitTunnel;
  set splitTunnel(bool? splitTunnel) => _$this._splitTunnel = splitTunnel;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  SelfServicePortal? _selfServicePortal;
  SelfServicePortal? get selfServicePortal => _$this._selfServicePortal;
  set selfServicePortal(SelfServicePortal? selfServicePortal) =>
      _$this._selfServicePortal = selfServicePortal;

  ClientConnectOptionsBuilder? _clientConnectOptions;
  ClientConnectOptionsBuilder get clientConnectOptions =>
      _$this._clientConnectOptions ??= new ClientConnectOptionsBuilder();
  set clientConnectOptions(ClientConnectOptionsBuilder? clientConnectOptions) =>
      _$this._clientConnectOptions = clientConnectOptions;

  int? _sessionTimeoutHours;
  int? get sessionTimeoutHours => _$this._sessionTimeoutHours;
  set sessionTimeoutHours(int? sessionTimeoutHours) =>
      _$this._sessionTimeoutHours = sessionTimeoutHours;

  ClientLoginBannerOptionsBuilder? _clientLoginBannerOptions;
  ClientLoginBannerOptionsBuilder get clientLoginBannerOptions =>
      _$this._clientLoginBannerOptions ??=
          new ClientLoginBannerOptionsBuilder();
  set clientLoginBannerOptions(
          ClientLoginBannerOptionsBuilder? clientLoginBannerOptions) =>
      _$this._clientLoginBannerOptions = clientLoginBannerOptions;

  ModifyClientVpnEndpointRequestBuilder() {
    ModifyClientVpnEndpointRequest._init(this);
  }

  ModifyClientVpnEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _serverCertificateArn = $v.serverCertificateArn;
      _connectionLogOptions = $v.connectionLogOptions?.toBuilder();
      _dnsServers = $v.dnsServers?.toBuilder();
      _vpnPort = $v.vpnPort;
      _description = $v.description;
      _splitTunnel = $v.splitTunnel;
      _dryRun = $v.dryRun;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _vpcId = $v.vpcId;
      _selfServicePortal = $v.selfServicePortal;
      _clientConnectOptions = $v.clientConnectOptions?.toBuilder();
      _sessionTimeoutHours = $v.sessionTimeoutHours;
      _clientLoginBannerOptions = $v.clientLoginBannerOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyClientVpnEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyClientVpnEndpointRequest;
  }

  @override
  void update(void Function(ModifyClientVpnEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyClientVpnEndpointRequest build() => _build();

  _$ModifyClientVpnEndpointRequest _build() {
    _$ModifyClientVpnEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyClientVpnEndpointRequest._(
              clientVpnEndpointId: clientVpnEndpointId,
              serverCertificateArn: serverCertificateArn,
              connectionLogOptions: _connectionLogOptions?.build(),
              dnsServers: _dnsServers?.build(),
              vpnPort: BuiltValueNullFieldError.checkNotNull(
                  vpnPort, r'ModifyClientVpnEndpointRequest', 'vpnPort'),
              description: description,
              splitTunnel: BuiltValueNullFieldError.checkNotNull(splitTunnel,
                  r'ModifyClientVpnEndpointRequest', 'splitTunnel'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyClientVpnEndpointRequest', 'dryRun'),
              securityGroupIds: _securityGroupIds?.build(),
              vpcId: vpcId,
              selfServicePortal: selfServicePortal,
              clientConnectOptions: _clientConnectOptions?.build(),
              sessionTimeoutHours: BuiltValueNullFieldError.checkNotNull(
                  sessionTimeoutHours,
                  r'ModifyClientVpnEndpointRequest',
                  'sessionTimeoutHours'),
              clientLoginBannerOptions: _clientLoginBannerOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionLogOptions';
        _connectionLogOptions?.build();
        _$failedField = 'dnsServers';
        _dnsServers?.build();

        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();

        _$failedField = 'clientConnectOptions';
        _clientConnectOptions?.build();

        _$failedField = 'clientLoginBannerOptions';
        _clientLoginBannerOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyClientVpnEndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
