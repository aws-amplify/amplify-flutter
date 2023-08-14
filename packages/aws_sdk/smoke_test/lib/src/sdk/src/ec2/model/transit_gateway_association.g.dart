// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayAssociation extends TransitGatewayAssociation {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final TransitGatewayAssociationState? state;

  factory _$TransitGatewayAssociation(
          [void Function(TransitGatewayAssociationBuilder)? updates]) =>
      (new TransitGatewayAssociationBuilder()..update(updates))._build();

  _$TransitGatewayAssociation._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.state})
      : super._();

  @override
  TransitGatewayAssociation rebuild(
          void Function(TransitGatewayAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayAssociationBuilder toBuilder() =>
      new TransitGatewayAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayAssociation &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayAssociationBuilder
    implements
        Builder<TransitGatewayAssociation, TransitGatewayAssociationBuilder> {
  _$TransitGatewayAssociation? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

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

  TransitGatewayAssociationBuilder();

  TransitGatewayAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayAssociation;
  }

  @override
  void update(void Function(TransitGatewayAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayAssociation build() => _build();

  _$TransitGatewayAssociation _build() {
    final _$result = _$v ??
        new _$TransitGatewayAssociation._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceId: resourceId,
            resourceType: resourceType,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
