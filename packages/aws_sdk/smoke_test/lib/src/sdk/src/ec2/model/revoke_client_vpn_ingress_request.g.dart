// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_client_vpn_ingress_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeClientVpnIngressRequest extends RevokeClientVpnIngressRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? targetNetworkCidr;
  @override
  final String? accessGroupId;
  @override
  final bool revokeAllGroups;
  @override
  final bool dryRun;

  factory _$RevokeClientVpnIngressRequest(
          [void Function(RevokeClientVpnIngressRequestBuilder)? updates]) =>
      (new RevokeClientVpnIngressRequestBuilder()..update(updates))._build();

  _$RevokeClientVpnIngressRequest._(
      {this.clientVpnEndpointId,
      this.targetNetworkCidr,
      this.accessGroupId,
      required this.revokeAllGroups,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        revokeAllGroups, r'RevokeClientVpnIngressRequest', 'revokeAllGroups');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RevokeClientVpnIngressRequest', 'dryRun');
  }

  @override
  RevokeClientVpnIngressRequest rebuild(
          void Function(RevokeClientVpnIngressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeClientVpnIngressRequestBuilder toBuilder() =>
      new RevokeClientVpnIngressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeClientVpnIngressRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        targetNetworkCidr == other.targetNetworkCidr &&
        accessGroupId == other.accessGroupId &&
        revokeAllGroups == other.revokeAllGroups &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, targetNetworkCidr.hashCode);
    _$hash = $jc(_$hash, accessGroupId.hashCode);
    _$hash = $jc(_$hash, revokeAllGroups.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RevokeClientVpnIngressRequestBuilder
    implements
        Builder<RevokeClientVpnIngressRequest,
            RevokeClientVpnIngressRequestBuilder> {
  _$RevokeClientVpnIngressRequest? _$v;

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

  bool? _revokeAllGroups;
  bool? get revokeAllGroups => _$this._revokeAllGroups;
  set revokeAllGroups(bool? revokeAllGroups) =>
      _$this._revokeAllGroups = revokeAllGroups;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RevokeClientVpnIngressRequestBuilder() {
    RevokeClientVpnIngressRequest._init(this);
  }

  RevokeClientVpnIngressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _targetNetworkCidr = $v.targetNetworkCidr;
      _accessGroupId = $v.accessGroupId;
      _revokeAllGroups = $v.revokeAllGroups;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeClientVpnIngressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeClientVpnIngressRequest;
  }

  @override
  void update(void Function(RevokeClientVpnIngressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeClientVpnIngressRequest build() => _build();

  _$RevokeClientVpnIngressRequest _build() {
    final _$result = _$v ??
        new _$RevokeClientVpnIngressRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            targetNetworkCidr: targetNetworkCidr,
            accessGroupId: accessGroupId,
            revokeAllGroups: BuiltValueNullFieldError.checkNotNull(
                revokeAllGroups,
                r'RevokeClientVpnIngressRequest',
                'revokeAllGroups'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RevokeClientVpnIngressRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
