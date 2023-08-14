// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_spot_launch_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestSpotLaunchSpecification extends RequestSpotLaunchSpecification {
  @override
  final _i2.BuiltList<String>? securityGroupIds;
  @override
  final _i2.BuiltList<String>? securityGroups;
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
  final RunInstancesMonitoringEnabled? monitoring;
  @override
  final _i2.BuiltList<InstanceNetworkInterfaceSpecification>? networkInterfaces;
  @override
  final SpotPlacement? placement;
  @override
  final String? ramdiskId;
  @override
  final String? subnetId;
  @override
  final String? userData;

  factory _$RequestSpotLaunchSpecification(
          [void Function(RequestSpotLaunchSpecificationBuilder)? updates]) =>
      (new RequestSpotLaunchSpecificationBuilder()..update(updates))._build();

  _$RequestSpotLaunchSpecification._(
      {this.securityGroupIds,
      this.securityGroups,
      this.addressingType,
      this.blockDeviceMappings,
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
      this.subnetId,
      this.userData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'RequestSpotLaunchSpecification', 'ebsOptimized');
  }

  @override
  RequestSpotLaunchSpecification rebuild(
          void Function(RequestSpotLaunchSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestSpotLaunchSpecificationBuilder toBuilder() =>
      new RequestSpotLaunchSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestSpotLaunchSpecification &&
        securityGroupIds == other.securityGroupIds &&
        securityGroups == other.securityGroups &&
        addressingType == other.addressingType &&
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
        subnetId == other.subnetId &&
        userData == other.userData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, addressingType.hashCode);
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
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestSpotLaunchSpecificationBuilder
    implements
        Builder<RequestSpotLaunchSpecification,
            RequestSpotLaunchSpecificationBuilder> {
  _$RequestSpotLaunchSpecification? _$v;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i2.ListBuilder<String>? _securityGroups;
  _i2.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i2.ListBuilder<String>();
  set securityGroups(_i2.ListBuilder<String>? securityGroups) =>
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

  RunInstancesMonitoringEnabledBuilder? _monitoring;
  RunInstancesMonitoringEnabledBuilder get monitoring =>
      _$this._monitoring ??= new RunInstancesMonitoringEnabledBuilder();
  set monitoring(RunInstancesMonitoringEnabledBuilder? monitoring) =>
      _$this._monitoring = monitoring;

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

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  RequestSpotLaunchSpecificationBuilder() {
    RequestSpotLaunchSpecification._init(this);
  }

  RequestSpotLaunchSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _addressingType = $v.addressingType;
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
      _subnetId = $v.subnetId;
      _userData = $v.userData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestSpotLaunchSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestSpotLaunchSpecification;
  }

  @override
  void update(void Function(RequestSpotLaunchSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestSpotLaunchSpecification build() => _build();

  _$RequestSpotLaunchSpecification _build() {
    _$RequestSpotLaunchSpecification _$result;
    try {
      _$result = _$v ??
          new _$RequestSpotLaunchSpecification._(
              securityGroupIds: _securityGroupIds?.build(),
              securityGroups: _securityGroups?.build(),
              addressingType: addressingType,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(ebsOptimized,
                  r'RequestSpotLaunchSpecification', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              imageId: imageId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              monitoring: _monitoring?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              subnetId: subnetId,
              userData: userData);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();

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
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestSpotLaunchSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
