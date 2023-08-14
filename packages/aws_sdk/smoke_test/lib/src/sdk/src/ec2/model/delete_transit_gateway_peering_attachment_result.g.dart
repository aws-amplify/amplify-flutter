// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_peering_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPeeringAttachmentResult
    extends DeleteTransitGatewayPeeringAttachmentResult {
  @override
  final TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment;

  factory _$DeleteTransitGatewayPeeringAttachmentResult(
          [void Function(DeleteTransitGatewayPeeringAttachmentResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPeeringAttachmentResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayPeeringAttachmentResult._(
      {this.transitGatewayPeeringAttachment})
      : super._();

  @override
  DeleteTransitGatewayPeeringAttachmentResult rebuild(
          void Function(DeleteTransitGatewayPeeringAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPeeringAttachmentResultBuilder toBuilder() =>
      new DeleteTransitGatewayPeeringAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPeeringAttachmentResult &&
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

class DeleteTransitGatewayPeeringAttachmentResultBuilder
    implements
        Builder<DeleteTransitGatewayPeeringAttachmentResult,
            DeleteTransitGatewayPeeringAttachmentResultBuilder> {
  _$DeleteTransitGatewayPeeringAttachmentResult? _$v;

  TransitGatewayPeeringAttachmentBuilder? _transitGatewayPeeringAttachment;
  TransitGatewayPeeringAttachmentBuilder get transitGatewayPeeringAttachment =>
      _$this._transitGatewayPeeringAttachment ??=
          new TransitGatewayPeeringAttachmentBuilder();
  set transitGatewayPeeringAttachment(
          TransitGatewayPeeringAttachmentBuilder?
              transitGatewayPeeringAttachment) =>
      _$this._transitGatewayPeeringAttachment = transitGatewayPeeringAttachment;

  DeleteTransitGatewayPeeringAttachmentResultBuilder();

  DeleteTransitGatewayPeeringAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPeeringAttachment =
          $v.transitGatewayPeeringAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPeeringAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPeeringAttachmentResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPeeringAttachmentResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPeeringAttachmentResult build() => _build();

  _$DeleteTransitGatewayPeeringAttachmentResult _build() {
    _$DeleteTransitGatewayPeeringAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayPeeringAttachmentResult._(
              transitGatewayPeeringAttachment:
                  _transitGatewayPeeringAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPeeringAttachment';
        _transitGatewayPeeringAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayPeeringAttachmentResult',
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
