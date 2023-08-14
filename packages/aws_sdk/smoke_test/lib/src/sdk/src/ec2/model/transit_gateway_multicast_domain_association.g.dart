// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_domain_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDomainAssociation
    extends TransitGatewayMulticastDomainAssociation {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? resourceOwnerId;
  @override
  final SubnetAssociation? subnet;

  factory _$TransitGatewayMulticastDomainAssociation(
          [void Function(TransitGatewayMulticastDomainAssociationBuilder)?
              updates]) =>
      (new TransitGatewayMulticastDomainAssociationBuilder()..update(updates))
          ._build();

  _$TransitGatewayMulticastDomainAssociation._(
      {this.transitGatewayAttachmentId,
      this.resourceId,
      this.resourceType,
      this.resourceOwnerId,
      this.subnet})
      : super._();

  @override
  TransitGatewayMulticastDomainAssociation rebuild(
          void Function(TransitGatewayMulticastDomainAssociationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDomainAssociationBuilder toBuilder() =>
      new TransitGatewayMulticastDomainAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDomainAssociation &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceOwnerId == other.resourceOwnerId &&
        subnet == other.subnet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastDomainAssociationBuilder
    implements
        Builder<TransitGatewayMulticastDomainAssociation,
            TransitGatewayMulticastDomainAssociationBuilder> {
  _$TransitGatewayMulticastDomainAssociation? _$v;

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

  SubnetAssociationBuilder? _subnet;
  SubnetAssociationBuilder get subnet =>
      _$this._subnet ??= new SubnetAssociationBuilder();
  set subnet(SubnetAssociationBuilder? subnet) => _$this._subnet = subnet;

  TransitGatewayMulticastDomainAssociationBuilder();

  TransitGatewayMulticastDomainAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceOwnerId = $v.resourceOwnerId;
      _subnet = $v.subnet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastDomainAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDomainAssociation;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastDomainAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDomainAssociation build() => _build();

  _$TransitGatewayMulticastDomainAssociation _build() {
    _$TransitGatewayMulticastDomainAssociation _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastDomainAssociation._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              resourceId: resourceId,
              resourceType: resourceType,
              resourceOwnerId: resourceOwnerId,
              subnet: _subnet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnet';
        _subnet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayMulticastDomainAssociation',
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
