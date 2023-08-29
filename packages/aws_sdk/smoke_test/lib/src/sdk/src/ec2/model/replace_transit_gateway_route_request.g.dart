// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_transit_gateway_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceTransitGatewayRouteRequest
    extends ReplaceTransitGatewayRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool blackhole;
  @override
  final bool dryRun;

  factory _$ReplaceTransitGatewayRouteRequest(
          [void Function(ReplaceTransitGatewayRouteRequestBuilder)? updates]) =>
      (new ReplaceTransitGatewayRouteRequestBuilder()..update(updates))
          ._build();

  _$ReplaceTransitGatewayRouteRequest._(
      {this.destinationCidrBlock,
      this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.blackhole,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        blackhole, r'ReplaceTransitGatewayRouteRequest', 'blackhole');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReplaceTransitGatewayRouteRequest', 'dryRun');
  }

  @override
  ReplaceTransitGatewayRouteRequest rebuild(
          void Function(ReplaceTransitGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceTransitGatewayRouteRequestBuilder toBuilder() =>
      new ReplaceTransitGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceTransitGatewayRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        blackhole == other.blackhole &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, blackhole.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceTransitGatewayRouteRequestBuilder
    implements
        Builder<ReplaceTransitGatewayRouteRequest,
            ReplaceTransitGatewayRouteRequestBuilder> {
  _$ReplaceTransitGatewayRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _blackhole;
  bool? get blackhole => _$this._blackhole;
  set blackhole(bool? blackhole) => _$this._blackhole = blackhole;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ReplaceTransitGatewayRouteRequestBuilder() {
    ReplaceTransitGatewayRouteRequest._init(this);
  }

  ReplaceTransitGatewayRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _blackhole = $v.blackhole;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceTransitGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceTransitGatewayRouteRequest;
  }

  @override
  void update(
      void Function(ReplaceTransitGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceTransitGatewayRouteRequest build() => _build();

  _$ReplaceTransitGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$ReplaceTransitGatewayRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            blackhole: BuiltValueNullFieldError.checkNotNull(
                blackhole, r'ReplaceTransitGatewayRouteRequest', 'blackhole'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReplaceTransitGatewayRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
