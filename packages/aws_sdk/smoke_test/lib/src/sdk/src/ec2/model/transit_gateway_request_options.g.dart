// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRequestOptions extends TransitGatewayRequestOptions {
  @override
  final _i2.Int64 amazonSideAsn;
  @override
  final AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments;
  @override
  final DefaultRouteTableAssociationValue? defaultRouteTableAssociation;
  @override
  final DefaultRouteTablePropagationValue? defaultRouteTablePropagation;
  @override
  final VpnEcmpSupportValue? vpnEcmpSupport;
  @override
  final DnsSupportValue? dnsSupport;
  @override
  final MulticastSupportValue? multicastSupport;
  @override
  final _i3.BuiltList<String>? transitGatewayCidrBlocks;

  factory _$TransitGatewayRequestOptions(
          [void Function(TransitGatewayRequestOptionsBuilder)? updates]) =>
      (new TransitGatewayRequestOptionsBuilder()..update(updates))._build();

  _$TransitGatewayRequestOptions._(
      {required this.amazonSideAsn,
      this.autoAcceptSharedAttachments,
      this.defaultRouteTableAssociation,
      this.defaultRouteTablePropagation,
      this.vpnEcmpSupport,
      this.dnsSupport,
      this.multicastSupport,
      this.transitGatewayCidrBlocks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'TransitGatewayRequestOptions', 'amazonSideAsn');
  }

  @override
  TransitGatewayRequestOptions rebuild(
          void Function(TransitGatewayRequestOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRequestOptionsBuilder toBuilder() =>
      new TransitGatewayRequestOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRequestOptions &&
        amazonSideAsn == other.amazonSideAsn &&
        autoAcceptSharedAttachments == other.autoAcceptSharedAttachments &&
        defaultRouteTableAssociation == other.defaultRouteTableAssociation &&
        defaultRouteTablePropagation == other.defaultRouteTablePropagation &&
        vpnEcmpSupport == other.vpnEcmpSupport &&
        dnsSupport == other.dnsSupport &&
        multicastSupport == other.multicastSupport &&
        transitGatewayCidrBlocks == other.transitGatewayCidrBlocks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAttachments.hashCode);
    _$hash = $jc(_$hash, defaultRouteTableAssociation.hashCode);
    _$hash = $jc(_$hash, defaultRouteTablePropagation.hashCode);
    _$hash = $jc(_$hash, vpnEcmpSupport.hashCode);
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, multicastSupport.hashCode);
    _$hash = $jc(_$hash, transitGatewayCidrBlocks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRequestOptionsBuilder
    implements
        Builder<TransitGatewayRequestOptions,
            TransitGatewayRequestOptionsBuilder> {
  _$TransitGatewayRequestOptions? _$v;

  _i2.Int64? _amazonSideAsn;
  _i2.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i2.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

  AutoAcceptSharedAttachmentsValue? _autoAcceptSharedAttachments;
  AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments =>
      _$this._autoAcceptSharedAttachments;
  set autoAcceptSharedAttachments(
          AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments) =>
      _$this._autoAcceptSharedAttachments = autoAcceptSharedAttachments;

  DefaultRouteTableAssociationValue? _defaultRouteTableAssociation;
  DefaultRouteTableAssociationValue? get defaultRouteTableAssociation =>
      _$this._defaultRouteTableAssociation;
  set defaultRouteTableAssociation(
          DefaultRouteTableAssociationValue? defaultRouteTableAssociation) =>
      _$this._defaultRouteTableAssociation = defaultRouteTableAssociation;

  DefaultRouteTablePropagationValue? _defaultRouteTablePropagation;
  DefaultRouteTablePropagationValue? get defaultRouteTablePropagation =>
      _$this._defaultRouteTablePropagation;
  set defaultRouteTablePropagation(
          DefaultRouteTablePropagationValue? defaultRouteTablePropagation) =>
      _$this._defaultRouteTablePropagation = defaultRouteTablePropagation;

  VpnEcmpSupportValue? _vpnEcmpSupport;
  VpnEcmpSupportValue? get vpnEcmpSupport => _$this._vpnEcmpSupport;
  set vpnEcmpSupport(VpnEcmpSupportValue? vpnEcmpSupport) =>
      _$this._vpnEcmpSupport = vpnEcmpSupport;

  DnsSupportValue? _dnsSupport;
  DnsSupportValue? get dnsSupport => _$this._dnsSupport;
  set dnsSupport(DnsSupportValue? dnsSupport) =>
      _$this._dnsSupport = dnsSupport;

  MulticastSupportValue? _multicastSupport;
  MulticastSupportValue? get multicastSupport => _$this._multicastSupport;
  set multicastSupport(MulticastSupportValue? multicastSupport) =>
      _$this._multicastSupport = multicastSupport;

  _i3.ListBuilder<String>? _transitGatewayCidrBlocks;
  _i3.ListBuilder<String> get transitGatewayCidrBlocks =>
      _$this._transitGatewayCidrBlocks ??= new _i3.ListBuilder<String>();
  set transitGatewayCidrBlocks(
          _i3.ListBuilder<String>? transitGatewayCidrBlocks) =>
      _$this._transitGatewayCidrBlocks = transitGatewayCidrBlocks;

  TransitGatewayRequestOptionsBuilder() {
    TransitGatewayRequestOptions._init(this);
  }

  TransitGatewayRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amazonSideAsn = $v.amazonSideAsn;
      _autoAcceptSharedAttachments = $v.autoAcceptSharedAttachments;
      _defaultRouteTableAssociation = $v.defaultRouteTableAssociation;
      _defaultRouteTablePropagation = $v.defaultRouteTablePropagation;
      _vpnEcmpSupport = $v.vpnEcmpSupport;
      _dnsSupport = $v.dnsSupport;
      _multicastSupport = $v.multicastSupport;
      _transitGatewayCidrBlocks = $v.transitGatewayCidrBlocks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRequestOptions;
  }

  @override
  void update(void Function(TransitGatewayRequestOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRequestOptions build() => _build();

  _$TransitGatewayRequestOptions _build() {
    _$TransitGatewayRequestOptions _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayRequestOptions._(
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn,
                  r'TransitGatewayRequestOptions',
                  'amazonSideAsn'),
              autoAcceptSharedAttachments: autoAcceptSharedAttachments,
              defaultRouteTableAssociation: defaultRouteTableAssociation,
              defaultRouteTablePropagation: defaultRouteTablePropagation,
              vpnEcmpSupport: vpnEcmpSupport,
              dnsSupport: dnsSupport,
              multicastSupport: multicastSupport,
              transitGatewayCidrBlocks: _transitGatewayCidrBlocks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayCidrBlocks';
        _transitGatewayCidrBlocks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayRequestOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
