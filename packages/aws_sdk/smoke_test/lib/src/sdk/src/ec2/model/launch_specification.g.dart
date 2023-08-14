// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchSpecification extends LaunchSpecification {
  @override
  final String? userData;
  @override
  final _i2.BuiltList<GroupIdentifier>? securityGroups;
  @override
  final String? addressingType;
  @override
  final _i2.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final bool ebsOptimized;
  @override
  final IamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final String? imageId;
  @override
  final InstanceType? instanceType;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final _i2.BuiltList<InstanceNetworkInterfaceSpecification>? networkInterfaces;
  @override
  final SpotPlacement? placement;
  @override
  final String? ramdiskId;
  @override
  final String? subnetId;
  @override
  final RunInstancesMonitoringEnabled? monitoring;

  factory _$LaunchSpecification(
          [void Function(LaunchSpecificationBuilder)? updates]) =>
      (new LaunchSpecificationBuilder()..update(updates))._build();

  _$LaunchSpecification._(
      {this.userData,
      this.securityGroups,
      this.addressingType,
      this.blockDeviceMappings,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.imageId,
      this.instanceType,
      this.kernelId,
      this.keyName,
      this.networkInterfaces,
      this.placement,
      this.ramdiskId,
      this.subnetId,
      this.monitoring})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'LaunchSpecification', 'ebsOptimized');
  }

  @override
  LaunchSpecification rebuild(
          void Function(LaunchSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchSpecificationBuilder toBuilder() =>
      new LaunchSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchSpecification &&
        userData == other.userData &&
        securityGroups == other.securityGroups &&
        addressingType == other.addressingType &&
        blockDeviceMappings == other.blockDeviceMappings &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        networkInterfaces == other.networkInterfaces &&
        placement == other.placement &&
        ramdiskId == other.ramdiskId &&
        subnetId == other.subnetId &&
        monitoring == other.monitoring;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, addressingType.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchSpecificationBuilder
    implements Builder<LaunchSpecification, LaunchSpecificationBuilder> {
  _$LaunchSpecification? _$v;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  _i2.ListBuilder<GroupIdentifier>? _securityGroups;
  _i2.ListBuilder<GroupIdentifier> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<GroupIdentifier>();
  set securityGroups(_i2.ListBuilder<GroupIdentifier>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  String? _addressingType;
  String? get addressingType => _$this._addressingType;
  set addressingType(String? addressingType) =>
      _$this._addressingType = addressingType;

  _i2.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i2.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  InstanceType? _instanceType;
  InstanceType? get instanceType => _$this._instanceType;
  set instanceType(InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  _i2.ListBuilder<InstanceNetworkInterfaceSpecification>? _networkInterfaces;
  _i2.ListBuilder<InstanceNetworkInterfaceSpecification>
      get networkInterfaces => _$this._networkInterfaces ??=
          new _i2.ListBuilder<InstanceNetworkInterfaceSpecification>();
  set networkInterfaces(
          _i2.ListBuilder<InstanceNetworkInterfaceSpecification>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  SpotPlacementBuilder? _placement;
  SpotPlacementBuilder get placement =>
      _$this._placement ??= new SpotPlacementBuilder();
  set placement(SpotPlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  RunInstancesMonitoringEnabledBuilder? _monitoring;
  RunInstancesMonitoringEnabledBuilder get monitoring =>
      _$this._monitoring ??= new RunInstancesMonitoringEnabledBuilder();
  set monitoring(RunInstancesMonitoringEnabledBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  LaunchSpecificationBuilder() {
    LaunchSpecification._init(this);
  }

  LaunchSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userData = $v.userData;
      _securityGroups = $v.securityGroups?.toBuilder();
      _addressingType = $v.addressingType;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _subnetId = $v.subnetId;
      _monitoring = $v.monitoring?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchSpecification;
  }

  @override
  void update(void Function(LaunchSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchSpecification build() => _build();

  _$LaunchSpecification _build() {
    _$LaunchSpecification _$result;
    try {
      _$result = _$v ??
          new _$LaunchSpecification._(
              userData: userData,
              securityGroups: _securityGroups?.build(),
              addressingType: addressingType,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'LaunchSpecification', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              imageId: imageId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              networkInterfaces: _networkInterfaces?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              subnetId: subnetId,
              monitoring: _monitoring?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
