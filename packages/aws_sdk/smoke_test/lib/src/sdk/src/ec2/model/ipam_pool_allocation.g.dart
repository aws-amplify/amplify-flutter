// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_pool_allocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamPoolAllocation extends IpamPoolAllocation {
  @override
  final String? cidr;
  @override
  final String? ipamPoolAllocationId;
  @override
  final String? description;
  @override
  final String? resourceId;
  @override
  final IpamPoolAllocationResourceType? resourceType;
  @override
  final String? resourceRegion;
  @override
  final String? resourceOwner;

  factory _$IpamPoolAllocation(
          [void Function(IpamPoolAllocationBuilder)? updates]) =>
      (new IpamPoolAllocationBuilder()..update(updates))._build();

  _$IpamPoolAllocation._(
      {this.cidr,
      this.ipamPoolAllocationId,
      this.description,
      this.resourceId,
      this.resourceType,
      this.resourceRegion,
      this.resourceOwner})
      : super._();

  @override
  IpamPoolAllocation rebuild(
          void Function(IpamPoolAllocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamPoolAllocationBuilder toBuilder() =>
      new IpamPoolAllocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamPoolAllocation &&
        cidr == other.cidr &&
        ipamPoolAllocationId == other.ipamPoolAllocationId &&
        description == other.description &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceRegion == other.resourceRegion &&
        resourceOwner == other.resourceOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, ipamPoolAllocationId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, resourceOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamPoolAllocationBuilder
    implements Builder<IpamPoolAllocation, IpamPoolAllocationBuilder> {
  _$IpamPoolAllocation? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _ipamPoolAllocationId;
  String? get ipamPoolAllocationId => _$this._ipamPoolAllocationId;
  set ipamPoolAllocationId(String? ipamPoolAllocationId) =>
      _$this._ipamPoolAllocationId = ipamPoolAllocationId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  IpamPoolAllocationResourceType? _resourceType;
  IpamPoolAllocationResourceType? get resourceType => _$this._resourceType;
  set resourceType(IpamPoolAllocationResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  String? _resourceOwner;
  String? get resourceOwner => _$this._resourceOwner;
  set resourceOwner(String? resourceOwner) =>
      _$this._resourceOwner = resourceOwner;

  IpamPoolAllocationBuilder();

  IpamPoolAllocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _ipamPoolAllocationId = $v.ipamPoolAllocationId;
      _description = $v.description;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceRegion = $v.resourceRegion;
      _resourceOwner = $v.resourceOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamPoolAllocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamPoolAllocation;
  }

  @override
  void update(void Function(IpamPoolAllocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamPoolAllocation build() => _build();

  _$IpamPoolAllocation _build() {
    final _$result = _$v ??
        new _$IpamPoolAllocation._(
            cidr: cidr,
            ipamPoolAllocationId: ipamPoolAllocationId,
            description: description,
            resourceId: resourceId,
            resourceType: resourceType,
            resourceRegion: resourceRegion,
            resourceOwner: resourceOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
