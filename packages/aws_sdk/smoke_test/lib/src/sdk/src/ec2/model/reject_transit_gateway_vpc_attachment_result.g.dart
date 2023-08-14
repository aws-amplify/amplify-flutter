// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_transit_gateway_vpc_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectTransitGatewayVpcAttachmentResult
    extends RejectTransitGatewayVpcAttachmentResult {
  @override
  final TransitGatewayVpcAttachment? transitGatewayVpcAttachment;

  factory _$RejectTransitGatewayVpcAttachmentResult(
          [void Function(RejectTransitGatewayVpcAttachmentResultBuilder)?
              updates]) =>
      (new RejectTransitGatewayVpcAttachmentResultBuilder()..update(updates))
          ._build();

  _$RejectTransitGatewayVpcAttachmentResult._(
      {this.transitGatewayVpcAttachment})
      : super._();

  @override
  RejectTransitGatewayVpcAttachmentResult rebuild(
          void Function(RejectTransitGatewayVpcAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectTransitGatewayVpcAttachmentResultBuilder toBuilder() =>
      new RejectTransitGatewayVpcAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectTransitGatewayVpcAttachmentResult &&
        transitGatewayVpcAttachment == other.transitGatewayVpcAttachment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayVpcAttachment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RejectTransitGatewayVpcAttachmentResultBuilder
    implements
        Builder<RejectTransitGatewayVpcAttachmentResult,
            RejectTransitGatewayVpcAttachmentResultBuilder> {
  _$RejectTransitGatewayVpcAttachmentResult? _$v;

  TransitGatewayVpcAttachmentBuilder? _transitGatewayVpcAttachment;
  TransitGatewayVpcAttachmentBuilder get transitGatewayVpcAttachment =>
      _$this._transitGatewayVpcAttachment ??=
          new TransitGatewayVpcAttachmentBuilder();
  set transitGatewayVpcAttachment(
          TransitGatewayVpcAttachmentBuilder? transitGatewayVpcAttachment) =>
      _$this._transitGatewayVpcAttachment = transitGatewayVpcAttachment;

  RejectTransitGatewayVpcAttachmentResultBuilder();

  RejectTransitGatewayVpcAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachment =
          $v.transitGatewayVpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectTransitGatewayVpcAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectTransitGatewayVpcAttachmentResult;
  }

  @override
  void update(
      void Function(RejectTransitGatewayVpcAttachmentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectTransitGatewayVpcAttachmentResult build() => _build();

  _$RejectTransitGatewayVpcAttachmentResult _build() {
    _$RejectTransitGatewayVpcAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$RejectTransitGatewayVpcAttachmentResult._(
              transitGatewayVpcAttachment:
                  _transitGatewayVpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachment';
        _transitGatewayVpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RejectTransitGatewayVpcAttachmentResult',
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
