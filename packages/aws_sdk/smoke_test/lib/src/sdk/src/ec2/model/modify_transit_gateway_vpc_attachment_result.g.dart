// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_transit_gateway_vpc_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayVpcAttachmentResult
    extends ModifyTransitGatewayVpcAttachmentResult {
  @override
  final TransitGatewayVpcAttachment? transitGatewayVpcAttachment;

  factory _$ModifyTransitGatewayVpcAttachmentResult(
          [void Function(ModifyTransitGatewayVpcAttachmentResultBuilder)?
              updates]) =>
      (new ModifyTransitGatewayVpcAttachmentResultBuilder()..update(updates))
          ._build();

  _$ModifyTransitGatewayVpcAttachmentResult._(
      {this.transitGatewayVpcAttachment})
      : super._();

  @override
  ModifyTransitGatewayVpcAttachmentResult rebuild(
          void Function(ModifyTransitGatewayVpcAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayVpcAttachmentResultBuilder toBuilder() =>
      new ModifyTransitGatewayVpcAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayVpcAttachmentResult &&
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

class ModifyTransitGatewayVpcAttachmentResultBuilder
    implements
        Builder<ModifyTransitGatewayVpcAttachmentResult,
            ModifyTransitGatewayVpcAttachmentResultBuilder> {
  _$ModifyTransitGatewayVpcAttachmentResult? _$v;

  TransitGatewayVpcAttachmentBuilder? _transitGatewayVpcAttachment;
  TransitGatewayVpcAttachmentBuilder get transitGatewayVpcAttachment =>
      _$this._transitGatewayVpcAttachment ??=
          new TransitGatewayVpcAttachmentBuilder();
  set transitGatewayVpcAttachment(
          TransitGatewayVpcAttachmentBuilder? transitGatewayVpcAttachment) =>
      _$this._transitGatewayVpcAttachment = transitGatewayVpcAttachment;

  ModifyTransitGatewayVpcAttachmentResultBuilder();

  ModifyTransitGatewayVpcAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachment =
          $v.transitGatewayVpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayVpcAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayVpcAttachmentResult;
  }

  @override
  void update(
      void Function(ModifyTransitGatewayVpcAttachmentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayVpcAttachmentResult build() => _build();

  _$ModifyTransitGatewayVpcAttachmentResult _build() {
    _$ModifyTransitGatewayVpcAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayVpcAttachmentResult._(
              transitGatewayVpcAttachment:
                  _transitGatewayVpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachment';
        _transitGatewayVpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayVpcAttachmentResult',
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
