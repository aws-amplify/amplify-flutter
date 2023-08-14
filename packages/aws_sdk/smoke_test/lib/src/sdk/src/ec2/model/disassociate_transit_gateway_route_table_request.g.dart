// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_transit_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayRouteTableRequest
    extends DisassociateTransitGatewayRouteTableRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$DisassociateTransitGatewayRouteTableRequest(
          [void Function(DisassociateTransitGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayRouteTableRequestBuilder()
            ..update(updates))
          ._build();

  _$DisassociateTransitGatewayRouteTableRequest._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateTransitGatewayRouteTableRequest', 'dryRun');
  }

  @override
  DisassociateTransitGatewayRouteTableRequest rebuild(
          void Function(DisassociateTransitGatewayRouteTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayRouteTableRequestBuilder toBuilder() =>
      new DisassociateTransitGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayRouteTableRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTransitGatewayRouteTableRequestBuilder
    implements
        Builder<DisassociateTransitGatewayRouteTableRequest,
            DisassociateTransitGatewayRouteTableRequestBuilder> {
  _$DisassociateTransitGatewayRouteTableRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateTransitGatewayRouteTableRequestBuilder() {
    DisassociateTransitGatewayRouteTableRequest._init(this);
  }

  DisassociateTransitGatewayRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayRouteTableRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayRouteTableRequest build() => _build();

  _$DisassociateTransitGatewayRouteTableRequest _build() {
    final _$result = _$v ??
        new _$DisassociateTransitGatewayRouteTableRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisassociateTransitGatewayRouteTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
