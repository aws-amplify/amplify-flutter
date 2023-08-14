// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_prefix_list_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPrefixListAttachment
    extends TransitGatewayPrefixListAttachment {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? resourceId;

  factory _$TransitGatewayPrefixListAttachment(
          [void Function(TransitGatewayPrefixListAttachmentBuilder)?
              updates]) =>
      (new TransitGatewayPrefixListAttachmentBuilder()..update(updates))
          ._build();

  _$TransitGatewayPrefixListAttachment._(
      {this.transitGatewayAttachmentId, this.resourceType, this.resourceId})
      : super._();

  @override
  TransitGatewayPrefixListAttachment rebuild(
          void Function(TransitGatewayPrefixListAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPrefixListAttachmentBuilder toBuilder() =>
      new TransitGatewayPrefixListAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPrefixListAttachment &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPrefixListAttachmentBuilder
    implements
        Builder<TransitGatewayPrefixListAttachment,
            TransitGatewayPrefixListAttachmentBuilder> {
  _$TransitGatewayPrefixListAttachment? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  TransitGatewayAttachmentResourceType? _resourceType;
  TransitGatewayAttachmentResourceType? get resourceType =>
      _$this._resourceType;
  set resourceType(TransitGatewayAttachmentResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  TransitGatewayPrefixListAttachmentBuilder();

  TransitGatewayPrefixListAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPrefixListAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPrefixListAttachment;
  }

  @override
  void update(
      void Function(TransitGatewayPrefixListAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPrefixListAttachment build() => _build();

  _$TransitGatewayPrefixListAttachment _build() {
    final _$result = _$v ??
        new _$TransitGatewayPrefixListAttachment._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceType: resourceType,
            resourceId: resourceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
