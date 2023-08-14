// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_route_table_announcement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteTableAnnouncementRequest
    extends DeleteTransitGatewayRouteTableAnnouncementRequest {
  @override
  final String? transitGatewayRouteTableAnnouncementId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayRouteTableAnnouncementRequest(
          [void Function(
                  DeleteTransitGatewayRouteTableAnnouncementRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayRouteTableAnnouncementRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayRouteTableAnnouncementRequest._(
      {this.transitGatewayRouteTableAnnouncementId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayRouteTableAnnouncementRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayRouteTableAnnouncementRequest rebuild(
          void Function(
                  DeleteTransitGatewayRouteTableAnnouncementRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteTableAnnouncementRequestBuilder toBuilder() =>
      new DeleteTransitGatewayRouteTableAnnouncementRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteTableAnnouncementRequest &&
        transitGatewayRouteTableAnnouncementId ==
            other.transitGatewayRouteTableAnnouncementId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteTableAnnouncementRequestBuilder
    implements
        Builder<DeleteTransitGatewayRouteTableAnnouncementRequest,
            DeleteTransitGatewayRouteTableAnnouncementRequestBuilder> {
  _$DeleteTransitGatewayRouteTableAnnouncementRequest? _$v;

  String? _transitGatewayRouteTableAnnouncementId;
  String? get transitGatewayRouteTableAnnouncementId =>
      _$this._transitGatewayRouteTableAnnouncementId;
  set transitGatewayRouteTableAnnouncementId(
          String? transitGatewayRouteTableAnnouncementId) =>
      _$this._transitGatewayRouteTableAnnouncementId =
          transitGatewayRouteTableAnnouncementId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayRouteTableAnnouncementRequestBuilder() {
    DeleteTransitGatewayRouteTableAnnouncementRequest._init(this);
  }

  DeleteTransitGatewayRouteTableAnnouncementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteTableAnnouncementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteTableAnnouncementRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayRouteTableAnnouncementRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteTableAnnouncementRequest build() => _build();

  _$DeleteTransitGatewayRouteTableAnnouncementRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayRouteTableAnnouncementRequest._(
            transitGatewayRouteTableAnnouncementId:
                transitGatewayRouteTableAnnouncementId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'DeleteTransitGatewayRouteTableAnnouncementRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
