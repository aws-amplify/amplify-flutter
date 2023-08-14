// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_table_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteTableAssociation
    extends TransitGatewayRouteTableAssociation {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final TransitGatewayAssociationState? state;

  factory _$TransitGatewayRouteTableAssociation(
          [void Function(TransitGatewayRouteTableAssociationBuilder)?
              updates]) =>
      (new TransitGatewayRouteTableAssociationBuilder()..update(updates))
          ._build();

  _$TransitGatewayRouteTableAssociation._(
      {this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.state})
      : super._();

  @override
  TransitGatewayRouteTableAssociation rebuild(
          void Function(TransitGatewayRouteTableAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteTableAssociationBuilder toBuilder() =>
      new TransitGatewayRouteTableAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteTableAssociation &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteTableAssociationBuilder
    implements
        Builder<TransitGatewayRouteTableAssociation,
            TransitGatewayRouteTableAssociationBuilder> {
  _$TransitGatewayRouteTableAssociation? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  TransitGatewayAttachmentResourceType? _resourceType;
  TransitGatewayAttachmentResourceType? get resourceType =>
      _$this._resourceType;
  set resourceType(TransitGatewayAttachmentResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  TransitGatewayAssociationState? _state;
  TransitGatewayAssociationState? get state => _$this._state;
  set state(TransitGatewayAssociationState? state) => _$this._state = state;

  TransitGatewayRouteTableAssociationBuilder();

  TransitGatewayRouteTableAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteTableAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteTableAssociation;
  }

  @override
  void update(
      void Function(TransitGatewayRouteTableAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteTableAssociation build() => _build();

  _$TransitGatewayRouteTableAssociation _build() {
    final _$result = _$v ??
        new _$TransitGatewayRouteTableAssociation._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceId: resourceId,
            resourceType: resourceType,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
