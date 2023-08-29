// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_transit_gateway_connect_peers_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayConnectPeersResult
    extends DescribeTransitGatewayConnectPeersResult {
  @override
  final _i2.BuiltList<TransitGatewayConnectPeer>? transitGatewayConnectPeers;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayConnectPeersResult(
          [void Function(DescribeTransitGatewayConnectPeersResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayConnectPeersResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayConnectPeersResult._(
      {this.transitGatewayConnectPeers, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayConnectPeersResult rebuild(
          void Function(DescribeTransitGatewayConnectPeersResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayConnectPeersResultBuilder toBuilder() =>
      new DescribeTransitGatewayConnectPeersResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayConnectPeersResult &&
        transitGatewayConnectPeers == other.transitGatewayConnectPeers &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnectPeers.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayConnectPeersResultBuilder
    implements
        Builder<DescribeTransitGatewayConnectPeersResult,
            DescribeTransitGatewayConnectPeersResultBuilder> {
  _$DescribeTransitGatewayConnectPeersResult? _$v;

  _i2.ListBuilder<TransitGatewayConnectPeer>? _transitGatewayConnectPeers;
  _i2.ListBuilder<TransitGatewayConnectPeer> get transitGatewayConnectPeers =>
      _$this._transitGatewayConnectPeers ??=
          new _i2.ListBuilder<TransitGatewayConnectPeer>();
  set transitGatewayConnectPeers(
          _i2.ListBuilder<TransitGatewayConnectPeer>?
              transitGatewayConnectPeers) =>
      _$this._transitGatewayConnectPeers = transitGatewayConnectPeers;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayConnectPeersResultBuilder();

  DescribeTransitGatewayConnectPeersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnectPeers = $v.transitGatewayConnectPeers?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayConnectPeersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayConnectPeersResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayConnectPeersResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayConnectPeersResult build() => _build();

  _$DescribeTransitGatewayConnectPeersResult _build() {
    _$DescribeTransitGatewayConnectPeersResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayConnectPeersResult._(
              transitGatewayConnectPeers: _transitGatewayConnectPeers?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnectPeers';
        _transitGatewayConnectPeers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayConnectPeersResult',
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
