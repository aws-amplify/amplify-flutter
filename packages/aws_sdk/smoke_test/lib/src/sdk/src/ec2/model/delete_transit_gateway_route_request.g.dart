// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteRequest
    extends DeleteTransitGatewayRouteRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? destinationCidrBlock;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayRouteRequest(
          [void Function(DeleteTransitGatewayRouteRequestBuilder)? updates]) =>
      (new DeleteTransitGatewayRouteRequestBuilder()..update(updates))._build();

  _$DeleteTransitGatewayRouteRequest._(
      {this.transitGatewayRouteTableId,
      this.destinationCidrBlock,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayRouteRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayRouteRequest rebuild(
          void Function(DeleteTransitGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteRequestBuilder toBuilder() =>
      new DeleteTransitGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        destinationCidrBlock == other.destinationCidrBlock &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteRequestBuilder
    implements
        Builder<DeleteTransitGatewayRouteRequest,
            DeleteTransitGatewayRouteRequestBuilder> {
  _$DeleteTransitGatewayRouteRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayRouteRequestBuilder() {
    DeleteTransitGatewayRouteRequest._init(this);
  }

  DeleteTransitGatewayRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteRequest;
  }

  @override
  void update(void Function(DeleteTransitGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteRequest build() => _build();

  _$DeleteTransitGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayRouteRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            destinationCidrBlock: destinationCidrBlock,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
