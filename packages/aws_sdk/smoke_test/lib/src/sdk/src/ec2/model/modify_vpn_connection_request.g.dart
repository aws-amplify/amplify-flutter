// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnConnectionRequest extends ModifyVpnConnectionRequest {
  @override
  final String? vpnConnectionId;
  @override
  final String? transitGatewayId;
  @override
  final String? customerGatewayId;
  @override
  final String? vpnGatewayId;
  @override
  final bool dryRun;

  factory _$ModifyVpnConnectionRequest(
          [void Function(ModifyVpnConnectionRequestBuilder)? updates]) =>
      (new ModifyVpnConnectionRequestBuilder()..update(updates))._build();

  _$ModifyVpnConnectionRequest._(
      {this.vpnConnectionId,
      this.transitGatewayId,
      this.customerGatewayId,
      this.vpnGatewayId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpnConnectionRequest', 'dryRun');
  }

  @override
  ModifyVpnConnectionRequest rebuild(
          void Function(ModifyVpnConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnConnectionRequestBuilder toBuilder() =>
      new ModifyVpnConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnConnectionRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        transitGatewayId == other.transitGatewayId &&
        customerGatewayId == other.customerGatewayId &&
        vpnGatewayId == other.vpnGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnConnectionRequestBuilder
    implements
        Builder<ModifyVpnConnectionRequest, ModifyVpnConnectionRequestBuilder> {
  _$ModifyVpnConnectionRequest? _$v;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVpnConnectionRequestBuilder() {
    ModifyVpnConnectionRequest._init(this);
  }

  ModifyVpnConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _transitGatewayId = $v.transitGatewayId;
      _customerGatewayId = $v.customerGatewayId;
      _vpnGatewayId = $v.vpnGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnConnectionRequest;
  }

  @override
  void update(void Function(ModifyVpnConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnConnectionRequest build() => _build();

  _$ModifyVpnConnectionRequest _build() {
    final _$result = _$v ??
        new _$ModifyVpnConnectionRequest._(
            vpnConnectionId: vpnConnectionId,
            transitGatewayId: transitGatewayId,
            customerGatewayId: customerGatewayId,
            vpnGatewayId: vpnGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVpnConnectionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
