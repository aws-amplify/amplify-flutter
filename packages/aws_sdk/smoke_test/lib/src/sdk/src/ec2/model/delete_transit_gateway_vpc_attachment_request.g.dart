// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_vpc_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayVpcAttachmentRequest
    extends DeleteTransitGatewayVpcAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayVpcAttachmentRequest(
          [void Function(DeleteTransitGatewayVpcAttachmentRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayVpcAttachmentRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayVpcAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayVpcAttachmentRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayVpcAttachmentRequest rebuild(
          void Function(DeleteTransitGatewayVpcAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayVpcAttachmentRequestBuilder toBuilder() =>
      new DeleteTransitGatewayVpcAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayVpcAttachmentRequest &&
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

class DeleteTransitGatewayVpcAttachmentRequestBuilder
    implements
        Builder<DeleteTransitGatewayVpcAttachmentRequest,
            DeleteTransitGatewayVpcAttachmentRequestBuilder> {
  _$DeleteTransitGatewayVpcAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayVpcAttachmentRequestBuilder() {
    DeleteTransitGatewayVpcAttachmentRequest._init(this);
  }

  DeleteTransitGatewayVpcAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayVpcAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayVpcAttachmentRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayVpcAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayVpcAttachmentRequest build() => _build();

  _$DeleteTransitGatewayVpcAttachmentRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayVpcAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayVpcAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
