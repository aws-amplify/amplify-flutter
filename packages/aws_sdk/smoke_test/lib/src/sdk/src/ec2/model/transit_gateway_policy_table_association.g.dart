// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_policy_table_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPolicyTableAssociation
    extends TransitGatewayPolicyTableAssociation {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final TransitGatewayAssociationState? state;

  factory _$TransitGatewayPolicyTableAssociation(
          [void Function(TransitGatewayPolicyTableAssociationBuilder)?
              updates]) =>
      (new TransitGatewayPolicyTableAssociationBuilder()..update(updates))
          ._build();

  _$TransitGatewayPolicyTableAssociation._(
      {this.transitGatewayPolicyTableId,
      this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.state})
      : super._();

  @override
  TransitGatewayPolicyTableAssociation rebuild(
          void Function(TransitGatewayPolicyTableAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPolicyTableAssociationBuilder toBuilder() =>
      new TransitGatewayPolicyTableAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPolicyTableAssociation &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPolicyTableAssociationBuilder
    implements
        Builder<TransitGatewayPolicyTableAssociation,
            TransitGatewayPolicyTableAssociationBuilder> {
  _$TransitGatewayPolicyTableAssociation? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

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

  TransitGatewayPolicyTableAssociationBuilder();

  TransitGatewayPolicyTableAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPolicyTableAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPolicyTableAssociation;
  }

  @override
  void update(
      void Function(TransitGatewayPolicyTableAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPolicyTableAssociation build() => _build();

  _$TransitGatewayPolicyTableAssociation _build() {
    final _$result = _$v ??
        new _$TransitGatewayPolicyTableAssociation._(
            transitGatewayPolicyTableId: transitGatewayPolicyTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            resourceId: resourceId,
            resourceType: resourceType,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
