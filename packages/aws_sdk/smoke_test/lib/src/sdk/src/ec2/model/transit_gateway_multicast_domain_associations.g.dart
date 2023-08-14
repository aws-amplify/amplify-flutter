// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_domain_associations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDomainAssociations
    extends TransitGatewayMulticastDomainAssociations {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? resourceOwnerId;
  @override
  final _i2.BuiltList<SubnetAssociation>? subnets;

  factory _$TransitGatewayMulticastDomainAssociations(
          [void Function(TransitGatewayMulticastDomainAssociationsBuilder)?
              updates]) =>
      (new TransitGatewayMulticastDomainAssociationsBuilder()..update(updates))
          ._build();

  _$TransitGatewayMulticastDomainAssociations._(
      {this.transitGatewayMulticastDomainId,
      this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.resourceOwnerId,
      this.subnets})
      : super._();

  @override
  TransitGatewayMulticastDomainAssociations rebuild(
          void Function(TransitGatewayMulticastDomainAssociationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDomainAssociationsBuilder toBuilder() =>
      new TransitGatewayMulticastDomainAssociationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDomainAssociations &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceOwnerId == other.resourceOwnerId &&
        subnets == other.subnets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, subnets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastDomainAssociationsBuilder
    implements
        Builder<TransitGatewayMulticastDomainAssociations,
            TransitGatewayMulticastDomainAssociationsBuilder> {
  _$TransitGatewayMulticastDomainAssociations? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

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

  String? _resourceOwnerId;
  String? get resourceOwnerId => _$this._resourceOwnerId;
  set resourceOwnerId(String? resourceOwnerId) =>
      _$this._resourceOwnerId = resourceOwnerId;

  _i2.ListBuilder<SubnetAssociation>? _subnets;
  _i2.ListBuilder<SubnetAssociation> get subnets =>
      _$this._subnets ??= new _i2.ListBuilder<SubnetAssociation>();
  set subnets(_i2.ListBuilder<SubnetAssociation>? subnets) =>
      _$this._subnets = subnets;

  TransitGatewayMulticastDomainAssociationsBuilder();

  TransitGatewayMulticastDomainAssociationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceOwnerId = $v.resourceOwnerId;
      _subnets = $v.subnets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastDomainAssociations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDomainAssociations;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastDomainAssociationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDomainAssociations build() => _build();

  _$TransitGatewayMulticastDomainAssociations _build() {
    _$TransitGatewayMulticastDomainAssociations _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastDomainAssociations._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              resourceId: resourceId,
              resourceType: resourceType,
              resourceOwnerId: resourceOwnerId,
              subnets: _subnets?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnets';
        _subnets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayMulticastDomainAssociations',
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
