// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_connection_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnConnectionOptionsRequest
    extends ModifyVpnConnectionOptionsRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? localIpv4NetworkCidr;
  @override
  final String? remoteIpv4NetworkCidr;
  @override
  final String? localIpv6NetworkCidr;
  @override
  final String? remoteIpv6NetworkCidr;
  @override
  final bool dryRun;

  factory _$ModifyVpnConnectionOptionsRequest(
          [void Function(ModifyVpnConnectionOptionsRequestBuilder)? updates]) =>
      (new ModifyVpnConnectionOptionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyVpnConnectionOptionsRequest._(
      {this.vpnConnectionId,
      this.localIpv4NetworkCidr,
      this.remoteIpv4NetworkCidr,
      this.localIpv6NetworkCidr,
      this.remoteIpv6NetworkCidr,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpnConnectionOptionsRequest', 'dryRun');
  }

  @override
  ModifyVpnConnectionOptionsRequest rebuild(
          void Function(ModifyVpnConnectionOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnConnectionOptionsRequestBuilder toBuilder() =>
      new ModifyVpnConnectionOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnConnectionOptionsRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        localIpv4NetworkCidr == other.localIpv4NetworkCidr &&
        remoteIpv4NetworkCidr == other.remoteIpv4NetworkCidr &&
        localIpv6NetworkCidr == other.localIpv6NetworkCidr &&
        remoteIpv6NetworkCidr == other.remoteIpv6NetworkCidr &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, localIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, localIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnConnectionOptionsRequestBuilder
    implements
        Builder<ModifyVpnConnectionOptionsRequest,
            ModifyVpnConnectionOptionsRequestBuilder> {
  _$ModifyVpnConnectionOptionsRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _localIpv4NetworkCidr;
  String? get localIpv4NetworkCidr => _$this._localIpv4NetworkCidr;
  set localIpv4NetworkCidr(String? localIpv4NetworkCidr) =>
      _$this._localIpv4NetworkCidr = localIpv4NetworkCidr;

  String? _remoteIpv4NetworkCidr;
  String? get remoteIpv4NetworkCidr => _$this._remoteIpv4NetworkCidr;
  set remoteIpv4NetworkCidr(String? remoteIpv4NetworkCidr) =>
      _$this._remoteIpv4NetworkCidr = remoteIpv4NetworkCidr;

  String? _localIpv6NetworkCidr;
  String? get localIpv6NetworkCidr => _$this._localIpv6NetworkCidr;
  set localIpv6NetworkCidr(String? localIpv6NetworkCidr) =>
      _$this._localIpv6NetworkCidr = localIpv6NetworkCidr;

  String? _remoteIpv6NetworkCidr;
  String? get remoteIpv6NetworkCidr => _$this._remoteIpv6NetworkCidr;
  set remoteIpv6NetworkCidr(String? remoteIpv6NetworkCidr) =>
      _$this._remoteIpv6NetworkCidr = remoteIpv6NetworkCidr;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVpnConnectionOptionsRequestBuilder() {
    ModifyVpnConnectionOptionsRequest._init(this);
  }

  ModifyVpnConnectionOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _localIpv4NetworkCidr = $v.localIpv4NetworkCidr;
      _remoteIpv4NetworkCidr = $v.remoteIpv4NetworkCidr;
      _localIpv6NetworkCidr = $v.localIpv6NetworkCidr;
      _remoteIpv6NetworkCidr = $v.remoteIpv6NetworkCidr;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnConnectionOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnConnectionOptionsRequest;
  }

  @override
  void update(
      void Function(ModifyVpnConnectionOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnConnectionOptionsRequest build() => _build();

  _$ModifyVpnConnectionOptionsRequest _build() {
    final _$result = _$v ??
        new _$ModifyVpnConnectionOptionsRequest._(
            vpnConnectionId: vpnConnectionId,
            localIpv4NetworkCidr: localIpv4NetworkCidr,
            remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
            localIpv6NetworkCidr: localIpv6NetworkCidr,
            remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVpnConnectionOptionsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
