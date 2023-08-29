// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_transit_gateway_peering_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectTransitGatewayPeeringAttachmentRequest
    extends RejectTransitGatewayPeeringAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$RejectTransitGatewayPeeringAttachmentRequest(
          [void Function(RejectTransitGatewayPeeringAttachmentRequestBuilder)?
              updates]) =>
      (new RejectTransitGatewayPeeringAttachmentRequestBuilder()
            ..update(updates))
          ._build();

  _$RejectTransitGatewayPeeringAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RejectTransitGatewayPeeringAttachmentRequest', 'dryRun');
  }

  @override
  RejectTransitGatewayPeeringAttachmentRequest rebuild(
          void Function(RejectTransitGatewayPeeringAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectTransitGatewayPeeringAttachmentRequestBuilder toBuilder() =>
      new RejectTransitGatewayPeeringAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectTransitGatewayPeeringAttachmentRequest &&
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

class RejectTransitGatewayPeeringAttachmentRequestBuilder
    implements
        Builder<RejectTransitGatewayPeeringAttachmentRequest,
            RejectTransitGatewayPeeringAttachmentRequestBuilder> {
  _$RejectTransitGatewayPeeringAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RejectTransitGatewayPeeringAttachmentRequestBuilder() {
    RejectTransitGatewayPeeringAttachmentRequest._init(this);
  }

  RejectTransitGatewayPeeringAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectTransitGatewayPeeringAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectTransitGatewayPeeringAttachmentRequest;
  }

  @override
  void update(
      void Function(RejectTransitGatewayPeeringAttachmentRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectTransitGatewayPeeringAttachmentRequest build() => _build();

  _$RejectTransitGatewayPeeringAttachmentRequest _build() {
    final _$result = _$v ??
        new _$RejectTransitGatewayPeeringAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'RejectTransitGatewayPeeringAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
