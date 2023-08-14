// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_resource_cidr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamResourceCidr extends IpamResourceCidr {
  @override
  final String? ipamId;
  @override
  final String? ipamScopeId;
  @override
  final String? ipamPoolId;
  @override
  final String? resourceRegion;
  @override
  final String? resourceOwnerId;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final String? resourceCidr;
  @override
  final IpamResourceType? resourceType;
  @override
  final _i2.BuiltList<IpamResourceTag>? resourceTags;
  @override
  final double? ipUsage;
  @override
  final IpamComplianceStatus? complianceStatus;
  @override
  final IpamManagementState? managementState;
  @override
  final IpamOverlapStatus? overlapStatus;
  @override
  final String? vpcId;

  factory _$IpamResourceCidr(
          [void Function(IpamResourceCidrBuilder)? updates]) =>
      (new IpamResourceCidrBuilder()..update(updates))._build();

  _$IpamResourceCidr._(
      {this.ipamId,
      this.ipamScopeId,
      this.ipamPoolId,
      this.resourceRegion,
      this.resourceOwnerId,
      this.resourceId,
      this.resourceName,
      this.resourceCidr,
      this.resourceType,
      this.resourceTags,
      this.ipUsage,
      this.complianceStatus,
      this.managementState,
      this.overlapStatus,
      this.vpcId})
      : super._();

  @override
  IpamResourceCidr rebuild(void Function(IpamResourceCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamResourceCidrBuilder toBuilder() =>
      new IpamResourceCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamResourceCidr &&
        ipamId == other.ipamId &&
        ipamScopeId == other.ipamScopeId &&
        ipamPoolId == other.ipamPoolId &&
        resourceRegion == other.resourceRegion &&
        resourceOwnerId == other.resourceOwnerId &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceCidr == other.resourceCidr &&
        resourceType == other.resourceType &&
        resourceTags == other.resourceTags &&
        ipUsage == other.ipUsage &&
        complianceStatus == other.complianceStatus &&
        managementState == other.managementState &&
        overlapStatus == other.overlapStatus &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceCidr.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceTags.hashCode);
    _$hash = $jc(_$hash, ipUsage.hashCode);
    _$hash = $jc(_$hash, complianceStatus.hashCode);
    _$hash = $jc(_$hash, managementState.hashCode);
    _$hash = $jc(_$hash, overlapStatus.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamResourceCidrBuilder
    implements Builder<IpamResourceCidr, IpamResourceCidrBuilder> {
  _$IpamResourceCidr? _$v;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  String? _resourceOwnerId;
  String? get resourceOwnerId => _$this._resourceOwnerId;
  set resourceOwnerId(String? resourceOwnerId) =>
      _$this._resourceOwnerId = resourceOwnerId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

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

  IpamComplianceStatus? _complianceStatus;
  IpamComplianceStatus? get complianceStatus => _$this._complianceStatus;
  set complianceStatus(IpamComplianceStatus? complianceStatus) =>
      _$this._complianceStatus = complianceStatus;

  IpamManagementState? _managementState;
  IpamManagementState? get managementState => _$this._managementState;
  set managementState(IpamManagementState? managementState) =>
      _$this._managementState = managementState;

  IpamOverlapStatus? _overlapStatus;
  IpamOverlapStatus? get overlapStatus => _$this._overlapStatus;
  set overlapStatus(IpamOverlapStatus? overlapStatus) =>
      _$this._overlapStatus = overlapStatus;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  IpamResourceCidrBuilder();

  IpamResourceCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamId = $v.ipamId;
      _ipamScopeId = $v.ipamScopeId;
      _ipamPoolId = $v.ipamPoolId;
      _resourceRegion = $v.resourceRegion;
      _resourceOwnerId = $v.resourceOwnerId;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceCidr = $v.resourceCidr;
      _resourceType = $v.resourceType;
      _resourceTags = $v.resourceTags?.toBuilder();
      _ipUsage = $v.ipUsage;
      _complianceStatus = $v.complianceStatus;
      _managementState = $v.managementState;
      _overlapStatus = $v.overlapStatus;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamResourceCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamResourceCidr;
  }

  @override
  void update(void Function(IpamResourceCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamResourceCidr build() => _build();

  _$IpamResourceCidr _build() {
    _$IpamResourceCidr _$result;
    try {
      _$result = _$v ??
          new _$IpamResourceCidr._(
              ipamId: ipamId,
              ipamScopeId: ipamScopeId,
              ipamPoolId: ipamPoolId,
              resourceRegion: resourceRegion,
              resourceOwnerId: resourceOwnerId,
              resourceId: resourceId,
              resourceName: resourceName,
              resourceCidr: resourceCidr,
              resourceType: resourceType,
              resourceTags: _resourceTags?.build(),
              ipUsage: ipUsage,
              complianceStatus: complianceStatus,
              managementState: managementState,
              overlapStatus: overlapStatus,
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTags';
        _resourceTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamResourceCidr', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
