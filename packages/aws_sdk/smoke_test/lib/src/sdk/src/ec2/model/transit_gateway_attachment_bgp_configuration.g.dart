// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_attachment_bgp_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayAttachmentBgpConfiguration
    extends TransitGatewayAttachmentBgpConfiguration {
  @override
  final _i2.Int64 transitGatewayAsn;
  @override
  final _i2.Int64 peerAsn;
  @override
  final String? transitGatewayAddress;
  @override
  final String? peerAddress;
  @override
  final BgpStatus? bgpStatus;

  factory _$TransitGatewayAttachmentBgpConfiguration(
          [void Function(TransitGatewayAttachmentBgpConfigurationBuilder)?
              updates]) =>
      (new TransitGatewayAttachmentBgpConfigurationBuilder()..update(updates))
          ._build();

  _$TransitGatewayAttachmentBgpConfiguration._(
      {required this.transitGatewayAsn,
      required this.peerAsn,
      this.transitGatewayAddress,
      this.peerAddress,
      this.bgpStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transitGatewayAsn,
        r'TransitGatewayAttachmentBgpConfiguration', 'transitGatewayAsn');
    BuiltValueNullFieldError.checkNotNull(
        peerAsn, r'TransitGatewayAttachmentBgpConfiguration', 'peerAsn');
  }

  @override
  TransitGatewayAttachmentBgpConfiguration rebuild(
          void Function(TransitGatewayAttachmentBgpConfigurationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayAttachmentBgpConfigurationBuilder toBuilder() =>
      new TransitGatewayAttachmentBgpConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayAttachmentBgpConfiguration &&
        transitGatewayAsn == other.transitGatewayAsn &&
        peerAsn == other.peerAsn &&
        transitGatewayAddress == other.transitGatewayAddress &&
        peerAddress == other.peerAddress &&
        bgpStatus == other.bgpStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAsn.hashCode);
    _$hash = $jc(_$hash, peerAsn.hashCode);
    _$hash = $jc(_$hash, transitGatewayAddress.hashCode);
    _$hash = $jc(_$hash, peerAddress.hashCode);
    _$hash = $jc(_$hash, bgpStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayAttachmentBgpConfigurationBuilder
    implements
        Builder<TransitGatewayAttachmentBgpConfiguration,
            TransitGatewayAttachmentBgpConfigurationBuilder> {
  _$TransitGatewayAttachmentBgpConfiguration? _$v;

  _i2.Int64? _transitGatewayAsn;
  _i2.Int64? get transitGatewayAsn => _$this._transitGatewayAsn;
  set transitGatewayAsn(_i2.Int64? transitGatewayAsn) =>
      _$this._transitGatewayAsn = transitGatewayAsn;

  _i2.Int64? _peerAsn;
  _i2.Int64? get peerAsn => _$this._peerAsn;
  set peerAsn(_i2.Int64? peerAsn) => _$this._peerAsn = peerAsn;

  String? _transitGatewayAddress;
  String? get transitGatewayAddress => _$this._transitGatewayAddress;
  set transitGatewayAddress(String? transitGatewayAddress) =>
      _$this._transitGatewayAddress = transitGatewayAddress;

  String? _peerAddress;
  String? get peerAddress => _$this._peerAddress;
  set peerAddress(String? peerAddress) => _$this._peerAddress = peerAddress;

  BgpStatus? _bgpStatus;
  BgpStatus? get bgpStatus => _$this._bgpStatus;
  set bgpStatus(BgpStatus? bgpStatus) => _$this._bgpStatus = bgpStatus;

  TransitGatewayAttachmentBgpConfigurationBuilder() {
    TransitGatewayAttachmentBgpConfiguration._init(this);
  }

  TransitGatewayAttachmentBgpConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAsn = $v.transitGatewayAsn;
      _peerAsn = $v.peerAsn;
      _transitGatewayAddress = $v.transitGatewayAddress;
      _peerAddress = $v.peerAddress;
      _bgpStatus = $v.bgpStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayAttachmentBgpConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayAttachmentBgpConfiguration;
  }

  @override
  void update(
      void Function(TransitGatewayAttachmentBgpConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayAttachmentBgpConfiguration build() => _build();

  _$TransitGatewayAttachmentBgpConfiguration _build() {
    final _$result = _$v ??
        new _$TransitGatewayAttachmentBgpConfiguration._(
            transitGatewayAsn: BuiltValueNullFieldError.checkNotNull(
                transitGatewayAsn,
                r'TransitGatewayAttachmentBgpConfiguration',
                'transitGatewayAsn'),
            peerAsn: BuiltValueNullFieldError.checkNotNull(peerAsn,
                r'TransitGatewayAttachmentBgpConfiguration', 'peerAsn'),
            transitGatewayAddress: transitGatewayAddress,
            peerAddress: peerAddress,
            bgpStatus: bgpStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
