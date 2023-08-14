// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_client_vpn_ingress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizeClientVpnIngressRequest
    extends AuthorizeClientVpnIngressRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? targetNetworkCidr;
  @override
  final String? accessGroupId;
  @override
  final bool authorizeAllGroups;
  @override
  final String? description;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$AuthorizeClientVpnIngressRequest(
          [void Function(AuthorizeClientVpnIngressRequestBuilder)? updates]) =>
      (new AuthorizeClientVpnIngressRequestBuilder()..update(updates))._build();

  _$AuthorizeClientVpnIngressRequest._(
      {this.clientVpnEndpointId,
      this.targetNetworkCidr,
      this.accessGroupId,
      required this.authorizeAllGroups,
      this.description,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(authorizeAllGroups,
        r'AuthorizeClientVpnIngressRequest', 'authorizeAllGroups');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AuthorizeClientVpnIngressRequest', 'dryRun');
  }

  @override
  AuthorizeClientVpnIngressRequest rebuild(
          void Function(AuthorizeClientVpnIngressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizeClientVpnIngressRequestBuilder toBuilder() =>
      new AuthorizeClientVpnIngressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizeClientVpnIngressRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        targetNetworkCidr == other.targetNetworkCidr &&
        accessGroupId == other.accessGroupId &&
        authorizeAllGroups == other.authorizeAllGroups &&
        description == other.description &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, targetNetworkCidr.hashCode);
    _$hash = $jc(_$hash, accessGroupId.hashCode);
    _$hash = $jc(_$hash, authorizeAllGroups.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthorizeClientVpnIngressRequestBuilder
    implements
        Builder<AuthorizeClientVpnIngressRequest,
            AuthorizeClientVpnIngressRequestBuilder> {
  _$AuthorizeClientVpnIngressRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _targetNetworkCidr;
  String? get targetNetworkCidr => _$this._targetNetworkCidr;
  set targetNetworkCidr(String? targetNetworkCidr) =>
      _$this._targetNetworkCidr = targetNetworkCidr;

  String? _accessGroupId;
  String? get accessGroupId => _$this._accessGroupId;
  set accessGroupId(String? accessGroupId) =>
      _$this._accessGroupId = accessGroupId;

  bool? _authorizeAllGroups;
  bool? get authorizeAllGroups => _$this._authorizeAllGroups;
  set authorizeAllGroups(bool? authorizeAllGroups) =>
      _$this._authorizeAllGroups = authorizeAllGroups;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AuthorizeClientVpnIngressRequestBuilder() {
    AuthorizeClientVpnIngressRequest._init(this);
  }

  AuthorizeClientVpnIngressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _targetNetworkCidr = $v.targetNetworkCidr;
      _accessGroupId = $v.accessGroupId;
      _authorizeAllGroups = $v.authorizeAllGroups;
      _description = $v.description;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizeClientVpnIngressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorizeClientVpnIngressRequest;
  }

  @override
  void update(void Function(AuthorizeClientVpnIngressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizeClientVpnIngressRequest build() => _build();

  _$AuthorizeClientVpnIngressRequest _build() {
    final _$result = _$v ??
        new _$AuthorizeClientVpnIngressRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            targetNetworkCidr: targetNetworkCidr,
            accessGroupId: accessGroupId,
            authorizeAllGroups: BuiltValueNullFieldError.checkNotNull(
                authorizeAllGroups,
                r'AuthorizeClientVpnIngressRequest',
                'authorizeAllGroups'),
            description: description,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AuthorizeClientVpnIngressRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
