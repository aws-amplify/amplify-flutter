// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceAttributeRequest extends ModifyInstanceAttributeRequest {
  @override
  final AttributeBooleanValue? sourceDestCheck;
  @override
  final InstanceAttributeName? attribute;
  @override
  final _i3.BuiltList<InstanceBlockDeviceMappingSpecification>?
      blockDeviceMappings;
  @override
  final AttributeBooleanValue? disableApiTermination;
  @override
  final bool dryRun;
  @override
  final AttributeBooleanValue? ebsOptimized;
  @override
  final AttributeBooleanValue? enaSupport;
  @override
  final _i3.BuiltList<String>? groups;
  @override
  final String? instanceId;
  @override
  final AttributeValue? instanceInitiatedShutdownBehavior;
  @override
  final AttributeValue? instanceType;
  @override
  final AttributeValue? kernel;
  @override
  final AttributeValue? ramdisk;
  @override
  final AttributeValue? sriovNetSupport;
  @override
  final BlobAttributeValue? userData;
  @override
  final String? value;
  @override
  final AttributeBooleanValue? disableApiStop;

  factory _$ModifyInstanceAttributeRequest(
          [void Function(ModifyInstanceAttributeRequestBuilder)? updates]) =>
      (new ModifyInstanceAttributeRequestBuilder()..update(updates))._build();

  _$ModifyInstanceAttributeRequest._(
      {this.sourceDestCheck,
      this.attribute,
      this.blockDeviceMappings,
      this.disableApiTermination,
      required this.dryRun,
      this.ebsOptimized,
      this.enaSupport,
      this.groups,
      this.instanceId,
      this.instanceInitiatedShutdownBehavior,
      this.instanceType,
      this.kernel,
      this.ramdisk,
      this.sriovNetSupport,
      this.userData,
      this.value,
      this.disableApiStop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceAttributeRequest', 'dryRun');
  }

  @override
  ModifyInstanceAttributeRequest rebuild(
          void Function(ModifyInstanceAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceAttributeRequestBuilder toBuilder() =>
      new ModifyInstanceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceAttributeRequest &&
        sourceDestCheck == other.sourceDestCheck &&
        attribute == other.attribute &&
        blockDeviceMappings == other.blockDeviceMappings &&
        disableApiTermination == other.disableApiTermination &&
        dryRun == other.dryRun &&
        ebsOptimized == other.ebsOptimized &&
        enaSupport == other.enaSupport &&
        groups == other.groups &&
        instanceId == other.instanceId &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        instanceType == other.instanceType &&
        kernel == other.kernel &&
        ramdisk == other.ramdisk &&
        sriovNetSupport == other.sriovNetSupport &&
        userData == other.userData &&
        value == other.value &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernel.hashCode);
    _$hash = $jc(_$hash, ramdisk.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceAttributeRequestBuilder
    implements
        Builder<ModifyInstanceAttributeRequest,
            ModifyInstanceAttributeRequestBuilder> {
  _$ModifyInstanceAttributeRequest? _$v;

  AttributeBooleanValueBuilder? _sourceDestCheck;
  AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new AttributeBooleanValueBuilder();
  set sourceDestCheck(AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  InstanceAttributeName? _attribute;
  InstanceAttributeName? get attribute => _$this._attribute;
  set attribute(InstanceAttributeName? attribute) =>
      _$this._attribute = attribute;

  _i3.ListBuilder<InstanceBlockDeviceMappingSpecification>?
      _blockDeviceMappings;
  _i3.ListBuilder<InstanceBlockDeviceMappingSpecification>
      get blockDeviceMappings => _$this._blockDeviceMappings ??=
          new _i3.ListBuilder<InstanceBlockDeviceMappingSpecification>();
  set blockDeviceMappings(
          _i3.ListBuilder<InstanceBlockDeviceMappingSpecification>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  AttributeBooleanValueBuilder? _disableApiTermination;
  AttributeBooleanValueBuilder get disableApiTermination =>
      _$this._disableApiTermination ??= new AttributeBooleanValueBuilder();
  set disableApiTermination(
          AttributeBooleanValueBuilder? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AttributeBooleanValueBuilder? _ebsOptimized;
  AttributeBooleanValueBuilder get ebsOptimized =>
      _$this._ebsOptimized ??= new AttributeBooleanValueBuilder();
  set ebsOptimized(AttributeBooleanValueBuilder? ebsOptimized) =>
      _$this._ebsOptimized = ebsOptimized;

  AttributeBooleanValueBuilder? _enaSupport;
  AttributeBooleanValueBuilder get enaSupport =>
      _$this._enaSupport ??= new AttributeBooleanValueBuilder();
  set enaSupport(AttributeBooleanValueBuilder? enaSupport) =>
      _$this._enaSupport = enaSupport;

  _i3.ListBuilder<String>? _groups;
  _i3.ListBuilder<String> get groups =>
      _$this._groups ??= new _i3.ListBuilder<String>();
  set groups(_i3.ListBuilder<String>? groups) => _$this._groups = groups;

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

  AttributeValueBuilder? _kernel;
  AttributeValueBuilder get kernel =>
      _$this._kernel ??= new AttributeValueBuilder();
  set kernel(AttributeValueBuilder? kernel) => _$this._kernel = kernel;

  AttributeValueBuilder? _ramdisk;
  AttributeValueBuilder get ramdisk =>
      _$this._ramdisk ??= new AttributeValueBuilder();
  set ramdisk(AttributeValueBuilder? ramdisk) => _$this._ramdisk = ramdisk;

  AttributeValueBuilder? _sriovNetSupport;
  AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new AttributeValueBuilder();
  set sriovNetSupport(AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  BlobAttributeValueBuilder? _userData;
  BlobAttributeValueBuilder get userData =>
      _$this._userData ??= new BlobAttributeValueBuilder();
  set userData(BlobAttributeValueBuilder? userData) =>
      _$this._userData = userData;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AttributeBooleanValueBuilder? _disableApiStop;
  AttributeBooleanValueBuilder get disableApiStop =>
      _$this._disableApiStop ??= new AttributeBooleanValueBuilder();
  set disableApiStop(AttributeBooleanValueBuilder? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  ModifyInstanceAttributeRequestBuilder() {
    ModifyInstanceAttributeRequest._init(this);
  }

  ModifyInstanceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _attribute = $v.attribute;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _disableApiTermination = $v.disableApiTermination?.toBuilder();
      _dryRun = $v.dryRun;
      _ebsOptimized = $v.ebsOptimized?.toBuilder();
      _enaSupport = $v.enaSupport?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _instanceId = $v.instanceId;
      _instanceInitiatedShutdownBehavior =
          $v.instanceInitiatedShutdownBehavior?.toBuilder();
      _instanceType = $v.instanceType?.toBuilder();
      _kernel = $v.kernel?.toBuilder();
      _ramdisk = $v.ramdisk?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _value = $v.value;
      _disableApiStop = $v.disableApiStop?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceAttributeRequest;
  }

  @override
  void update(void Function(ModifyInstanceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceAttributeRequest build() => _build();

  _$ModifyInstanceAttributeRequest _build() {
    _$ModifyInstanceAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceAttributeRequest._(
              sourceDestCheck: _sourceDestCheck?.build(),
              attribute: attribute,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              disableApiTermination: _disableApiTermination?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyInstanceAttributeRequest', 'dryRun'),
              ebsOptimized: _ebsOptimized?.build(),
              enaSupport: _enaSupport?.build(),
              groups: _groups?.build(),
              instanceId: instanceId,
              instanceInitiatedShutdownBehavior:
                  _instanceInitiatedShutdownBehavior?.build(),
              instanceType: _instanceType?.build(),
              kernel: _kernel?.build(),
              ramdisk: _ramdisk?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              userData: _userData?.build(),
              value: value,
              disableApiStop: _disableApiStop?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'disableApiTermination';
        _disableApiTermination?.build();

        _$failedField = 'ebsOptimized';
        _ebsOptimized?.build();
        _$failedField = 'enaSupport';
        _enaSupport?.build();
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'instanceInitiatedShutdownBehavior';
        _instanceInitiatedShutdownBehavior?.build();
        _$failedField = 'instanceType';
        _instanceType?.build();
        _$failedField = 'kernel';
        _kernel?.build();
        _$failedField = 'ramdisk';
        _ramdisk?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'userData';
        _userData?.build();

        _$failedField = 'disableApiStop';
        _disableApiStop?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
