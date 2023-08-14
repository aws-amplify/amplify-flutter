// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_connect_peer_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayConnectPeerResult
    extends CreateTransitGatewayConnectPeerResult {
  @override
  final TransitGatewayConnectPeer? transitGatewayConnectPeer;

  factory _$CreateTransitGatewayConnectPeerResult(
          [void Function(CreateTransitGatewayConnectPeerResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayConnectPeerResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayConnectPeerResult._({this.transitGatewayConnectPeer})
      : super._();

  @override
  CreateTransitGatewayConnectPeerResult rebuild(
          void Function(CreateTransitGatewayConnectPeerResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayConnectPeerResultBuilder toBuilder() =>
      new CreateTransitGatewayConnectPeerResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayConnectPeerResult &&
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

class CreateTransitGatewayConnectPeerResultBuilder
    implements
        Builder<CreateTransitGatewayConnectPeerResult,
            CreateTransitGatewayConnectPeerResultBuilder> {
  _$CreateTransitGatewayConnectPeerResult? _$v;

  TransitGatewayConnectPeerBuilder? _transitGatewayConnectPeer;
  TransitGatewayConnectPeerBuilder get transitGatewayConnectPeer =>
      _$this._transitGatewayConnectPeer ??=
          new TransitGatewayConnectPeerBuilder();
  set transitGatewayConnectPeer(
          TransitGatewayConnectPeerBuilder? transitGatewayConnectPeer) =>
      _$this._transitGatewayConnectPeer = transitGatewayConnectPeer;

  CreateTransitGatewayConnectPeerResultBuilder();

  CreateTransitGatewayConnectPeerResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnectPeer = $v.transitGatewayConnectPeer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayConnectPeerResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayConnectPeerResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayConnectPeerResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayConnectPeerResult build() => _build();

  _$CreateTransitGatewayConnectPeerResult _build() {
    _$CreateTransitGatewayConnectPeerResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayConnectPeerResult._(
              transitGatewayConnectPeer: _transitGatewayConnectPeer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnectPeer';
        _transitGatewayConnectPeer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayConnectPeerResult',
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
