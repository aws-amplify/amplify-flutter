// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_propagation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPropagation extends TransitGatewayPropagation {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? transitGatewayRouteTableId;
  @override
  final TransitGatewayPropagationState? state;
  @override
  final String? transitGatewayRouteTableAnnouncementId;

  factory _$TransitGatewayPropagation(
          [void Function(TransitGatewayPropagationBuilder)? updates]) =>
      (new TransitGatewayPropagationBuilder()..update(updates))._build();

  _$TransitGatewayPropagation._(
      {this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.transitGatewayRouteTableId,
      this.state,
      this.transitGatewayRouteTableAnnouncementId})
      : super._();

  @override
  TransitGatewayPropagation rebuild(
          void Function(TransitGatewayPropagationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPropagationBuilder toBuilder() =>
      new TransitGatewayPropagationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPropagation &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
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
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncementId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPropagationBuilder
    implements
        Builder<TransitGatewayPropagation, TransitGatewayPropagationBuilder> {
  _$TransitGatewayPropagation? _$v;

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

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

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

  TransitGatewayPropagationBuilder();

  TransitGatewayPropagationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _state = $v.state;
      _transitGatewayRouteTableAnnouncementId =
          $v.transitGatewayRouteTableAnnouncementId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPropagation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPropagation;
  }

  @override
  void update(void Function(TransitGatewayPropagationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPropagation build() => _build();

  _$TransitGatewayPropagation _build() {
    final _$result = _$v ??
        new _$TransitGatewayPropagation._(
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceId: resourceId,
            resourceType: resourceType,
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            state: state,
            transitGatewayRouteTableAnnouncementId:
                transitGatewayRouteTableAnnouncementId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
