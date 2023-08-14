// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_connect_peer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayConnectPeerRequest
    extends DeleteTransitGatewayConnectPeerRequest {
  @override
  final String? transitGatewayConnectPeerId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayConnectPeerRequest(
          [void Function(DeleteTransitGatewayConnectPeerRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayConnectPeerRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayConnectPeerRequest._(
      {this.transitGatewayConnectPeerId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayConnectPeerRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayConnectPeerRequest rebuild(
          void Function(DeleteTransitGatewayConnectPeerRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayConnectPeerRequestBuilder toBuilder() =>
      new DeleteTransitGatewayConnectPeerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayConnectPeerRequest &&
        transitGatewayConnectPeerId == other.transitGatewayConnectPeerId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnectPeerId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayConnectPeerRequestBuilder
    implements
        Builder<DeleteTransitGatewayConnectPeerRequest,
            DeleteTransitGatewayConnectPeerRequestBuilder> {
  _$DeleteTransitGatewayConnectPeerRequest? _$v;

  String? _transitGatewayConnectPeerId;
  String? get transitGatewayConnectPeerId =>
      _$this._transitGatewayConnectPeerId;
  set transitGatewayConnectPeerId(String? transitGatewayConnectPeerId) =>
      _$this._transitGatewayConnectPeerId = transitGatewayConnectPeerId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayConnectPeerRequestBuilder() {
    DeleteTransitGatewayConnectPeerRequest._init(this);
  }

  DeleteTransitGatewayConnectPeerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnectPeerId = $v.transitGatewayConnectPeerId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayConnectPeerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayConnectPeerRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayConnectPeerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayConnectPeerRequest build() => _build();

  _$DeleteTransitGatewayConnectPeerRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayConnectPeerRequest._(
            transitGatewayConnectPeerId: transitGatewayConnectPeerId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayConnectPeerRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
