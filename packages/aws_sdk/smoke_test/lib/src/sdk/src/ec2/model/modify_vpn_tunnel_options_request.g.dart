// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_tunnel_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelOptionsRequest extends ModifyVpnTunnelOptionsRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnTunnelOutsideIpAddress;
  @override
  final ModifyVpnTunnelOptionsSpecification? tunnelOptions;
  @override
  final bool dryRun;
  @override
  final bool skipTunnelReplacement;

  factory _$ModifyVpnTunnelOptionsRequest(
          [void Function(ModifyVpnTunnelOptionsRequestBuilder)? updates]) =>
      (new ModifyVpnTunnelOptionsRequestBuilder()..update(updates))._build();

  _$ModifyVpnTunnelOptionsRequest._(
      {this.vpnConnectionId,
      this.vpnTunnelOutsideIpAddress,
      this.tunnelOptions,
      required this.dryRun,
      required this.skipTunnelReplacement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpnTunnelOptionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(skipTunnelReplacement,
        r'ModifyVpnTunnelOptionsRequest', 'skipTunnelReplacement');
  }

  @override
  ModifyVpnTunnelOptionsRequest rebuild(
          void Function(ModifyVpnTunnelOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelOptionsRequestBuilder toBuilder() =>
      new ModifyVpnTunnelOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelOptionsRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnTunnelOutsideIpAddress == other.vpnTunnelOutsideIpAddress &&
        tunnelOptions == other.tunnelOptions &&
        dryRun == other.dryRun &&
        skipTunnelReplacement == other.skipTunnelReplacement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnTunnelOutsideIpAddress.hashCode);
    _$hash = $jc(_$hash, tunnelOptions.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, skipTunnelReplacement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnTunnelOptionsRequestBuilder
    implements
        Builder<ModifyVpnTunnelOptionsRequest,
            ModifyVpnTunnelOptionsRequestBuilder> {
  _$ModifyVpnTunnelOptionsRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnTunnelOutsideIpAddress;
  String? get vpnTunnelOutsideIpAddress => _$this._vpnTunnelOutsideIpAddress;
  set vpnTunnelOutsideIpAddress(String? vpnTunnelOutsideIpAddress) =>
      _$this._vpnTunnelOutsideIpAddress = vpnTunnelOutsideIpAddress;

  ModifyVpnTunnelOptionsSpecificationBuilder? _tunnelOptions;
  ModifyVpnTunnelOptionsSpecificationBuilder get tunnelOptions =>
      _$this._tunnelOptions ??=
          new ModifyVpnTunnelOptionsSpecificationBuilder();
  set tunnelOptions(
          ModifyVpnTunnelOptionsSpecificationBuilder? tunnelOptions) =>
      _$this._tunnelOptions = tunnelOptions;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _skipTunnelReplacement;
  bool? get skipTunnelReplacement => _$this._skipTunnelReplacement;
  set skipTunnelReplacement(bool? skipTunnelReplacement) =>
      _$this._skipTunnelReplacement = skipTunnelReplacement;

  ModifyVpnTunnelOptionsRequestBuilder() {
    ModifyVpnTunnelOptionsRequest._init(this);
  }

  ModifyVpnTunnelOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnTunnelOutsideIpAddress = $v.vpnTunnelOutsideIpAddress;
      _tunnelOptions = $v.tunnelOptions?.toBuilder();
      _dryRun = $v.dryRun;
      _skipTunnelReplacement = $v.skipTunnelReplacement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnTunnelOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelOptionsRequest;
  }

  @override
  void update(void Function(ModifyVpnTunnelOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelOptionsRequest build() => _build();

  _$ModifyVpnTunnelOptionsRequest _build() {
    _$ModifyVpnTunnelOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnTunnelOptionsRequest._(
              vpnConnectionId: vpnConnectionId,
              vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
              tunnelOptions: _tunnelOptions?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyVpnTunnelOptionsRequest', 'dryRun'),
              skipTunnelReplacement: BuiltValueNullFieldError.checkNotNull(
                  skipTunnelReplacement,
                  r'ModifyVpnTunnelOptionsRequest',
                  'skipTunnelReplacement'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnelOptions';
        _tunnelOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnTunnelOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
