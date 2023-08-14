// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpn_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpnConnectionRequest extends DeleteVpnConnectionRequest {
  @override
  final String? vpnConnectionId;
  @override
  final bool dryRun;

  factory _$DeleteVpnConnectionRequest(
          [void Function(DeleteVpnConnectionRequestBuilder)? updates]) =>
      (new DeleteVpnConnectionRequestBuilder()..update(updates))._build();

  _$DeleteVpnConnectionRequest._({this.vpnConnectionId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpnConnectionRequest', 'dryRun');
  }

  @override
  DeleteVpnConnectionRequest rebuild(
          void Function(DeleteVpnConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpnConnectionRequestBuilder toBuilder() =>
      new DeleteVpnConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpnConnectionRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpnConnectionRequestBuilder
    implements
        Builder<DeleteVpnConnectionRequest, DeleteVpnConnectionRequestBuilder> {
  _$DeleteVpnConnectionRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVpnConnectionRequestBuilder() {
    DeleteVpnConnectionRequest._init(this);
  }

  DeleteVpnConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpnConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpnConnectionRequest;
  }

  @override
  void update(void Function(DeleteVpnConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpnConnectionRequest build() => _build();

  _$DeleteVpnConnectionRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpnConnectionRequest._(
            vpnConnectionId: vpnConnectionId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVpnConnectionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
