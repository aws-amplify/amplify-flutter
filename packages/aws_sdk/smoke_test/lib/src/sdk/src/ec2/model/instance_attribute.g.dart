// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceAttribute extends InstanceAttribute {
  @override
  final _i2.BuiltList<GroupIdentifier>? groups;
  @override
  final _i2.BuiltList<InstanceBlockDeviceMapping>? blockDeviceMappings;
  @override
  final AttributeBooleanValue? disableApiTermination;
  @override
  final AttributeBooleanValue? enaSupport;
  @override
  final EnclaveOptions? enclaveOptions;
  @override
  final AttributeBooleanValue? ebsOptimized;
  @override
  final String? instanceId;
  @override
  final AttributeValue? instanceInitiatedShutdownBehavior;
  @override
  final AttributeValue? instanceType;
  @override
  final AttributeValue? kernelId;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;
  @override
  final AttributeValue? ramdiskId;
  @override
  final AttributeValue? rootDeviceName;
  @override
  final AttributeBooleanValue? sourceDestCheck;
  @override
  final AttributeValue? sriovNetSupport;
  @override
  final AttributeValue? userData;
  @override
  final AttributeBooleanValue? disableApiStop;

  factory _$InstanceAttribute(
          [void Function(InstanceAttributeBuilder)? updates]) =>
      (new InstanceAttributeBuilder()..update(updates))._build();

  _$InstanceAttribute._(
      {this.groups,
      this.blockDeviceMappings,
      this.disableApiTermination,
      this.enaSupport,
      this.enclaveOptions,
      this.ebsOptimized,
      this.instanceId,
      this.instanceInitiatedShutdownBehavior,
      this.instanceType,
      this.kernelId,
      this.productCodes,
      this.ramdiskId,
      this.rootDeviceName,
      this.sourceDestCheck,
      this.sriovNetSupport,
      this.userData,
      this.disableApiStop})
      : super._();

  @override
  InstanceAttribute rebuild(void Function(InstanceAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceAttributeBuilder toBuilder() =>
      new InstanceAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceAttribute &&
        groups == other.groups &&
        blockDeviceMappings == other.blockDeviceMappings &&
        disableApiTermination == other.disableApiTermination &&
        enaSupport == other.enaSupport &&
        enclaveOptions == other.enclaveOptions &&
        ebsOptimized == other.ebsOptimized &&
        instanceId == other.instanceId &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        productCodes == other.productCodes &&
        ramdiskId == other.ramdiskId &&
        rootDeviceName == other.rootDeviceName &&
        sourceDestCheck == other.sourceDestCheck &&
        sriovNetSupport == other.sriovNetSupport &&
        userData == other.userData &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceAttributeBuilder
    implements Builder<InstanceAttribute, InstanceAttributeBuilder> {
  _$InstanceAttribute? _$v;

  _i2.ListBuilder<GroupIdentifier>? _groups;
  _i2.ListBuilder<GroupIdentifier> get groups =>
      _$this._groups ??= new _i2.ListBuilder<GroupIdentifier>();
  set groups(_i2.ListBuilder<GroupIdentifier>? groups) =>
      _$this._groups = groups;

  _i2.ListBuilder<InstanceBlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<InstanceBlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i2.ListBuilder<InstanceBlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<InstanceBlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  AttributeBooleanValueBuilder? _disableApiTermination;
  AttributeBooleanValueBuilder get disableApiTermination =>
      _$this._disableApiTermination ??= new AttributeBooleanValueBuilder();
  set disableApiTermination(
          AttributeBooleanValueBuilder? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  AttributeBooleanValueBuilder? _enaSupport;
  AttributeBooleanValueBuilder get enaSupport =>
      _$this._enaSupport ??= new AttributeBooleanValueBuilder();
  set enaSupport(AttributeBooleanValueBuilder? enaSupport) =>
      _$this._enaSupport = enaSupport;

  EnclaveOptionsBuilder? _enclaveOptions;
  EnclaveOptionsBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new EnclaveOptionsBuilder();
  set enclaveOptions(EnclaveOptionsBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  AttributeBooleanValueBuilder? _ebsOptimized;
  AttributeBooleanValueBuilder get ebsOptimized =>
      _$this._ebsOptimized ??= new AttributeBooleanValueBuilder();
  set ebsOptimized(AttributeBooleanValueBuilder? ebsOptimized) =>
      _$this._ebsOptimized = ebsOptimized;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  AttributeValueBuilder? _instanceInitiatedShutdownBehavior;
  AttributeValueBuilder get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior ??= new AttributeValueBuilder();
  set instanceInitiatedShutdownBehavior(
          AttributeValueBuilder? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  AttributeValueBuilder? _instanceType;
  AttributeValueBuilder get instanceType =>
      _$this._instanceType ??= new AttributeValueBuilder();
  set instanceType(AttributeValueBuilder? instanceType) =>
      _$this._instanceType = instanceType;

  AttributeValueBuilder? _kernelId;
  AttributeValueBuilder get kernelId =>
      _$this._kernelId ??= new AttributeValueBuilder();
  set kernelId(AttributeValueBuilder? kernelId) => _$this._kernelId = kernelId;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  AttributeValueBuilder? _ramdiskId;
  AttributeValueBuilder get ramdiskId =>
      _$this._ramdiskId ??= new AttributeValueBuilder();
  set ramdiskId(AttributeValueBuilder? ramdiskId) =>
      _$this._ramdiskId = ramdiskId;

  AttributeValueBuilder? _rootDeviceName;
  AttributeValueBuilder get rootDeviceName =>
      _$this._rootDeviceName ??= new AttributeValueBuilder();
  set rootDeviceName(AttributeValueBuilder? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  AttributeBooleanValueBuilder? _sourceDestCheck;
  AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new AttributeBooleanValueBuilder();
  set sourceDestCheck(AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  AttributeValueBuilder? _sriovNetSupport;
  AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new AttributeValueBuilder();
  set sriovNetSupport(AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  AttributeValueBuilder? _userData;
  AttributeValueBuilder get userData =>
      _$this._userData ??= new AttributeValueBuilder();
  set userData(AttributeValueBuilder? userData) => _$this._userData = userData;

  AttributeBooleanValueBuilder? _disableApiStop;
  AttributeBooleanValueBuilder get disableApiStop =>
      _$this._disableApiStop ??= new AttributeBooleanValueBuilder();
  set disableApiStop(AttributeBooleanValueBuilder? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  InstanceAttributeBuilder();

  InstanceAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _disableApiTermination = $v.disableApiTermination?.toBuilder();
      _enaSupport = $v.enaSupport?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _ebsOptimized = $v.ebsOptimized?.toBuilder();
      _instanceId = $v.instanceId;
      _instanceInitiatedShutdownBehavior =
          $v.instanceInitiatedShutdownBehavior?.toBuilder();
      _instanceType = $v.instanceType?.toBuilder();
      _kernelId = $v.kernelId?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _ramdiskId = $v.ramdiskId?.toBuilder();
      _rootDeviceName = $v.rootDeviceName?.toBuilder();
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _disableApiStop = $v.disableApiStop?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceAttribute;
  }

  @override
  void update(void Function(InstanceAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceAttribute build() => _build();

  _$InstanceAttribute _build() {
    _$InstanceAttribute _$result;
    try {
      _$result = _$v ??
          new _$InstanceAttribute._(
              groups: _groups?.build(),
              blockDeviceMappings: _blockDeviceMappings?.build(),
              disableApiTermination: _disableApiTermination?.build(),
              enaSupport: _enaSupport?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              ebsOptimized: _ebsOptimized?.build(),
              instanceId: instanceId,
              instanceInitiatedShutdownBehavior:
                  _instanceInitiatedShutdownBehavior?.build(),
              instanceType: _instanceType?.build(),
              kernelId: _kernelId?.build(),
              productCodes: _productCodes?.build(),
              ramdiskId: _ramdiskId?.build(),
              rootDeviceName: _rootDeviceName?.build(),
              sourceDestCheck: _sourceDestCheck?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              userData: _userData?.build(),
              disableApiStop: _disableApiStop?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'disableApiTermination';
        _disableApiTermination?.build();
        _$failedField = 'enaSupport';
        _enaSupport?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();
        _$failedField = 'ebsOptimized';
        _ebsOptimized?.build();

        _$failedField = 'instanceInitiatedShutdownBehavior';
        _instanceInitiatedShutdownBehavior?.build();
        _$failedField = 'instanceType';
        _instanceType?.build();
        _$failedField = 'kernelId';
        _kernelId?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'ramdiskId';
        _ramdiskId?.build();
        _$failedField = 'rootDeviceName';
        _rootDeviceName?.build();
        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'disableApiStop';
        _disableApiStop?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
