// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastGroup extends TransitGatewayMulticastGroup {
  @override
  final String? groupIpAddress;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? subnetId;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? resourceOwnerId;
  @override
  final String? networkInterfaceId;
  @override
  final bool groupMember;
  @override
  final bool groupSource;
  @override
  final MembershipType? memberType;
  @override
  final MembershipType? sourceType;

  factory _$TransitGatewayMulticastGroup(
          [void Function(TransitGatewayMulticastGroupBuilder)? updates]) =>
      (new TransitGatewayMulticastGroupBuilder()..update(updates))._build();

  _$TransitGatewayMulticastGroup._(
      {this.groupIpAddress,
      this.transitGatewayAttachmentId,
      this.subnetId,
      this.resourceId,
      this.resourceType,
      this.resourceOwnerId,
      this.networkInterfaceId,
      required this.groupMember,
      required this.groupSource,
      this.memberType,
      this.sourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupMember, r'TransitGatewayMulticastGroup', 'groupMember');
    BuiltValueNullFieldError.checkNotNull(
        groupSource, r'TransitGatewayMulticastGroup', 'groupSource');
  }

  @override
  TransitGatewayMulticastGroup rebuild(
          void Function(TransitGatewayMulticastGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastGroupBuilder toBuilder() =>
      new TransitGatewayMulticastGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastGroup &&
        groupIpAddress == other.groupIpAddress &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        subnetId == other.subnetId &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceOwnerId == other.resourceOwnerId &&
        networkInterfaceId == other.networkInterfaceId &&
        groupMember == other.groupMember &&
        groupSource == other.groupSource &&
        memberType == other.memberType &&
        sourceType == other.sourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupIpAddress.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, groupMember.hashCode);
    _$hash = $jc(_$hash, groupSource.hashCode);
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastGroupBuilder
    implements
        Builder<TransitGatewayMulticastGroup,
            TransitGatewayMulticastGroupBuilder> {
  _$TransitGatewayMulticastGroup? _$v;

  String? _groupIpAddress;
  String? get groupIpAddress => _$this._groupIpAddress;
  set groupIpAddress(String? groupIpAddress) =>
      _$this._groupIpAddress = groupIpAddress;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

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

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  bool? _groupMember;
  bool? get groupMember => _$this._groupMember;
  set groupMember(bool? groupMember) => _$this._groupMember = groupMember;

  bool? _groupSource;
  bool? get groupSource => _$this._groupSource;
  set groupSource(bool? groupSource) => _$this._groupSource = groupSource;

  MembershipType? _memberType;
  MembershipType? get memberType => _$this._memberType;
  set memberType(MembershipType? memberType) => _$this._memberType = memberType;

  MembershipType? _sourceType;
  MembershipType? get sourceType => _$this._sourceType;
  set sourceType(MembershipType? sourceType) => _$this._sourceType = sourceType;

  TransitGatewayMulticastGroupBuilder() {
    TransitGatewayMulticastGroup._init(this);
  }

  TransitGatewayMulticastGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupIpAddress = $v.groupIpAddress;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _subnetId = $v.subnetId;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceOwnerId = $v.resourceOwnerId;
      _networkInterfaceId = $v.networkInterfaceId;
      _groupMember = $v.groupMember;
      _groupSource = $v.groupSource;
      _memberType = $v.memberType;
      _sourceType = $v.sourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastGroup;
  }

  @override
  void update(void Function(TransitGatewayMulticastGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastGroup build() => _build();

  _$TransitGatewayMulticastGroup _build() {
    final _$result = _$v ??
        new _$TransitGatewayMulticastGroup._(
            groupIpAddress: groupIpAddress,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            subnetId: subnetId,
            resourceId: resourceId,
            resourceType: resourceType,
            resourceOwnerId: resourceOwnerId,
            networkInterfaceId: networkInterfaceId,
            groupMember: BuiltValueNullFieldError.checkNotNull(
                groupMember, r'TransitGatewayMulticastGroup', 'groupMember'),
            groupSource: BuiltValueNullFieldError.checkNotNull(
                groupSource, r'TransitGatewayMulticastGroup', 'groupSource'),
            memberType: memberType,
            sourceType: sourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
