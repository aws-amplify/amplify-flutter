// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_connect_request_bgp_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayConnectRequestBgpOptions
    extends TransitGatewayConnectRequestBgpOptions {
  @override
  final _i2.Int64 peerAsn;

  factory _$TransitGatewayConnectRequestBgpOptions(
          [void Function(TransitGatewayConnectRequestBgpOptionsBuilder)?
              updates]) =>
      (new TransitGatewayConnectRequestBgpOptionsBuilder()..update(updates))
          ._build();

  _$TransitGatewayConnectRequestBgpOptions._({required this.peerAsn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        peerAsn, r'TransitGatewayConnectRequestBgpOptions', 'peerAsn');
  }

  @override
  TransitGatewayConnectRequestBgpOptions rebuild(
          void Function(TransitGatewayConnectRequestBgpOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayConnectRequestBgpOptionsBuilder toBuilder() =>
      new TransitGatewayConnectRequestBgpOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayConnectRequestBgpOptions &&
        peerAsn == other.peerAsn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, peerAsn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayConnectRequestBgpOptionsBuilder
    implements
        Builder<TransitGatewayConnectRequestBgpOptions,
            TransitGatewayConnectRequestBgpOptionsBuilder> {
  _$TransitGatewayConnectRequestBgpOptions? _$v;

  _i2.Int64? _peerAsn;
  _i2.Int64? get peerAsn => _$this._peerAsn;
  set peerAsn(_i2.Int64? peerAsn) => _$this._peerAsn = peerAsn;

  TransitGatewayConnectRequestBgpOptionsBuilder() {
    TransitGatewayConnectRequestBgpOptions._init(this);
  }

  TransitGatewayConnectRequestBgpOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _peerAsn = $v.peerAsn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayConnectRequestBgpOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayConnectRequestBgpOptions;
  }

  @override
  void update(
      void Function(TransitGatewayConnectRequestBgpOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayConnectRequestBgpOptions build() => _build();

  _$TransitGatewayConnectRequestBgpOptions _build() {
    final _$result = _$v ??
        new _$TransitGatewayConnectRequestBgpOptions._(
            peerAsn: BuiltValueNullFieldError.checkNotNull(
                peerAsn, r'TransitGatewayConnectRequestBgpOptions', 'peerAsn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
