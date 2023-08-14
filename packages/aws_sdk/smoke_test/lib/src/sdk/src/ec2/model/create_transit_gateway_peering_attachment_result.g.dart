// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_peering_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPeeringAttachmentResult
    extends CreateTransitGatewayPeeringAttachmentResult {
  @override
  final TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment;

  factory _$CreateTransitGatewayPeeringAttachmentResult(
          [void Function(CreateTransitGatewayPeeringAttachmentResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayPeeringAttachmentResultBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayPeeringAttachmentResult._(
      {this.transitGatewayPeeringAttachment})
      : super._();

  @override
  CreateTransitGatewayPeeringAttachmentResult rebuild(
          void Function(CreateTransitGatewayPeeringAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPeeringAttachmentResultBuilder toBuilder() =>
      new CreateTransitGatewayPeeringAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPeeringAttachmentResult &&
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

class CreateTransitGatewayPeeringAttachmentResultBuilder
    implements
        Builder<CreateTransitGatewayPeeringAttachmentResult,
            CreateTransitGatewayPeeringAttachmentResultBuilder> {
  _$CreateTransitGatewayPeeringAttachmentResult? _$v;

  TransitGatewayPeeringAttachmentBuilder? _transitGatewayPeeringAttachment;
  TransitGatewayPeeringAttachmentBuilder get transitGatewayPeeringAttachment =>
      _$this._transitGatewayPeeringAttachment ??=
          new TransitGatewayPeeringAttachmentBuilder();
  set transitGatewayPeeringAttachment(
          TransitGatewayPeeringAttachmentBuilder?
              transitGatewayPeeringAttachment) =>
      _$this._transitGatewayPeeringAttachment = transitGatewayPeeringAttachment;

  CreateTransitGatewayPeeringAttachmentResultBuilder();

  CreateTransitGatewayPeeringAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPeeringAttachment =
          $v.transitGatewayPeeringAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPeeringAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPeeringAttachmentResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPeeringAttachmentResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPeeringAttachmentResult build() => _build();

  _$CreateTransitGatewayPeeringAttachmentResult _build() {
    _$CreateTransitGatewayPeeringAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayPeeringAttachmentResult._(
              transitGatewayPeeringAttachment:
                  _transitGatewayPeeringAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPeeringAttachment';
        _transitGatewayPeeringAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayPeeringAttachmentResult',
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
