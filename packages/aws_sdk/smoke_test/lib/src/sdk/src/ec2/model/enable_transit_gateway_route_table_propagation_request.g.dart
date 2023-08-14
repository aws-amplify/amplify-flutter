// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_transit_gateway_route_table_propagation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableTransitGatewayRouteTablePropagationRequest
    extends EnableTransitGatewayRouteTablePropagationRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;
  @override
  final String? transitGatewayRouteTableAnnouncementId;

  factory _$EnableTransitGatewayRouteTablePropagationRequest(
          [void Function(
                  EnableTransitGatewayRouteTablePropagationRequestBuilder)?
              updates]) =>
      (new EnableTransitGatewayRouteTablePropagationRequestBuilder()
            ..update(updates))
          ._build();

  _$EnableTransitGatewayRouteTablePropagationRequest._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      required this.dryRun,
      this.transitGatewayRouteTableAnnouncementId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableTransitGatewayRouteTablePropagationRequest', 'dryRun');
  }

  @override
  EnableTransitGatewayRouteTablePropagationRequest rebuild(
          void Function(EnableTransitGatewayRouteTablePropagationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableTransitGatewayRouteTablePropagationRequestBuilder toBuilder() =>
      new EnableTransitGatewayRouteTablePropagationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableTransitGatewayRouteTablePropagationRequest &&
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

class EnableTransitGatewayRouteTablePropagationRequestBuilder
    implements
        Builder<EnableTransitGatewayRouteTablePropagationRequest,
            EnableTransitGatewayRouteTablePropagationRequestBuilder> {
  _$EnableTransitGatewayRouteTablePropagationRequest? _$v;

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

  EnableTransitGatewayRouteTablePropagationRequestBuilder() {
    EnableTransitGatewayRouteTablePropagationRequest._init(this);
  }

  EnableTransitGatewayRouteTablePropagationRequestBuilder get _$this {
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
  void replace(EnableTransitGatewayRouteTablePropagationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableTransitGatewayRouteTablePropagationRequest;
  }

  @override
  void update(
      void Function(EnableTransitGatewayRouteTablePropagationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableTransitGatewayRouteTablePropagationRequest build() => _build();

  _$EnableTransitGatewayRouteTablePropagationRequest _build() {
    final _$result = _$v ??
        new _$EnableTransitGatewayRouteTablePropagationRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'EnableTransitGatewayRouteTablePropagationRequest', 'dryRun'),
            transitGatewayRouteTableAnnouncementId:
                transitGatewayRouteTableAnnouncementId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
