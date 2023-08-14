// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_vpn_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachVpnGatewayRequest extends AttachVpnGatewayRequest {
  @override
  final String? vpcId;
  @override
  final String? vpnGatewayId;
  @override
  final bool dryRun;

  factory _$AttachVpnGatewayRequest(
          [void Function(AttachVpnGatewayRequestBuilder)? updates]) =>
      (new AttachVpnGatewayRequestBuilder()..update(updates))._build();

  _$AttachVpnGatewayRequest._(
      {this.vpcId, this.vpnGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachVpnGatewayRequest', 'dryRun');
  }

  @override
  AttachVpnGatewayRequest rebuild(
          void Function(AttachVpnGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachVpnGatewayRequestBuilder toBuilder() =>
      new AttachVpnGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachVpnGatewayRequest &&
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

class AttachVpnGatewayRequestBuilder
    implements
        Builder<AttachVpnGatewayRequest, AttachVpnGatewayRequestBuilder> {
  _$AttachVpnGatewayRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AttachVpnGatewayRequestBuilder() {
    AttachVpnGatewayRequest._init(this);
  }

  AttachVpnGatewayRequestBuilder get _$this {
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
  void replace(AttachVpnGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachVpnGatewayRequest;
  }

  @override
  void update(void Function(AttachVpnGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachVpnGatewayRequest build() => _build();

  _$AttachVpnGatewayRequest _build() {
    final _$result = _$v ??
        new _$AttachVpnGatewayRequest._(
            vpcId: vpcId,
            vpnGatewayId: vpnGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AttachVpnGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
