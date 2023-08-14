// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_connection_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnConnectionOptions extends VpnConnectionOptions {
  @override
  final bool enableAcceleration;
  @override
  final bool staticRoutesOnly;
  @override
  final String? localIpv4NetworkCidr;
  @override
  final String? remoteIpv4NetworkCidr;
  @override
  final String? localIpv6NetworkCidr;
  @override
  final String? remoteIpv6NetworkCidr;
  @override
  final String? outsideIpAddressType;
  @override
  final String? transportTransitGatewayAttachmentId;
  @override
  final TunnelInsideIpVersion? tunnelInsideIpVersion;
  @override
  final _i2.BuiltList<TunnelOption>? tunnelOptions;

  factory _$VpnConnectionOptions(
          [void Function(VpnConnectionOptionsBuilder)? updates]) =>
      (new VpnConnectionOptionsBuilder()..update(updates))._build();

  _$VpnConnectionOptions._(
      {required this.enableAcceleration,
      required this.staticRoutesOnly,
      this.localIpv4NetworkCidr,
      this.remoteIpv4NetworkCidr,
      this.localIpv6NetworkCidr,
      this.remoteIpv6NetworkCidr,
      this.outsideIpAddressType,
      this.transportTransitGatewayAttachmentId,
      this.tunnelInsideIpVersion,
      this.tunnelOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enableAcceleration, r'VpnConnectionOptions', 'enableAcceleration');
    BuiltValueNullFieldError.checkNotNull(
        staticRoutesOnly, r'VpnConnectionOptions', 'staticRoutesOnly');
  }

  @override
  VpnConnectionOptions rebuild(
          void Function(VpnConnectionOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnConnectionOptionsBuilder toBuilder() =>
      new VpnConnectionOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnConnectionOptions &&
        enableAcceleration == other.enableAcceleration &&
        staticRoutesOnly == other.staticRoutesOnly &&
        localIpv4NetworkCidr == other.localIpv4NetworkCidr &&
        remoteIpv4NetworkCidr == other.remoteIpv4NetworkCidr &&
        localIpv6NetworkCidr == other.localIpv6NetworkCidr &&
        remoteIpv6NetworkCidr == other.remoteIpv6NetworkCidr &&
        outsideIpAddressType == other.outsideIpAddressType &&
        transportTransitGatewayAttachmentId ==
            other.transportTransitGatewayAttachmentId &&
        tunnelInsideIpVersion == other.tunnelInsideIpVersion &&
        tunnelOptions == other.tunnelOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableAcceleration.hashCode);
    _$hash = $jc(_$hash, staticRoutesOnly.hashCode);
    _$hash = $jc(_$hash, localIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, localIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, outsideIpAddressType.hashCode);
    _$hash = $jc(_$hash, transportTransitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, tunnelInsideIpVersion.hashCode);
    _$hash = $jc(_$hash, tunnelOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnConnectionOptionsBuilder
    implements Builder<VpnConnectionOptions, VpnConnectionOptionsBuilder> {
  _$VpnConnectionOptions? _$v;

  bool? _enableAcceleration;
  bool? get enableAcceleration => _$this._enableAcceleration;
  set enableAcceleration(bool? enableAcceleration) =>
      _$this._enableAcceleration = enableAcceleration;

  bool? _staticRoutesOnly;
  bool? get staticRoutesOnly => _$this._staticRoutesOnly;
  set staticRoutesOnly(bool? staticRoutesOnly) =>
      _$this._staticRoutesOnly = staticRoutesOnly;

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

  String? _outsideIpAddressType;
  String? get outsideIpAddressType => _$this._outsideIpAddressType;
  set outsideIpAddressType(String? outsideIpAddressType) =>
      _$this._outsideIpAddressType = outsideIpAddressType;

  String? _transportTransitGatewayAttachmentId;
  String? get transportTransitGatewayAttachmentId =>
      _$this._transportTransitGatewayAttachmentId;
  set transportTransitGatewayAttachmentId(
          String? transportTransitGatewayAttachmentId) =>
      _$this._transportTransitGatewayAttachmentId =
          transportTransitGatewayAttachmentId;

  TunnelInsideIpVersion? _tunnelInsideIpVersion;
  TunnelInsideIpVersion? get tunnelInsideIpVersion =>
      _$this._tunnelInsideIpVersion;
  set tunnelInsideIpVersion(TunnelInsideIpVersion? tunnelInsideIpVersion) =>
      _$this._tunnelInsideIpVersion = tunnelInsideIpVersion;

  _i2.ListBuilder<TunnelOption>? _tunnelOptions;
  _i2.ListBuilder<TunnelOption> get tunnelOptions =>
      _$this._tunnelOptions ??= new _i2.ListBuilder<TunnelOption>();
  set tunnelOptions(_i2.ListBuilder<TunnelOption>? tunnelOptions) =>
      _$this._tunnelOptions = tunnelOptions;

  VpnConnectionOptionsBuilder() {
    VpnConnectionOptions._init(this);
  }

  VpnConnectionOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableAcceleration = $v.enableAcceleration;
      _staticRoutesOnly = $v.staticRoutesOnly;
      _localIpv4NetworkCidr = $v.localIpv4NetworkCidr;
      _remoteIpv4NetworkCidr = $v.remoteIpv4NetworkCidr;
      _localIpv6NetworkCidr = $v.localIpv6NetworkCidr;
      _remoteIpv6NetworkCidr = $v.remoteIpv6NetworkCidr;
      _outsideIpAddressType = $v.outsideIpAddressType;
      _transportTransitGatewayAttachmentId =
          $v.transportTransitGatewayAttachmentId;
      _tunnelInsideIpVersion = $v.tunnelInsideIpVersion;
      _tunnelOptions = $v.tunnelOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnConnectionOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnConnectionOptions;
  }

  @override
  void update(void Function(VpnConnectionOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnConnectionOptions build() => _build();

  _$VpnConnectionOptions _build() {
    _$VpnConnectionOptions _$result;
    try {
      _$result = _$v ??
          new _$VpnConnectionOptions._(
              enableAcceleration: BuiltValueNullFieldError.checkNotNull(
                  enableAcceleration,
                  r'VpnConnectionOptions',
                  'enableAcceleration'),
              staticRoutesOnly: BuiltValueNullFieldError.checkNotNull(
                  staticRoutesOnly,
                  r'VpnConnectionOptions',
                  'staticRoutesOnly'),
              localIpv4NetworkCidr: localIpv4NetworkCidr,
              remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
              localIpv6NetworkCidr: localIpv6NetworkCidr,
              remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
              outsideIpAddressType: outsideIpAddressType,
              transportTransitGatewayAttachmentId:
                  transportTransitGatewayAttachmentId,
              tunnelInsideIpVersion: tunnelInsideIpVersion,
              tunnelOptions: _tunnelOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnelOptions';
        _tunnelOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnConnectionOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
