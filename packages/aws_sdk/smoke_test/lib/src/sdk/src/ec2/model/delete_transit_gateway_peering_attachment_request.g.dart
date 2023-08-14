// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_peering_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPeeringAttachmentRequest
    extends DeleteTransitGatewayPeeringAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayPeeringAttachmentRequest(
          [void Function(DeleteTransitGatewayPeeringAttachmentRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPeeringAttachmentRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayPeeringAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayPeeringAttachmentRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayPeeringAttachmentRequest rebuild(
          void Function(DeleteTransitGatewayPeeringAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPeeringAttachmentRequestBuilder toBuilder() =>
      new DeleteTransitGatewayPeeringAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPeeringAttachmentRequest &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayPeeringAttachmentRequestBuilder
    implements
        Builder<DeleteTransitGatewayPeeringAttachmentRequest,
            DeleteTransitGatewayPeeringAttachmentRequestBuilder> {
  _$DeleteTransitGatewayPeeringAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayPeeringAttachmentRequestBuilder() {
    DeleteTransitGatewayPeeringAttachmentRequest._init(this);
  }

  DeleteTransitGatewayPeeringAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPeeringAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPeeringAttachmentRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPeeringAttachmentRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPeeringAttachmentRequest build() => _build();

  _$DeleteTransitGatewayPeeringAttachmentRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayPeeringAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DeleteTransitGatewayPeeringAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
