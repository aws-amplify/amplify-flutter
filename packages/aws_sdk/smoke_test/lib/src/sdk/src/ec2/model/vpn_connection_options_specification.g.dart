// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_connection_options_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnConnectionOptionsSpecification
    extends VpnConnectionOptionsSpecification {
  @override
  final bool enableAcceleration;
  @override
  final bool staticRoutesOnly;
  @override
  final TunnelInsideIpVersion? tunnelInsideIpVersion;
  @override
  final _i2.BuiltList<VpnTunnelOptionsSpecification>? tunnelOptions;
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

  factory _$VpnConnectionOptionsSpecification(
          [void Function(VpnConnectionOptionsSpecificationBuilder)? updates]) =>
      (new VpnConnectionOptionsSpecificationBuilder()..update(updates))
          ._build();

  _$VpnConnectionOptionsSpecification._(
      {required this.enableAcceleration,
      required this.staticRoutesOnly,
      this.tunnelInsideIpVersion,
      this.tunnelOptions,
      this.localIpv4NetworkCidr,
      this.remoteIpv4NetworkCidr,
      this.localIpv6NetworkCidr,
      this.remoteIpv6NetworkCidr,
      this.outsideIpAddressType,
      this.transportTransitGatewayAttachmentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableAcceleration,
        r'VpnConnectionOptionsSpecification', 'enableAcceleration');
    BuiltValueNullFieldError.checkNotNull(staticRoutesOnly,
        r'VpnConnectionOptionsSpecification', 'staticRoutesOnly');
  }

  @override
  VpnConnectionOptionsSpecification rebuild(
          void Function(VpnConnectionOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnConnectionOptionsSpecificationBuilder toBuilder() =>
      new VpnConnectionOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnConnectionOptionsSpecification &&
        enableAcceleration == other.enableAcceleration &&
        staticRoutesOnly == other.staticRoutesOnly &&
        tunnelInsideIpVersion == other.tunnelInsideIpVersion &&
        tunnelOptions == other.tunnelOptions &&
        localIpv4NetworkCidr == other.localIpv4NetworkCidr &&
        remoteIpv4NetworkCidr == other.remoteIpv4NetworkCidr &&
        localIpv6NetworkCidr == other.localIpv6NetworkCidr &&
        remoteIpv6NetworkCidr == other.remoteIpv6NetworkCidr &&
        outsideIpAddressType == other.outsideIpAddressType &&
        transportTransitGatewayAttachmentId ==
            other.transportTransitGatewayAttachmentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableAcceleration.hashCode);
    _$hash = $jc(_$hash, staticRoutesOnly.hashCode);
    _$hash = $jc(_$hash, tunnelInsideIpVersion.hashCode);
    _$hash = $jc(_$hash, tunnelOptions.hashCode);
    _$hash = $jc(_$hash, localIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv4NetworkCidr.hashCode);
    _$hash = $jc(_$hash, localIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, remoteIpv6NetworkCidr.hashCode);
    _$hash = $jc(_$hash, outsideIpAddressType.hashCode);
    _$hash = $jc(_$hash, transportTransitGatewayAttachmentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnConnectionOptionsSpecificationBuilder
    implements
        Builder<VpnConnectionOptionsSpecification,
            VpnConnectionOptionsSpecificationBuilder> {
  _$VpnConnectionOptionsSpecification? _$v;

  bool? _enableAcceleration;
  bool? get enableAcceleration => _$this._enableAcceleration;
  set enableAcceleration(bool? enableAcceleration) =>
      _$this._enableAcceleration = enableAcceleration;

  bool? _staticRoutesOnly;
  bool? get staticRoutesOnly => _$this._staticRoutesOnly;
  set staticRoutesOnly(bool? staticRoutesOnly) =>
      _$this._staticRoutesOnly = staticRoutesOnly;

  TunnelInsideIpVersion? _tunnelInsideIpVersion;
  TunnelInsideIpVersion? get tunnelInsideIpVersion =>
      _$this._tunnelInsideIpVersion;
  set tunnelInsideIpVersion(TunnelInsideIpVersion? tunnelInsideIpVersion) =>
      _$this._tunnelInsideIpVersion = tunnelInsideIpVersion;

  _i2.ListBuilder<VpnTunnelOptionsSpecification>? _tunnelOptions;
  _i2.ListBuilder<VpnTunnelOptionsSpecification> get tunnelOptions =>
      _$this._tunnelOptions ??=
          new _i2.ListBuilder<VpnTunnelOptionsSpecification>();
  set tunnelOptions(
          _i2.ListBuilder<VpnTunnelOptionsSpecification>? tunnelOptions) =>
      _$this._tunnelOptions = tunnelOptions;

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

  VpnConnectionOptionsSpecificationBuilder() {
    VpnConnectionOptionsSpecification._init(this);
  }

  VpnConnectionOptionsSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableAcceleration = $v.enableAcceleration;
      _staticRoutesOnly = $v.staticRoutesOnly;
      _tunnelInsideIpVersion = $v.tunnelInsideIpVersion;
      _tunnelOptions = $v.tunnelOptions?.toBuilder();
      _localIpv4NetworkCidr = $v.localIpv4NetworkCidr;
      _remoteIpv4NetworkCidr = $v.remoteIpv4NetworkCidr;
      _localIpv6NetworkCidr = $v.localIpv6NetworkCidr;
      _remoteIpv6NetworkCidr = $v.remoteIpv6NetworkCidr;
      _outsideIpAddressType = $v.outsideIpAddressType;
      _transportTransitGatewayAttachmentId =
          $v.transportTransitGatewayAttachmentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnConnectionOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnConnectionOptionsSpecification;
  }

  @override
  void update(
      void Function(VpnConnectionOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnConnectionOptionsSpecification build() => _build();

  _$VpnConnectionOptionsSpecification _build() {
    _$VpnConnectionOptionsSpecification _$result;
    try {
      _$result = _$v ??
          new _$VpnConnectionOptionsSpecification._(
              enableAcceleration: BuiltValueNullFieldError.checkNotNull(
                  enableAcceleration,
                  r'VpnConnectionOptionsSpecification',
                  'enableAcceleration'),
              staticRoutesOnly: BuiltValueNullFieldError.checkNotNull(
                  staticRoutesOnly,
                  r'VpnConnectionOptionsSpecification',
                  'staticRoutesOnly'),
              tunnelInsideIpVersion: tunnelInsideIpVersion,
              tunnelOptions: _tunnelOptions?.build(),
              localIpv4NetworkCidr: localIpv4NetworkCidr,
              remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
              localIpv6NetworkCidr: localIpv6NetworkCidr,
              remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
              outsideIpAddressType: outsideIpAddressType,
              transportTransitGatewayAttachmentId:
                  transportTransitGatewayAttachmentId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnelOptions';
        _tunnelOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnConnectionOptionsSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
