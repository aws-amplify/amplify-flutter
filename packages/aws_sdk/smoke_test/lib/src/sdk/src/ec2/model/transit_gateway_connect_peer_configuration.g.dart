// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_connect_peer_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayConnectPeerConfiguration
    extends TransitGatewayConnectPeerConfiguration {
  @override
  final String? transitGatewayAddress;
  @override
  final String? peerAddress;
  @override
  final _i2.BuiltList<String>? insideCidrBlocks;
  @override
  final ProtocolValue? protocol;
  @override
  final _i2.BuiltList<TransitGatewayAttachmentBgpConfiguration>?
      bgpConfigurations;

  factory _$TransitGatewayConnectPeerConfiguration(
          [void Function(TransitGatewayConnectPeerConfigurationBuilder)?
              updates]) =>
      (new TransitGatewayConnectPeerConfigurationBuilder()..update(updates))
          ._build();

  _$TransitGatewayConnectPeerConfiguration._(
      {this.transitGatewayAddress,
      this.peerAddress,
      this.insideCidrBlocks,
      this.protocol,
      this.bgpConfigurations})
      : super._();

  @override
  TransitGatewayConnectPeerConfiguration rebuild(
          void Function(TransitGatewayConnectPeerConfigurationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayConnectPeerConfigurationBuilder toBuilder() =>
      new TransitGatewayConnectPeerConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayConnectPeerConfiguration &&
        transitGatewayAddress == other.transitGatewayAddress &&
        peerAddress == other.peerAddress &&
        insideCidrBlocks == other.insideCidrBlocks &&
        protocol == other.protocol &&
        bgpConfigurations == other.bgpConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAddress.hashCode);
    _$hash = $jc(_$hash, peerAddress.hashCode);
    _$hash = $jc(_$hash, insideCidrBlocks.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, bgpConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayConnectPeerConfigurationBuilder
    implements
        Builder<TransitGatewayConnectPeerConfiguration,
            TransitGatewayConnectPeerConfigurationBuilder> {
  _$TransitGatewayConnectPeerConfiguration? _$v;

  String? _transitGatewayAddress;
  String? get transitGatewayAddress => _$this._transitGatewayAddress;
  set transitGatewayAddress(String? transitGatewayAddress) =>
      _$this._transitGatewayAddress = transitGatewayAddress;

  String? _peerAddress;
  String? get peerAddress => _$this._peerAddress;
  set peerAddress(String? peerAddress) => _$this._peerAddress = peerAddress;

  _i2.ListBuilder<String>? _insideCidrBlocks;
  _i2.ListBuilder<String> get insideCidrBlocks =>
      _$this._insideCidrBlocks ??= new _i2.ListBuilder<String>();
  set insideCidrBlocks(_i2.ListBuilder<String>? insideCidrBlocks) =>
      _$this._insideCidrBlocks = insideCidrBlocks;

  ProtocolValue? _protocol;
  ProtocolValue? get protocol => _$this._protocol;
  set protocol(ProtocolValue? protocol) => _$this._protocol = protocol;

  _i2.ListBuilder<TransitGatewayAttachmentBgpConfiguration>? _bgpConfigurations;
  _i2.ListBuilder<TransitGatewayAttachmentBgpConfiguration>
      get bgpConfigurations => _$this._bgpConfigurations ??=
          new _i2.ListBuilder<TransitGatewayAttachmentBgpConfiguration>();
  set bgpConfigurations(
          _i2.ListBuilder<TransitGatewayAttachmentBgpConfiguration>?
              bgpConfigurations) =>
      _$this._bgpConfigurations = bgpConfigurations;

  TransitGatewayConnectPeerConfigurationBuilder();

  TransitGatewayConnectPeerConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAddress = $v.transitGatewayAddress;
      _peerAddress = $v.peerAddress;
      _insideCidrBlocks = $v.insideCidrBlocks?.toBuilder();
      _protocol = $v.protocol;
      _bgpConfigurations = $v.bgpConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayConnectPeerConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayConnectPeerConfiguration;
  }

  @override
  void update(
      void Function(TransitGatewayConnectPeerConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayConnectPeerConfiguration build() => _build();

  _$TransitGatewayConnectPeerConfiguration _build() {
    _$TransitGatewayConnectPeerConfiguration _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayConnectPeerConfiguration._(
              transitGatewayAddress: transitGatewayAddress,
              peerAddress: peerAddress,
              insideCidrBlocks: _insideCidrBlocks?.build(),
              protocol: protocol,
              bgpConfigurations: _bgpConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'insideCidrBlocks';
        _insideCidrBlocks?.build();

        _$failedField = 'bgpConfigurations';
        _bgpConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayConnectPeerConfiguration',
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
