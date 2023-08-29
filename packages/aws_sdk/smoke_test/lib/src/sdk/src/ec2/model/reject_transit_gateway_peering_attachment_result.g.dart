// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_transit_gateway_peering_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectTransitGatewayPeeringAttachmentResult
    extends RejectTransitGatewayPeeringAttachmentResult {
  @override
  final TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment;

  factory _$RejectTransitGatewayPeeringAttachmentResult(
          [void Function(RejectTransitGatewayPeeringAttachmentResultBuilder)?
              updates]) =>
      (new RejectTransitGatewayPeeringAttachmentResultBuilder()
            ..update(updates))
          ._build();

  _$RejectTransitGatewayPeeringAttachmentResult._(
      {this.transitGatewayPeeringAttachment})
      : super._();

  @override
  RejectTransitGatewayPeeringAttachmentResult rebuild(
          void Function(RejectTransitGatewayPeeringAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectTransitGatewayPeeringAttachmentResultBuilder toBuilder() =>
      new RejectTransitGatewayPeeringAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectTransitGatewayPeeringAttachmentResult &&
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

class RejectTransitGatewayPeeringAttachmentResultBuilder
    implements
        Builder<RejectTransitGatewayPeeringAttachmentResult,
            RejectTransitGatewayPeeringAttachmentResultBuilder> {
  _$RejectTransitGatewayPeeringAttachmentResult? _$v;

  TransitGatewayPeeringAttachmentBuilder? _transitGatewayPeeringAttachment;
  TransitGatewayPeeringAttachmentBuilder get transitGatewayPeeringAttachment =>
      _$this._transitGatewayPeeringAttachment ??=
          new TransitGatewayPeeringAttachmentBuilder();
  set transitGatewayPeeringAttachment(
          TransitGatewayPeeringAttachmentBuilder?
              transitGatewayPeeringAttachment) =>
      _$this._transitGatewayPeeringAttachment = transitGatewayPeeringAttachment;

  RejectTransitGatewayPeeringAttachmentResultBuilder();

  RejectTransitGatewayPeeringAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPeeringAttachment =
          $v.transitGatewayPeeringAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectTransitGatewayPeeringAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectTransitGatewayPeeringAttachmentResult;
  }

  @override
  void update(
      void Function(RejectTransitGatewayPeeringAttachmentResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectTransitGatewayPeeringAttachmentResult build() => _build();

  _$RejectTransitGatewayPeeringAttachmentResult _build() {
    _$RejectTransitGatewayPeeringAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$RejectTransitGatewayPeeringAttachmentResult._(
              transitGatewayPeeringAttachment:
                  _transitGatewayPeeringAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPeeringAttachment';
        _transitGatewayPeeringAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RejectTransitGatewayPeeringAttachmentResult',
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
