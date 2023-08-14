// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_vpn_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateClientVpnEndpointRequest extends CreateClientVpnEndpointRequest {
  @override
  final String? clientCidrBlock;
  @override
  final String? serverCertificateArn;
  @override
  final _i3.BuiltList<ClientVpnAuthenticationRequest>? authenticationOptions;
  @override
  final ConnectionLogOptions? connectionLogOptions;
  @override
  final _i3.BuiltList<String>? dnsServers;
  @override
  final TransportProtocol? transportProtocol;
  @override
  final int vpnPort;
  @override
  final String? description;
  @override
  final bool splitTunnel;
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
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

  factory _$CreateClientVpnEndpointRequest(
          [void Function(CreateClientVpnEndpointRequestBuilder)? updates]) =>
      (new CreateClientVpnEndpointRequestBuilder()..update(updates))._build();

  _$CreateClientVpnEndpointRequest._(
      {this.clientCidrBlock,
      this.serverCertificateArn,
      this.authenticationOptions,
      this.connectionLogOptions,
      this.dnsServers,
      this.transportProtocol,
      required this.vpnPort,
      this.description,
      required this.splitTunnel,
      required this.dryRun,
      this.clientToken,
      this.tagSpecifications,
      this.securityGroupIds,
      this.vpcId,
      this.selfServicePortal,
      this.clientConnectOptions,
      required this.sessionTimeoutHours,
      this.clientLoginBannerOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpnPort, r'CreateClientVpnEndpointRequest', 'vpnPort');
    BuiltValueNullFieldError.checkNotNull(
        splitTunnel, r'CreateClientVpnEndpointRequest', 'splitTunnel');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateClientVpnEndpointRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(sessionTimeoutHours,
        r'CreateClientVpnEndpointRequest', 'sessionTimeoutHours');
  }

  @override
  CreateClientVpnEndpointRequest rebuild(
          void Function(CreateClientVpnEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateClientVpnEndpointRequestBuilder toBuilder() =>
      new CreateClientVpnEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateClientVpnEndpointRequest &&
        clientCidrBlock == other.clientCidrBlock &&
        serverCertificateArn == other.serverCertificateArn &&
        authenticationOptions == other.authenticationOptions &&
        connectionLogOptions == other.connectionLogOptions &&
        dnsServers == other.dnsServers &&
        transportProtocol == other.transportProtocol &&
        vpnPort == other.vpnPort &&
        description == other.description &&
        splitTunnel == other.splitTunnel &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        tagSpecifications == other.tagSpecifications &&
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
    _$hash = $jc(_$hash, clientCidrBlock.hashCode);
    _$hash = $jc(_$hash, serverCertificateArn.hashCode);
    _$hash = $jc(_$hash, authenticationOptions.hashCode);
    _$hash = $jc(_$hash, connectionLogOptions.hashCode);
    _$hash = $jc(_$hash, dnsServers.hashCode);
    _$hash = $jc(_$hash, transportProtocol.hashCode);
    _$hash = $jc(_$hash, vpnPort.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, splitTunnel.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
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

class CreateClientVpnEndpointRequestBuilder
    implements
        Builder<CreateClientVpnEndpointRequest,
            CreateClientVpnEndpointRequestBuilder> {
  _$CreateClientVpnEndpointRequest? _$v;

  String? _clientCidrBlock;
  String? get clientCidrBlock => _$this._clientCidrBlock;
  set clientCidrBlock(String? clientCidrBlock) =>
      _$this._clientCidrBlock = clientCidrBlock;

  String? _serverCertificateArn;
  String? get serverCertificateArn => _$this._serverCertificateArn;
  set serverCertificateArn(String? serverCertificateArn) =>
      _$this._serverCertificateArn = serverCertificateArn;

  _i3.ListBuilder<ClientVpnAuthenticationRequest>? _authenticationOptions;
  _i3.ListBuilder<ClientVpnAuthenticationRequest> get authenticationOptions =>
      _$this._authenticationOptions ??=
          new _i3.ListBuilder<ClientVpnAuthenticationRequest>();
  set authenticationOptions(
          _i3.ListBuilder<ClientVpnAuthenticationRequest>?
              authenticationOptions) =>
      _$this._authenticationOptions = authenticationOptions;

  ConnectionLogOptionsBuilder? _connectionLogOptions;
  ConnectionLogOptionsBuilder get connectionLogOptions =>
      _$this._connectionLogOptions ??= new ConnectionLogOptionsBuilder();
  set connectionLogOptions(ConnectionLogOptionsBuilder? connectionLogOptions) =>
      _$this._connectionLogOptions = connectionLogOptions;

  _i3.ListBuilder<String>? _dnsServers;
  _i3.ListBuilder<String> get dnsServers =>
      _$this._dnsServers ??= new _i3.ListBuilder<String>();
  set dnsServers(_i3.ListBuilder<String>? dnsServers) =>
      _$this._dnsServers = dnsServers;

  TransportProtocol? _transportProtocol;
  TransportProtocol? get transportProtocol => _$this._transportProtocol;
  set transportProtocol(TransportProtocol? transportProtocol) =>
      _$this._transportProtocol = transportProtocol;

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

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

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

  CreateClientVpnEndpointRequestBuilder() {
    CreateClientVpnEndpointRequest._init(this);
  }

  CreateClientVpnEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCidrBlock = $v.clientCidrBlock;
      _serverCertificateArn = $v.serverCertificateArn;
      _authenticationOptions = $v.authenticationOptions?.toBuilder();
      _connectionLogOptions = $v.connectionLogOptions?.toBuilder();
      _dnsServers = $v.dnsServers?.toBuilder();
      _transportProtocol = $v.transportProtocol;
      _vpnPort = $v.vpnPort;
      _description = $v.description;
      _splitTunnel = $v.splitTunnel;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
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
  void replace(CreateClientVpnEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateClientVpnEndpointRequest;
  }

  @override
  void update(void Function(CreateClientVpnEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateClientVpnEndpointRequest build() => _build();

  _$CreateClientVpnEndpointRequest _build() {
    _$CreateClientVpnEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateClientVpnEndpointRequest._(
              clientCidrBlock: clientCidrBlock,
              serverCertificateArn: serverCertificateArn,
              authenticationOptions: _authenticationOptions?.build(),
              connectionLogOptions: _connectionLogOptions?.build(),
              dnsServers: _dnsServers?.build(),
              transportProtocol: transportProtocol,
              vpnPort: BuiltValueNullFieldError.checkNotNull(
                  vpnPort, r'CreateClientVpnEndpointRequest', 'vpnPort'),
              description: description,
              splitTunnel: BuiltValueNullFieldError.checkNotNull(splitTunnel,
                  r'CreateClientVpnEndpointRequest', 'splitTunnel'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateClientVpnEndpointRequest', 'dryRun'),
              clientToken: clientToken,
              tagSpecifications: _tagSpecifications?.build(),
              securityGroupIds: _securityGroupIds?.build(),
              vpcId: vpcId,
              selfServicePortal: selfServicePortal,
              clientConnectOptions: _clientConnectOptions?.build(),
              sessionTimeoutHours: BuiltValueNullFieldError.checkNotNull(
                  sessionTimeoutHours,
                  r'CreateClientVpnEndpointRequest',
                  'sessionTimeoutHours'),
              clientLoginBannerOptions: _clientLoginBannerOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationOptions';
        _authenticationOptions?.build();
        _$failedField = 'connectionLogOptions';
        _connectionLogOptions?.build();
        _$failedField = 'dnsServers';
        _dnsServers?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();

        _$failedField = 'clientConnectOptions';
        _clientConnectOptions?.build();

        _$failedField = 'clientLoginBannerOptions';
        _clientLoginBannerOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateClientVpnEndpointRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
