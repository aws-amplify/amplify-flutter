// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_vpn_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachVpnGatewayRequest extends DetachVpnGatewayRequest {
  @override
  final String? vpcId;
  @override
  final String? vpnGatewayId;
  @override
  final bool dryRun;

  factory _$DetachVpnGatewayRequest(
          [void Function(DetachVpnGatewayRequestBuilder)? updates]) =>
      (new DetachVpnGatewayRequestBuilder()..update(updates))._build();

  _$DetachVpnGatewayRequest._(
      {this.vpcId, this.vpnGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DetachVpnGatewayRequest', 'dryRun');
  }

  @override
  DetachVpnGatewayRequest rebuild(
          void Function(DetachVpnGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachVpnGatewayRequestBuilder toBuilder() =>
      new DetachVpnGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachVpnGatewayRequest &&
        vpcId == other.vpcId &&
        vpnGatewayId == other.vpnGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachVpnGatewayRequestBuilder
    implements
        Builder<DetachVpnGatewayRequest, DetachVpnGatewayRequestBuilder> {
  _$DetachVpnGatewayRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DetachVpnGatewayRequestBuilder() {
    DetachVpnGatewayRequest._init(this);
  }

  DetachVpnGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _vpnGatewayId = $v.vpnGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachVpnGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachVpnGatewayRequest;
  }

  @override
  void update(void Function(DetachVpnGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachVpnGatewayRequest build() => _build();

  _$DetachVpnGatewayRequest _build() {
    final _$result = _$v ??
        new _$DetachVpnGatewayRequest._(
            vpcId: vpcId,
            vpnGatewayId: vpnGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DetachVpnGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
