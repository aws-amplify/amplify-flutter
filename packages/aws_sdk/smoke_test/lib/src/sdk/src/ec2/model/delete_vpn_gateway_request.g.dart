// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpn_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpnGatewayRequest extends DeleteVpnGatewayRequest {
  @override
  final String? vpnGatewayId;
  @override
  final bool dryRun;

  factory _$DeleteVpnGatewayRequest(
          [void Function(DeleteVpnGatewayRequestBuilder)? updates]) =>
      (new DeleteVpnGatewayRequestBuilder()..update(updates))._build();

  _$DeleteVpnGatewayRequest._({this.vpnGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpnGatewayRequest', 'dryRun');
  }

  @override
  DeleteVpnGatewayRequest rebuild(
          void Function(DeleteVpnGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpnGatewayRequestBuilder toBuilder() =>
      new DeleteVpnGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpnGatewayRequest &&
        vpnGatewayId == other.vpnGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpnGatewayRequestBuilder
    implements
        Builder<DeleteVpnGatewayRequest, DeleteVpnGatewayRequestBuilder> {
  _$DeleteVpnGatewayRequest? _$v;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVpnGatewayRequestBuilder() {
    DeleteVpnGatewayRequest._init(this);
  }

  DeleteVpnGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnGatewayId = $v.vpnGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpnGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpnGatewayRequest;
  }

  @override
  void update(void Function(DeleteVpnGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpnGatewayRequest build() => _build();

  _$DeleteVpnGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpnGatewayRequest._(
            vpnGatewayId: vpnGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVpnGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
