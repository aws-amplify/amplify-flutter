// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_transit_gateway_vpc_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptTransitGatewayVpcAttachmentResult
    extends AcceptTransitGatewayVpcAttachmentResult {
  @override
  final TransitGatewayVpcAttachment? transitGatewayVpcAttachment;

  factory _$AcceptTransitGatewayVpcAttachmentResult(
          [void Function(AcceptTransitGatewayVpcAttachmentResultBuilder)?
              updates]) =>
      (new AcceptTransitGatewayVpcAttachmentResultBuilder()..update(updates))
          ._build();

  _$AcceptTransitGatewayVpcAttachmentResult._(
      {this.transitGatewayVpcAttachment})
      : super._();

  @override
  AcceptTransitGatewayVpcAttachmentResult rebuild(
          void Function(AcceptTransitGatewayVpcAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptTransitGatewayVpcAttachmentResultBuilder toBuilder() =>
      new AcceptTransitGatewayVpcAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptTransitGatewayVpcAttachmentResult &&
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

class AcceptTransitGatewayVpcAttachmentResultBuilder
    implements
        Builder<AcceptTransitGatewayVpcAttachmentResult,
            AcceptTransitGatewayVpcAttachmentResultBuilder> {
  _$AcceptTransitGatewayVpcAttachmentResult? _$v;

  TransitGatewayVpcAttachmentBuilder? _transitGatewayVpcAttachment;
  TransitGatewayVpcAttachmentBuilder get transitGatewayVpcAttachment =>
      _$this._transitGatewayVpcAttachment ??=
          new TransitGatewayVpcAttachmentBuilder();
  set transitGatewayVpcAttachment(
          TransitGatewayVpcAttachmentBuilder? transitGatewayVpcAttachment) =>
      _$this._transitGatewayVpcAttachment = transitGatewayVpcAttachment;

  AcceptTransitGatewayVpcAttachmentResultBuilder();

  AcceptTransitGatewayVpcAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachment =
          $v.transitGatewayVpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptTransitGatewayVpcAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptTransitGatewayVpcAttachmentResult;
  }

  @override
  void update(
      void Function(AcceptTransitGatewayVpcAttachmentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptTransitGatewayVpcAttachmentResult build() => _build();

  _$AcceptTransitGatewayVpcAttachmentResult _build() {
    _$AcceptTransitGatewayVpcAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptTransitGatewayVpcAttachmentResult._(
              transitGatewayVpcAttachment:
                  _transitGatewayVpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachment';
        _transitGatewayVpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptTransitGatewayVpcAttachmentResult',
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
