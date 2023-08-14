// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_tunnel_replacement_status_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnTunnelReplacementStatusResult
    extends GetVpnTunnelReplacementStatusResult {
  @override
  final String? vpnConnectionId;
  @override
  final String? transitGatewayId;
  @override
  final String? customerGatewayId;
  @override
  final String? vpnGatewayId;
  @override
  final String? vpnTunnelOutsideIpAddress;
  @override
  final MaintenanceDetails? maintenanceDetails;

  factory _$GetVpnTunnelReplacementStatusResult(
          [void Function(GetVpnTunnelReplacementStatusResultBuilder)?
              updates]) =>
      (new GetVpnTunnelReplacementStatusResultBuilder()..update(updates))
          ._build();

  _$GetVpnTunnelReplacementStatusResult._(
      {this.vpnConnectionId,
      this.transitGatewayId,
      this.customerGatewayId,
      this.vpnGatewayId,
      this.vpnTunnelOutsideIpAddress,
      this.maintenanceDetails})
      : super._();

  @override
  GetVpnTunnelReplacementStatusResult rebuild(
          void Function(GetVpnTunnelReplacementStatusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnTunnelReplacementStatusResultBuilder toBuilder() =>
      new GetVpnTunnelReplacementStatusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnTunnelReplacementStatusResult &&
        vpnConnectionId == other.vpnConnectionId &&
        transitGatewayId == other.transitGatewayId &&
        customerGatewayId == other.customerGatewayId &&
        vpnGatewayId == other.vpnGatewayId &&
        vpnTunnelOutsideIpAddress == other.vpnTunnelOutsideIpAddress &&
        maintenanceDetails == other.maintenanceDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, vpnTunnelOutsideIpAddress.hashCode);
    _$hash = $jc(_$hash, maintenanceDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnTunnelReplacementStatusResultBuilder
    implements
        Builder<GetVpnTunnelReplacementStatusResult,
            GetVpnTunnelReplacementStatusResultBuilder> {
  _$GetVpnTunnelReplacementStatusResult? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _customerGatewayId;
  String? get customerGatewayId => _$this._customerGatewayId;
  set customerGatewayId(String? customerGatewayId) =>
      _$this._customerGatewayId = customerGatewayId;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  String? _vpnTunnelOutsideIpAddress;
  String? get vpnTunnelOutsideIpAddress => _$this._vpnTunnelOutsideIpAddress;
  set vpnTunnelOutsideIpAddress(String? vpnTunnelOutsideIpAddress) =>
      _$this._vpnTunnelOutsideIpAddress = vpnTunnelOutsideIpAddress;

  MaintenanceDetailsBuilder? _maintenanceDetails;
  MaintenanceDetailsBuilder get maintenanceDetails =>
      _$this._maintenanceDetails ??= new MaintenanceDetailsBuilder();
  set maintenanceDetails(MaintenanceDetailsBuilder? maintenanceDetails) =>
      _$this._maintenanceDetails = maintenanceDetails;

  GetVpnTunnelReplacementStatusResultBuilder();

  GetVpnTunnelReplacementStatusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _transitGatewayId = $v.transitGatewayId;
      _customerGatewayId = $v.customerGatewayId;
      _vpnGatewayId = $v.vpnGatewayId;
      _vpnTunnelOutsideIpAddress = $v.vpnTunnelOutsideIpAddress;
      _maintenanceDetails = $v.maintenanceDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnTunnelReplacementStatusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnTunnelReplacementStatusResult;
  }

  @override
  void update(
      void Function(GetVpnTunnelReplacementStatusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnTunnelReplacementStatusResult build() => _build();

  _$GetVpnTunnelReplacementStatusResult _build() {
    _$GetVpnTunnelReplacementStatusResult _$result;
    try {
      _$result = _$v ??
          new _$GetVpnTunnelReplacementStatusResult._(
              vpnConnectionId: vpnConnectionId,
              transitGatewayId: transitGatewayId,
              customerGatewayId: customerGatewayId,
              vpnGatewayId: vpnGatewayId,
              vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
              maintenanceDetails: _maintenanceDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'maintenanceDetails';
        _maintenanceDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetVpnTunnelReplacementStatusResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
