// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_transit_gateway_vpc_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectTransitGatewayVpcAttachmentRequest
    extends RejectTransitGatewayVpcAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$RejectTransitGatewayVpcAttachmentRequest(
          [void Function(RejectTransitGatewayVpcAttachmentRequestBuilder)?
              updates]) =>
      (new RejectTransitGatewayVpcAttachmentRequestBuilder()..update(updates))
          ._build();

  _$RejectTransitGatewayVpcAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RejectTransitGatewayVpcAttachmentRequest', 'dryRun');
  }

  @override
  RejectTransitGatewayVpcAttachmentRequest rebuild(
          void Function(RejectTransitGatewayVpcAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectTransitGatewayVpcAttachmentRequestBuilder toBuilder() =>
      new RejectTransitGatewayVpcAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectTransitGatewayVpcAttachmentRequest &&
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

class RejectTransitGatewayVpcAttachmentRequestBuilder
    implements
        Builder<RejectTransitGatewayVpcAttachmentRequest,
            RejectTransitGatewayVpcAttachmentRequestBuilder> {
  _$RejectTransitGatewayVpcAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RejectTransitGatewayVpcAttachmentRequestBuilder() {
    RejectTransitGatewayVpcAttachmentRequest._init(this);
  }

  RejectTransitGatewayVpcAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectTransitGatewayVpcAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectTransitGatewayVpcAttachmentRequest;
  }

  @override
  void update(
      void Function(RejectTransitGatewayVpcAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectTransitGatewayVpcAttachmentRequest build() => _build();

  _$RejectTransitGatewayVpcAttachmentRequest _build() {
    final _$result = _$v ??
        new _$RejectTransitGatewayVpcAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RejectTransitGatewayVpcAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
