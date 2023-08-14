// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_vpc_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayVpcAttachmentResult
    extends DeleteTransitGatewayVpcAttachmentResult {
  @override
  final TransitGatewayVpcAttachment? transitGatewayVpcAttachment;

  factory _$DeleteTransitGatewayVpcAttachmentResult(
          [void Function(DeleteTransitGatewayVpcAttachmentResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayVpcAttachmentResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayVpcAttachmentResult._(
      {this.transitGatewayVpcAttachment})
      : super._();

  @override
  DeleteTransitGatewayVpcAttachmentResult rebuild(
          void Function(DeleteTransitGatewayVpcAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayVpcAttachmentResultBuilder toBuilder() =>
      new DeleteTransitGatewayVpcAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayVpcAttachmentResult &&
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

class DeleteTransitGatewayVpcAttachmentResultBuilder
    implements
        Builder<DeleteTransitGatewayVpcAttachmentResult,
            DeleteTransitGatewayVpcAttachmentResultBuilder> {
  _$DeleteTransitGatewayVpcAttachmentResult? _$v;

  TransitGatewayVpcAttachmentBuilder? _transitGatewayVpcAttachment;
  TransitGatewayVpcAttachmentBuilder get transitGatewayVpcAttachment =>
      _$this._transitGatewayVpcAttachment ??=
          new TransitGatewayVpcAttachmentBuilder();
  set transitGatewayVpcAttachment(
          TransitGatewayVpcAttachmentBuilder? transitGatewayVpcAttachment) =>
      _$this._transitGatewayVpcAttachment = transitGatewayVpcAttachment;

  DeleteTransitGatewayVpcAttachmentResultBuilder();

  DeleteTransitGatewayVpcAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachment =
          $v.transitGatewayVpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayVpcAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayVpcAttachmentResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayVpcAttachmentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayVpcAttachmentResult build() => _build();

  _$DeleteTransitGatewayVpcAttachmentResult _build() {
    _$DeleteTransitGatewayVpcAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayVpcAttachmentResult._(
              transitGatewayVpcAttachment:
                  _transitGatewayVpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachment';
        _transitGatewayVpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayVpcAttachmentResult',
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
