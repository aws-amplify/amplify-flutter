// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_transit_gateway_route_table_propagation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableTransitGatewayRouteTablePropagationRequest
    extends DisableTransitGatewayRouteTablePropagationRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;
  @override
  final String? transitGatewayRouteTableAnnouncementId;

  factory _$DisableTransitGatewayRouteTablePropagationRequest(
          [void Function(
                  DisableTransitGatewayRouteTablePropagationRequestBuilder)?
              updates]) =>
      (new DisableTransitGatewayRouteTablePropagationRequestBuilder()
            ..update(updates))
          ._build();

  _$DisableTransitGatewayRouteTablePropagationRequest._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.dryRun,
      this.transitGatewayRouteTableAnnouncementId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableTransitGatewayRouteTablePropagationRequest', 'dryRun');
  }

  @override
  DisableTransitGatewayRouteTablePropagationRequest rebuild(
          void Function(
                  DisableTransitGatewayRouteTablePropagationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableTransitGatewayRouteTablePropagationRequestBuilder toBuilder() =>
      new DisableTransitGatewayRouteTablePropagationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableTransitGatewayRouteTablePropagationRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun &&
        transitGatewayRouteTableAnnouncementId ==
            other.transitGatewayRouteTableAnnouncementId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableTransitGatewayRouteTablePropagationRequestBuilder
    implements
        Builder<DisableTransitGatewayRouteTablePropagationRequest,
            DisableTransitGatewayRouteTablePropagationRequestBuilder> {
  _$DisableTransitGatewayRouteTablePropagationRequest? _$v;

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

  String? _transitGatewayRouteTableAnnouncementId;
  String? get transitGatewayRouteTableAnnouncementId =>
      _$this._transitGatewayRouteTableAnnouncementId;
  set transitGatewayRouteTableAnnouncementId(
          String? transitGatewayRouteTableAnnouncementId) =>
      _$this._transitGatewayRouteTableAnnouncementId =
          transitGatewayRouteTableAnnouncementId;

  DisableTransitGatewayRouteTablePropagationRequestBuilder() {
    DisableTransitGatewayRouteTablePropagationRequest._init(this);
  }

  DisableTransitGatewayRouteTablePropagationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableTransitGatewayRouteTablePropagationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableTransitGatewayRouteTablePropagationRequest;
  }

  @override
  void update(
      void Function(DisableTransitGatewayRouteTablePropagationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableTransitGatewayRouteTablePropagationRequest build() => _build();

  _$DisableTransitGatewayRouteTablePropagationRequest _build() {
    final _$result = _$v ??
        new _$DisableTransitGatewayRouteTablePropagationRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisableTransitGatewayRouteTablePropagationRequest', 'dryRun'),
            transitGatewayRouteTableAnnouncementId:
                transitGatewayRouteTableAnnouncementId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
