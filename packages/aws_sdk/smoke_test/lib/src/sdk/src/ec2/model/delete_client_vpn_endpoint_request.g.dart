// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_client_vpn_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteClientVpnEndpointRequest extends DeleteClientVpnEndpointRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final bool dryRun;

  factory _$DeleteClientVpnEndpointRequest(
          [void Function(DeleteClientVpnEndpointRequestBuilder)? updates]) =>
      (new DeleteClientVpnEndpointRequestBuilder()..update(updates))._build();

  _$DeleteClientVpnEndpointRequest._(
      {this.clientVpnEndpointId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteClientVpnEndpointRequest', 'dryRun');
  }

  @override
  DeleteClientVpnEndpointRequest rebuild(
          void Function(DeleteClientVpnEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientVpnEndpointRequestBuilder toBuilder() =>
      new DeleteClientVpnEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientVpnEndpointRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteClientVpnEndpointRequestBuilder
    implements
        Builder<DeleteClientVpnEndpointRequest,
            DeleteClientVpnEndpointRequestBuilder> {
  _$DeleteClientVpnEndpointRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteClientVpnEndpointRequestBuilder() {
    DeleteClientVpnEndpointRequest._init(this);
  }

  DeleteClientVpnEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteClientVpnEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientVpnEndpointRequest;
  }

  @override
  void update(void Function(DeleteClientVpnEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientVpnEndpointRequest build() => _build();

  _$DeleteClientVpnEndpointRequest _build() {
    final _$result = _$v ??
        new _$DeleteClientVpnEndpointRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteClientVpnEndpointRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
