// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_table_propagation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteTablePropagation
    extends TransitGatewayRouteTablePropagation {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final TransitGatewayPropagationState? state;
  @override
  final String? transitGatewayRouteTableAnnouncementId;

  factory _$TransitGatewayRouteTablePropagation(
          [void Function(TransitGatewayRouteTablePropagationBuilder)?
              updates]) =>
      (new TransitGatewayRouteTablePropagationBuilder()..update(updates))
          ._build();

  _$TransitGatewayRouteTablePropagation._(
      {this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.state,
      this.transitGatewayRouteTableAnnouncementId})
      : super._();

  @override
  TransitGatewayRouteTablePropagation rebuild(
          void Function(TransitGatewayRouteTablePropagationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteTablePropagationBuilder toBuilder() =>
      new TransitGatewayRouteTablePropagationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteTablePropagation &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        state == other.state &&
        transitGatewayRouteTableAnnouncementId ==
            other.transitGatewayRouteTableAnnouncementId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteTablePropagationBuilder
    implements
        Builder<TransitGatewayRouteTablePropagation,
            TransitGatewayRouteTablePropagationBuilder> {
  _$TransitGatewayRouteTablePropagation? _$v;

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

  TransitGatewayPropagationState? _state;
  TransitGatewayPropagationState? get state => _$this._state;
  set state(TransitGatewayPropagationState? state) => _$this._state = state;

  String? _transitGatewayRouteTableAnnouncementId;
  String? get transitGatewayRouteTableAnnouncementId =>
      _$this._transitGatewayRouteTableAnnouncementId;
  set transitGatewayRouteTableAnnouncementId(
          String? transitGatewayRouteTableAnnouncementId) =>
      _$this._transitGatewayRouteTableAnnouncementId =
          transitGatewayRouteTableAnnouncementId;

  TransitGatewayRouteTablePropagationBuilder();

  TransitGatewayRouteTablePropagationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _state = $v.state;
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteTablePropagation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteTablePropagation;
  }

  @override
  void update(
      void Function(TransitGatewayRouteTablePropagationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteTablePropagation build() => _build();

  _$TransitGatewayRouteTablePropagation _build() {
    final _$result = _$v ??
        new _$TransitGatewayRouteTablePropagation._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceId: resourceId,
            resourceType: resourceType,
            state: state,
            transitGatewayRouteTableAnnouncementId:
                transitGatewayRouteTableAnnouncementId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
