// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteAttachment extends TransitGatewayRouteAttachment {
  @override
  final String? resourceId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;

  factory _$TransitGatewayRouteAttachment(
          [void Function(TransitGatewayRouteAttachmentBuilder)? updates]) =>
      (new TransitGatewayRouteAttachmentBuilder()..update(updates))._build();

  _$TransitGatewayRouteAttachment._(
      {this.resourceId, this.transitGatewayAttachmentId, this.resourceType})
      : super._();

  @override
  TransitGatewayRouteAttachment rebuild(
          void Function(TransitGatewayRouteAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteAttachmentBuilder toBuilder() =>
      new TransitGatewayRouteAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteAttachment &&
        resourceId == other.resourceId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteAttachmentBuilder
    implements
        Builder<TransitGatewayRouteAttachment,
            TransitGatewayRouteAttachmentBuilder> {
  _$TransitGatewayRouteAttachment? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  TransitGatewayAttachmentResourceType? _resourceType;
  TransitGatewayAttachmentResourceType? get resourceType =>
      _$this._resourceType;
  set resourceType(TransitGatewayAttachmentResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  TransitGatewayRouteAttachmentBuilder();

  TransitGatewayRouteAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteAttachment;
  }

  @override
  void update(void Function(TransitGatewayRouteAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteAttachment build() => _build();

  _$TransitGatewayRouteAttachment _build() {
    final _$result = _$v ??
        new _$TransitGatewayRouteAttachment._(
            resourceId: resourceId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
