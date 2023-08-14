// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_peering_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayPeeringAttachmentRequest
    extends AcceptTransitGatewayPeeringAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$AcceptTransitGatewayPeeringAttachmentRequest(
          [void Function(AcceptTransitGatewayPeeringAttachmentRequestBuilder)?
              updates]) =>
      (new AcceptTransitGatewayPeeringAttachmentRequestBuilder()
            ..update(updates))
          ._build();

  _$AcceptTransitGatewayPeeringAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptTransitGatewayPeeringAttachmentRequest', 'dryRun');
  }

  @override
  AcceptTransitGatewayPeeringAttachmentRequest rebuild(
          void Function(AcceptTransitGatewayPeeringAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayPeeringAttachmentRequestBuilder toBuilder() =>
      new AcceptTransitGatewayPeeringAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayPeeringAttachmentRequest &&
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

class AcceptTransitGatewayPeeringAttachmentRequestBuilder
    implements
        Builder<AcceptTransitGatewayPeeringAttachmentRequest,
            AcceptTransitGatewayPeeringAttachmentRequestBuilder> {
  _$AcceptTransitGatewayPeeringAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AcceptTransitGatewayPeeringAttachmentRequestBuilder() {
    AcceptTransitGatewayPeeringAttachmentRequest._init(this);
  }

  AcceptTransitGatewayPeeringAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayPeeringAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayPeeringAttachmentRequest;
  }

  @override
  void update(
      void Function(AcceptTransitGatewayPeeringAttachmentRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayPeeringAttachmentRequest build() => _build();

  _$AcceptTransitGatewayPeeringAttachmentRequest _build() {
    final _$result = _$v ??
        new _$AcceptTransitGatewayPeeringAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'AcceptTransitGatewayPeeringAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
