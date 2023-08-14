// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_discovered_resource_cidr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamDiscoveredResourceCidr extends IpamDiscoveredResourceCidr {
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? resourceRegion;
  @override
  final String? resourceId;
  @override
  final String? resourceOwnerId;
  @override
  final String? resourceCidr;
  @override
  final IpamResourceType? resourceType;
  @override
  final _i2.BuiltList<IpamResourceTag>? resourceTags;
  @override
  final double? ipUsage;
  @override
  final String? vpcId;
  @override
  final DateTime? sampleTime;

  factory _$IpamDiscoveredResourceCidr(
          [void Function(IpamDiscoveredResourceCidrBuilder)? updates]) =>
      (new IpamDiscoveredResourceCidrBuilder()..update(updates))._build();

  _$IpamDiscoveredResourceCidr._(
      {this.ipamResourceDiscoveryId,
      this.resourceRegion,
      this.resourceId,
      this.resourceOwnerId,
      this.resourceCidr,
      this.resourceType,
      this.resourceTags,
      this.ipUsage,
      this.vpcId,
      this.sampleTime})
      : super._();

  @override
  IpamDiscoveredResourceCidr rebuild(
          void Function(IpamDiscoveredResourceCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamDiscoveredResourceCidrBuilder toBuilder() =>
      new IpamDiscoveredResourceCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamDiscoveredResourceCidr &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        resourceRegion == other.resourceRegion &&
        resourceId == other.resourceId &&
        resourceOwnerId == other.resourceOwnerId &&
        resourceCidr == other.resourceCidr &&
        resourceType == other.resourceType &&
        resourceTags == other.resourceTags &&
        ipUsage == other.ipUsage &&
        vpcId == other.vpcId &&
        sampleTime == other.sampleTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, resourceCidr.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceTags.hashCode);
    _$hash = $jc(_$hash, ipUsage.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, sampleTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamDiscoveredResourceCidrBuilder
    implements
        Builder<IpamDiscoveredResourceCidr, IpamDiscoveredResourceCidrBuilder> {
  _$IpamDiscoveredResourceCidr? _$v;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceOwnerId;
  String? get resourceOwnerId => _$this._resourceOwnerId;
  set resourceOwnerId(String? resourceOwnerId) =>
      _$this._resourceOwnerId = resourceOwnerId;

  String? _resourceCidr;
  String? get resourceCidr => _$this._resourceCidr;
  set resourceCidr(String? resourceCidr) => _$this._resourceCidr = resourceCidr;

  IpamResourceType? _resourceType;
  IpamResourceType? get resourceType => _$this._resourceType;
  set resourceType(IpamResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i2.ListBuilder<IpamResourceTag>? _resourceTags;
  _i2.ListBuilder<IpamResourceTag> get resourceTags =>
      _$this._resourceTags ??= new _i2.ListBuilder<IpamResourceTag>();
  set resourceTags(_i2.ListBuilder<IpamResourceTag>? resourceTags) =>
      _$this._resourceTags = resourceTags;

  double? _ipUsage;
  double? get ipUsage => _$this._ipUsage;
  set ipUsage(double? ipUsage) => _$this._ipUsage = ipUsage;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DateTime? _sampleTime;
  DateTime? get sampleTime => _$this._sampleTime;
  set sampleTime(DateTime? sampleTime) => _$this._sampleTime = sampleTime;

  IpamDiscoveredResourceCidrBuilder();

  IpamDiscoveredResourceCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _resourceRegion = $v.resourceRegion;
      _resourceId = $v.resourceId;
      _resourceOwnerId = $v.resourceOwnerId;
      _resourceCidr = $v.resourceCidr;
      _resourceType = $v.resourceType;
      _resourceTags = $v.resourceTags?.toBuilder();
      _ipUsage = $v.ipUsage;
      _vpcId = $v.vpcId;
      _sampleTime = $v.sampleTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamDiscoveredResourceCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamDiscoveredResourceCidr;
  }

  @override
  void update(void Function(IpamDiscoveredResourceCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamDiscoveredResourceCidr build() => _build();

  _$IpamDiscoveredResourceCidr _build() {
    _$IpamDiscoveredResourceCidr _$result;
    try {
      _$result = _$v ??
          new _$IpamDiscoveredResourceCidr._(
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              resourceRegion: resourceRegion,
              resourceId: resourceId,
              resourceOwnerId: resourceOwnerId,
              resourceCidr: resourceCidr,
              resourceType: resourceType,
              resourceTags: _resourceTags?.build(),
              ipUsage: ipUsage,
              vpcId: vpcId,
              sampleTime: sampleTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTags';
        _resourceTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamDiscoveredResourceCidr', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
