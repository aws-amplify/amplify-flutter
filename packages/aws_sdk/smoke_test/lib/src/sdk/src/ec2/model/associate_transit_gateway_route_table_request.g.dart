// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_transit_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTransitGatewayRouteTableRequest
    extends AssociateTransitGatewayRouteTableRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$AssociateTransitGatewayRouteTableRequest(
          [void Function(AssociateTransitGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new AssociateTransitGatewayRouteTableRequestBuilder()..update(updates))
          ._build();

  _$AssociateTransitGatewayRouteTableRequest._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateTransitGatewayRouteTableRequest', 'dryRun');
  }

  @override
  AssociateTransitGatewayRouteTableRequest rebuild(
          void Function(AssociateTransitGatewayRouteTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTransitGatewayRouteTableRequestBuilder toBuilder() =>
      new AssociateTransitGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTransitGatewayRouteTableRequest &&
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

class AssociateTransitGatewayRouteTableRequestBuilder
    implements
        Builder<AssociateTransitGatewayRouteTableRequest,
            AssociateTransitGatewayRouteTableRequestBuilder> {
  _$AssociateTransitGatewayRouteTableRequest? _$v;

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

  AssociateTransitGatewayRouteTableRequestBuilder() {
    AssociateTransitGatewayRouteTableRequest._init(this);
  }

  AssociateTransitGatewayRouteTableRequestBuilder get _$this {
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
  void replace(AssociateTransitGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTransitGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(AssociateTransitGatewayRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTransitGatewayRouteTableRequest build() => _build();

  _$AssociateTransitGatewayRouteTableRequest _build() {
    final _$result = _$v ??
        new _$AssociateTransitGatewayRouteTableRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateTransitGatewayRouteTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
