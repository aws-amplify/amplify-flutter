// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_connect_peer_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayConnectPeerResult
    extends DeleteTransitGatewayConnectPeerResult {
  @override
  final TransitGatewayConnectPeer? transitGatewayConnectPeer;

  factory _$DeleteTransitGatewayConnectPeerResult(
          [void Function(DeleteTransitGatewayConnectPeerResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayConnectPeerResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayConnectPeerResult._({this.transitGatewayConnectPeer})
      : super._();

  @override
  DeleteTransitGatewayConnectPeerResult rebuild(
          void Function(DeleteTransitGatewayConnectPeerResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayConnectPeerResultBuilder toBuilder() =>
      new DeleteTransitGatewayConnectPeerResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayConnectPeerResult &&
        transitGatewayConnectPeer == other.transitGatewayConnectPeer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnectPeer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayConnectPeerResultBuilder
    implements
        Builder<DeleteTransitGatewayConnectPeerResult,
            DeleteTransitGatewayConnectPeerResultBuilder> {
  _$DeleteTransitGatewayConnectPeerResult? _$v;

  TransitGatewayConnectPeerBuilder? _transitGatewayConnectPeer;
  TransitGatewayConnectPeerBuilder get transitGatewayConnectPeer =>
      _$this._transitGatewayConnectPeer ??=
          new TransitGatewayConnectPeerBuilder();
  set transitGatewayConnectPeer(
          TransitGatewayConnectPeerBuilder? transitGatewayConnectPeer) =>
      _$this._transitGatewayConnectPeer = transitGatewayConnectPeer;

  DeleteTransitGatewayConnectPeerResultBuilder();

  DeleteTransitGatewayConnectPeerResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnectPeer = $v.transitGatewayConnectPeer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayConnectPeerResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayConnectPeerResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayConnectPeerResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayConnectPeerResult build() => _build();

  _$DeleteTransitGatewayConnectPeerResult _build() {
    _$DeleteTransitGatewayConnectPeerResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayConnectPeerResult._(
              transitGatewayConnectPeer: _transitGatewayConnectPeer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnectPeer';
        _transitGatewayConnectPeer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayConnectPeerResult',
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
