// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_connection_device_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnConnectionDeviceType extends VpnConnectionDeviceType {
  @override
  final String? vpnConnectionDeviceTypeId;
  @override
  final String? vendor;
  @override
  final String? platform;
  @override
  final String? software;

  factory _$VpnConnectionDeviceType(
          [void Function(VpnConnectionDeviceTypeBuilder)? updates]) =>
      (new VpnConnectionDeviceTypeBuilder()..update(updates))._build();

  _$VpnConnectionDeviceType._(
      {this.vpnConnectionDeviceTypeId,
      this.vendor,
      this.platform,
      this.software})
      : super._();

  @override
  VpnConnectionDeviceType rebuild(
          void Function(VpnConnectionDeviceTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnConnectionDeviceTypeBuilder toBuilder() =>
      new VpnConnectionDeviceTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnConnectionDeviceType &&
        vpnConnectionDeviceTypeId == other.vpnConnectionDeviceTypeId &&
        vendor == other.vendor &&
        platform == other.platform &&
        software == other.software;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionDeviceTypeId.hashCode);
    _$hash = $jc(_$hash, vendor.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, software.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnConnectionDeviceTypeBuilder
    implements
        Builder<VpnConnectionDeviceType, VpnConnectionDeviceTypeBuilder> {
  _$VpnConnectionDeviceType? _$v;

  String? _vpnConnectionDeviceTypeId;
  String? get vpnConnectionDeviceTypeId => _$this._vpnConnectionDeviceTypeId;
  set vpnConnectionDeviceTypeId(String? vpnConnectionDeviceTypeId) =>
      _$this._vpnConnectionDeviceTypeId = vpnConnectionDeviceTypeId;

  String? _vendor;
  String? get vendor => _$this._vendor;
  set vendor(String? vendor) => _$this._vendor = vendor;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _software;
  String? get software => _$this._software;
  set software(String? software) => _$this._software = software;

  VpnConnectionDeviceTypeBuilder();

  VpnConnectionDeviceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionDeviceTypeId = $v.vpnConnectionDeviceTypeId;
      _vendor = $v.vendor;
      _platform = $v.platform;
      _software = $v.software;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnConnectionDeviceType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnConnectionDeviceType;
  }

  @override
  void update(void Function(VpnConnectionDeviceTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnConnectionDeviceType build() => _build();

  _$VpnConnectionDeviceType _build() {
    final _$result = _$v ??
        new _$VpnConnectionDeviceType._(
            vpnConnectionDeviceTypeId: vpnConnectionDeviceTypeId,
            vendor: vendor,
            platform: platform,
            software: software);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
