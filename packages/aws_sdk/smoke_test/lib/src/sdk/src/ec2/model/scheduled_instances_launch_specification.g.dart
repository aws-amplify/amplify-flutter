// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_launch_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesLaunchSpecification
    extends ScheduledInstancesLaunchSpecification {
  @override
  final _i2.BuiltList<ScheduledInstancesBlockDeviceMapping>?
      blockDeviceMappings;
  @override
  final bool ebsOptimized;
  @override
  final ScheduledInstancesIamInstanceProfile? iamInstanceProfile;
  @override
  final String? imageId;
  @override
  final String? instanceType;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final ScheduledInstancesMonitoring? monitoring;
  @override
  final _i2.BuiltList<ScheduledInstancesNetworkInterface>? networkInterfaces;
  @override
  final ScheduledInstancesPlacement? placement;
  @override
  final String? ramdiskId;
  @override
  final _i2.BuiltList<String>? securityGroupIds;
  @override
  final String? subnetId;
  @override
  final String? userData;

  factory _$ScheduledInstancesLaunchSpecification(
          [void Function(ScheduledInstancesLaunchSpecificationBuilder)?
              updates]) =>
      (new ScheduledInstancesLaunchSpecificationBuilder()..update(updates))
          ._build();

  _$ScheduledInstancesLaunchSpecification._(
      {this.blockDeviceMappings,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.imageId,
      this.instanceType,
      this.kernelId,
      this.keyName,
      this.monitoring,
      this.networkInterfaces,
      this.placement,
      this.ramdiskId,
      this.securityGroupIds,
      this.subnetId,
      this.userData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'ScheduledInstancesLaunchSpecification', 'ebsOptimized');
  }

  @override
  ScheduledInstancesLaunchSpecification rebuild(
          void Function(ScheduledInstancesLaunchSpecificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesLaunchSpecificationBuilder toBuilder() =>
      new ScheduledInstancesLaunchSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesLaunchSpecification &&
        blockDeviceMappings == other.blockDeviceMappings &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        monitoring == other.monitoring &&
        networkInterfaces == other.networkInterfaces &&
        placement == other.placement &&
        ramdiskId == other.ramdiskId &&
        securityGroupIds == other.securityGroupIds &&
        subnetId == other.subnetId &&
        userData == other.userData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesLaunchSpecificationBuilder
    implements
        Builder<ScheduledInstancesLaunchSpecification,
            ScheduledInstancesLaunchSpecificationBuilder> {
  _$ScheduledInstancesLaunchSpecification? _$v;

  _i2.ListBuilder<ScheduledInstancesBlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<ScheduledInstancesBlockDeviceMapping>
      get blockDeviceMappings => _$this._blockDeviceMappings ??=
          new _i2.ListBuilder<ScheduledInstancesBlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<ScheduledInstancesBlockDeviceMapping>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  ScheduledInstancesIamInstanceProfileBuilder? _iamInstanceProfile;
  ScheduledInstancesIamInstanceProfileBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new ScheduledInstancesIamInstanceProfileBuilder();
  set iamInstanceProfile(
          ScheduledInstancesIamInstanceProfileBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  ScheduledInstancesMonitoringBuilder? _monitoring;
  ScheduledInstancesMonitoringBuilder get monitoring =>
      _$this._monitoring ??= new ScheduledInstancesMonitoringBuilder();
  set monitoring(ScheduledInstancesMonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  _i2.ListBuilder<ScheduledInstancesNetworkInterface>? _networkInterfaces;
  _i2.ListBuilder<ScheduledInstancesNetworkInterface> get networkInterfaces =>
      _$this._networkInterfaces ??=
          new _i2.ListBuilder<ScheduledInstancesNetworkInterface>();
  set networkInterfaces(
          _i2.ListBuilder<ScheduledInstancesNetworkInterface>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  ScheduledInstancesPlacementBuilder? _placement;
  ScheduledInstancesPlacementBuilder get placement =>
      _$this._placement ??= new ScheduledInstancesPlacementBuilder();
  set placement(ScheduledInstancesPlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  ScheduledInstancesLaunchSpecificationBuilder() {
    ScheduledInstancesLaunchSpecification._init(this);
  }

  ScheduledInstancesLaunchSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _monitoring = $v.monitoring?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _subnetId = $v.subnetId;
      _userData = $v.userData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesLaunchSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesLaunchSpecification;
  }

  @override
  void update(
      void Function(ScheduledInstancesLaunchSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesLaunchSpecification build() => _build();

  _$ScheduledInstancesLaunchSpecification _build() {
    _$ScheduledInstancesLaunchSpecification _$result;
    try {
      _$result = _$v ??
          new _$ScheduledInstancesLaunchSpecification._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(ebsOptimized,
                  r'ScheduledInstancesLaunchSpecification', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              imageId: imageId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              monitoring: _monitoring?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              securityGroupIds: _securityGroupIds?.build(),
              subnetId: subnetId,
              userData: userData);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduledInstancesLaunchSpecification',
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
