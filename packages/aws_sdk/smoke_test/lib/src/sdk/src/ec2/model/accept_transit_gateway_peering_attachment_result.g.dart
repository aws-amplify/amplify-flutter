// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_peering_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayPeeringAttachmentResult
    extends AcceptTransitGatewayPeeringAttachmentResult {
  @override
  final TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment;

  factory _$AcceptTransitGatewayPeeringAttachmentResult(
          [void Function(AcceptTransitGatewayPeeringAttachmentResultBuilder)?
              updates]) =>
      (new AcceptTransitGatewayPeeringAttachmentResultBuilder()
            ..update(updates))
          ._build();

  _$AcceptTransitGatewayPeeringAttachmentResult._(
      {this.transitGatewayPeeringAttachment})
      : super._();

  @override
  AcceptTransitGatewayPeeringAttachmentResult rebuild(
          void Function(AcceptTransitGatewayPeeringAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayPeeringAttachmentResultBuilder toBuilder() =>
      new AcceptTransitGatewayPeeringAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayPeeringAttachmentResult &&
        transitGatewayPeeringAttachment ==
            other.transitGatewayPeeringAttachment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPeeringAttachment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptTransitGatewayPeeringAttachmentResultBuilder
    implements
        Builder<AcceptTransitGatewayPeeringAttachmentResult,
            AcceptTransitGatewayPeeringAttachmentResultBuilder> {
  _$AcceptTransitGatewayPeeringAttachmentResult? _$v;

  TransitGatewayPeeringAttachmentBuilder? _transitGatewayPeeringAttachment;
  TransitGatewayPeeringAttachmentBuilder get transitGatewayPeeringAttachment =>
      _$this._transitGatewayPeeringAttachment ??=
          new TransitGatewayPeeringAttachmentBuilder();
  set transitGatewayPeeringAttachment(
          TransitGatewayPeeringAttachmentBuilder?
              transitGatewayPeeringAttachment) =>
      _$this._transitGatewayPeeringAttachment = transitGatewayPeeringAttachment;

  AcceptTransitGatewayPeeringAttachmentResultBuilder();

  AcceptTransitGatewayPeeringAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPeeringAttachment =
          $v.transitGatewayPeeringAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayPeeringAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayPeeringAttachmentResult;
  }

  @override
  void update(
      void Function(AcceptTransitGatewayPeeringAttachmentResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayPeeringAttachmentResult build() => _build();

  _$AcceptTransitGatewayPeeringAttachmentResult _build() {
    _$AcceptTransitGatewayPeeringAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptTransitGatewayPeeringAttachmentResult._(
              transitGatewayPeeringAttachment:
                  _transitGatewayPeeringAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPeeringAttachment';
        _transitGatewayPeeringAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptTransitGatewayPeeringAttachmentResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
