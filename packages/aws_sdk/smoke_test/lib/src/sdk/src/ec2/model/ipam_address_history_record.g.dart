// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_address_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamAddressHistoryRecord extends IpamAddressHistoryRecord {
  @override
  final String? resourceOwnerId;
  @override
  final String? resourceRegion;
  @override
  final IpamAddressHistoryResourceType? resourceType;
  @override
  final String? resourceId;
  @override
  final String? resourceCidr;
  @override
  final String? resourceName;
  @override
  final IpamComplianceStatus? resourceComplianceStatus;
  @override
  final IpamOverlapStatus? resourceOverlapStatus;
  @override
  final String? vpcId;
  @override
  final DateTime? sampledStartTime;
  @override
  final DateTime? sampledEndTime;

  factory _$IpamAddressHistoryRecord(
          [void Function(IpamAddressHistoryRecordBuilder)? updates]) =>
      (new IpamAddressHistoryRecordBuilder()..update(updates))._build();

  _$IpamAddressHistoryRecord._(
      {this.resourceOwnerId,
      this.resourceRegion,
      this.resourceType,
      this.resourceId,
      this.resourceCidr,
      this.resourceName,
      this.resourceComplianceStatus,
      this.resourceOverlapStatus,
      this.vpcId,
      this.sampledStartTime,
      this.sampledEndTime})
      : super._();

  @override
  IpamAddressHistoryRecord rebuild(
          void Function(IpamAddressHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamAddressHistoryRecordBuilder toBuilder() =>
      new IpamAddressHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamAddressHistoryRecord &&
        resourceOwnerId == other.resourceOwnerId &&
        resourceRegion == other.resourceRegion &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        resourceCidr == other.resourceCidr &&
        resourceName == other.resourceName &&
        resourceComplianceStatus == other.resourceComplianceStatus &&
        resourceOverlapStatus == other.resourceOverlapStatus &&
        vpcId == other.vpcId &&
        sampledStartTime == other.sampledStartTime &&
        sampledEndTime == other.sampledEndTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceCidr.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceComplianceStatus.hashCode);
    _$hash = $jc(_$hash, resourceOverlapStatus.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, sampledStartTime.hashCode);
    _$hash = $jc(_$hash, sampledEndTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamAddressHistoryRecordBuilder
    implements
        Builder<IpamAddressHistoryRecord, IpamAddressHistoryRecordBuilder> {
  _$IpamAddressHistoryRecord? _$v;

  String? _resourceOwnerId;
  String? get resourceOwnerId => _$this._resourceOwnerId;
  set resourceOwnerId(String? resourceOwnerId) =>
      _$this._resourceOwnerId = resourceOwnerId;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  IpamAddressHistoryResourceType? _resourceType;
  IpamAddressHistoryResourceType? get resourceType => _$this._resourceType;
  set resourceType(IpamAddressHistoryResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceCidr;
  String? get resourceCidr => _$this._resourceCidr;
  set resourceCidr(String? resourceCidr) => _$this._resourceCidr = resourceCidr;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  IpamComplianceStatus? _resourceComplianceStatus;
  IpamComplianceStatus? get resourceComplianceStatus =>
      _$this._resourceComplianceStatus;
  set resourceComplianceStatus(
          IpamComplianceStatus? resourceComplianceStatus) =>
      _$this._resourceComplianceStatus = resourceComplianceStatus;

  IpamOverlapStatus? _resourceOverlapStatus;
  IpamOverlapStatus? get resourceOverlapStatus => _$this._resourceOverlapStatus;
  set resourceOverlapStatus(IpamOverlapStatus? resourceOverlapStatus) =>
      _$this._resourceOverlapStatus = resourceOverlapStatus;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DateTime? _sampledStartTime;
  DateTime? get sampledStartTime => _$this._sampledStartTime;
  set sampledStartTime(DateTime? sampledStartTime) =>
      _$this._sampledStartTime = sampledStartTime;

  DateTime? _sampledEndTime;
  DateTime? get sampledEndTime => _$this._sampledEndTime;
  set sampledEndTime(DateTime? sampledEndTime) =>
      _$this._sampledEndTime = sampledEndTime;

  IpamAddressHistoryRecordBuilder();

  IpamAddressHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceOwnerId = $v.resourceOwnerId;
      _resourceRegion = $v.resourceRegion;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _resourceCidr = $v.resourceCidr;
      _resourceName = $v.resourceName;
      _resourceComplianceStatus = $v.resourceComplianceStatus;
      _resourceOverlapStatus = $v.resourceOverlapStatus;
      _vpcId = $v.vpcId;
      _sampledStartTime = $v.sampledStartTime;
      _sampledEndTime = $v.sampledEndTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamAddressHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamAddressHistoryRecord;
  }

  @override
  void update(void Function(IpamAddressHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamAddressHistoryRecord build() => _build();

  _$IpamAddressHistoryRecord _build() {
    final _$result = _$v ??
        new _$IpamAddressHistoryRecord._(
            resourceOwnerId: resourceOwnerId,
            resourceRegion: resourceRegion,
            resourceType: resourceType,
            resourceId: resourceId,
            resourceCidr: resourceCidr,
            resourceName: resourceName,
            resourceComplianceStatus: resourceComplianceStatus,
            resourceOverlapStatus: resourceOverlapStatus,
            vpcId: vpcId,
            sampledStartTime: sampledStartTime,
            sampledEndTime: sampledEndTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
