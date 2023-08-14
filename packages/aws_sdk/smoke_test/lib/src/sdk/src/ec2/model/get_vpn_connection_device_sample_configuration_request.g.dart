// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_connection_device_sample_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnConnectionDeviceSampleConfigurationRequest
    extends GetVpnConnectionDeviceSampleConfigurationRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? vpnConnectionDeviceTypeId;
  @override
  final String? internetKeyExchangeVersion;
  @override
  final bool dryRun;

  factory _$GetVpnConnectionDeviceSampleConfigurationRequest(
          [void Function(
                  GetVpnConnectionDeviceSampleConfigurationRequestBuilder)?
              updates]) =>
      (new GetVpnConnectionDeviceSampleConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$GetVpnConnectionDeviceSampleConfigurationRequest._(
      {this.vpnConnectionId,
      this.vpnConnectionDeviceTypeId,
      this.internetKeyExchangeVersion,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetVpnConnectionDeviceSampleConfigurationRequest', 'dryRun');
  }

  @override
  GetVpnConnectionDeviceSampleConfigurationRequest rebuild(
          void Function(GetVpnConnectionDeviceSampleConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnConnectionDeviceSampleConfigurationRequestBuilder toBuilder() =>
      new GetVpnConnectionDeviceSampleConfigurationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnConnectionDeviceSampleConfigurationRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnConnectionDeviceTypeId == other.vpnConnectionDeviceTypeId &&
        internetKeyExchangeVersion == other.internetKeyExchangeVersion &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnConnectionDeviceTypeId.hashCode);
    _$hash = $jc(_$hash, internetKeyExchangeVersion.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnConnectionDeviceSampleConfigurationRequestBuilder
    implements
        Builder<GetVpnConnectionDeviceSampleConfigurationRequest,
            GetVpnConnectionDeviceSampleConfigurationRequestBuilder> {
  _$GetVpnConnectionDeviceSampleConfigurationRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnConnectionDeviceTypeId;
  String? get vpnConnectionDeviceTypeId => _$this._vpnConnectionDeviceTypeId;
  set vpnConnectionDeviceTypeId(String? vpnConnectionDeviceTypeId) =>
      _$this._vpnConnectionDeviceTypeId = vpnConnectionDeviceTypeId;

  String? _internetKeyExchangeVersion;
  String? get internetKeyExchangeVersion => _$this._internetKeyExchangeVersion;
  set internetKeyExchangeVersion(String? internetKeyExchangeVersion) =>
      _$this._internetKeyExchangeVersion = internetKeyExchangeVersion;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetVpnConnectionDeviceSampleConfigurationRequestBuilder() {
    GetVpnConnectionDeviceSampleConfigurationRequest._init(this);
  }

  GetVpnConnectionDeviceSampleConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnConnectionDeviceTypeId = $v.vpnConnectionDeviceTypeId;
      _internetKeyExchangeVersion = $v.internetKeyExchangeVersion;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnConnectionDeviceSampleConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnConnectionDeviceSampleConfigurationRequest;
  }

  @override
  void update(
      void Function(GetVpnConnectionDeviceSampleConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnConnectionDeviceSampleConfigurationRequest build() => _build();

  _$GetVpnConnectionDeviceSampleConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetVpnConnectionDeviceSampleConfigurationRequest._(
            vpnConnectionId: vpnConnectionId,
            vpnConnectionDeviceTypeId: vpnConnectionDeviceTypeId,
            internetKeyExchangeVersion: internetKeyExchangeVersion,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'GetVpnConnectionDeviceSampleConfigurationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
