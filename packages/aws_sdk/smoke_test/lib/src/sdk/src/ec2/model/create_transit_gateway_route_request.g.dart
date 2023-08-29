// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteRequest
    extends CreateTransitGatewayRouteRequest {
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

  factory _$CreateTransitGatewayRouteRequest(
          [void Function(CreateTransitGatewayRouteRequestBuilder)? updates]) =>
      (new CreateTransitGatewayRouteRequestBuilder()..update(updates))._build();

  _$CreateTransitGatewayRouteRequest._(
      {this.destinationCidrBlock,
      this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.blackhole,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        blackhole, r'CreateTransitGatewayRouteRequest', 'blackhole');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayRouteRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayRouteRequest rebuild(
          void Function(CreateTransitGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteRequestBuilder toBuilder() =>
      new CreateTransitGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteRequest &&
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

class CreateTransitGatewayRouteRequestBuilder
    implements
        Builder<CreateTransitGatewayRouteRequest,
            CreateTransitGatewayRouteRequestBuilder> {
  _$CreateTransitGatewayRouteRequest? _$v;

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

  CreateTransitGatewayRouteRequestBuilder() {
    CreateTransitGatewayRouteRequest._init(this);
  }

  CreateTransitGatewayRouteRequestBuilder get _$this {
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
  void replace(CreateTransitGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteRequest;
  }

  @override
  void update(void Function(CreateTransitGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteRequest build() => _build();

  _$CreateTransitGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            blackhole: BuiltValueNullFieldError.checkNotNull(
                blackhole, r'CreateTransitGatewayRouteRequest', 'blackhole'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateTransitGatewayRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
