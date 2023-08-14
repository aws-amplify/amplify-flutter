// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_connection_device_sample_configuration_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnConnectionDeviceSampleConfigurationResult
    extends GetVpnConnectionDeviceSampleConfigurationResult {
  @override
  final String? vpnConnectionDeviceSampleConfiguration;

  factory _$GetVpnConnectionDeviceSampleConfigurationResult(
          [void Function(
                  GetVpnConnectionDeviceSampleConfigurationResultBuilder)?
              updates]) =>
      (new GetVpnConnectionDeviceSampleConfigurationResultBuilder()
            ..update(updates))
          ._build();

  _$GetVpnConnectionDeviceSampleConfigurationResult._(
      {this.vpnConnectionDeviceSampleConfiguration})
      : super._();

  @override
  GetVpnConnectionDeviceSampleConfigurationResult rebuild(
          void Function(GetVpnConnectionDeviceSampleConfigurationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnConnectionDeviceSampleConfigurationResultBuilder toBuilder() =>
      new GetVpnConnectionDeviceSampleConfigurationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnConnectionDeviceSampleConfigurationResult &&
        vpnConnectionDeviceSampleConfiguration ==
            other.vpnConnectionDeviceSampleConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionDeviceSampleConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnConnectionDeviceSampleConfigurationResultBuilder
    implements
        Builder<GetVpnConnectionDeviceSampleConfigurationResult,
            GetVpnConnectionDeviceSampleConfigurationResultBuilder> {
  _$GetVpnConnectionDeviceSampleConfigurationResult? _$v;

  String? _vpnConnectionDeviceSampleConfiguration;
  String? get vpnConnectionDeviceSampleConfiguration =>
      _$this._vpnConnectionDeviceSampleConfiguration;
  set vpnConnectionDeviceSampleConfiguration(
          String? vpnConnectionDeviceSampleConfiguration) =>
      _$this._vpnConnectionDeviceSampleConfiguration =
          vpnConnectionDeviceSampleConfiguration;

  GetVpnConnectionDeviceSampleConfigurationResultBuilder();

  GetVpnConnectionDeviceSampleConfigurationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionDeviceSampleConfiguration =
          $v.vpnConnectionDeviceSampleConfiguration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnConnectionDeviceSampleConfigurationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnConnectionDeviceSampleConfigurationResult;
  }

  @override
  void update(
      void Function(GetVpnConnectionDeviceSampleConfigurationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnConnectionDeviceSampleConfigurationResult build() => _build();

  _$GetVpnConnectionDeviceSampleConfigurationResult _build() {
    final _$result = _$v ??
        new _$GetVpnConnectionDeviceSampleConfigurationResult._(
            vpnConnectionDeviceSampleConfiguration:
                vpnConnectionDeviceSampleConfiguration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
