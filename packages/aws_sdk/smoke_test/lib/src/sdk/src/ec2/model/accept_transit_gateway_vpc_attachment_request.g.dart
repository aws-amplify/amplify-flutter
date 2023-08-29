// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_vpc_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayVpcAttachmentRequest
    extends AcceptTransitGatewayVpcAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$AcceptTransitGatewayVpcAttachmentRequest(
          [void Function(AcceptTransitGatewayVpcAttachmentRequestBuilder)?
              updates]) =>
      (new AcceptTransitGatewayVpcAttachmentRequestBuilder()..update(updates))
          ._build();

  _$AcceptTransitGatewayVpcAttachmentRequest._(
      {this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptTransitGatewayVpcAttachmentRequest', 'dryRun');
  }

  @override
  AcceptTransitGatewayVpcAttachmentRequest rebuild(
          void Function(AcceptTransitGatewayVpcAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayVpcAttachmentRequestBuilder toBuilder() =>
      new AcceptTransitGatewayVpcAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayVpcAttachmentRequest &&
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

class AcceptTransitGatewayVpcAttachmentRequestBuilder
    implements
        Builder<AcceptTransitGatewayVpcAttachmentRequest,
            AcceptTransitGatewayVpcAttachmentRequestBuilder> {
  _$AcceptTransitGatewayVpcAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AcceptTransitGatewayVpcAttachmentRequestBuilder() {
    AcceptTransitGatewayVpcAttachmentRequest._init(this);
  }

  AcceptTransitGatewayVpcAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayVpcAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayVpcAttachmentRequest;
  }

  @override
  void update(
      void Function(AcceptTransitGatewayVpcAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayVpcAttachmentRequest build() => _build();

  _$AcceptTransitGatewayVpcAttachmentRequest _build() {
    final _$result = _$v ??
        new _$AcceptTransitGatewayVpcAttachmentRequest._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AcceptTransitGatewayVpcAttachmentRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
