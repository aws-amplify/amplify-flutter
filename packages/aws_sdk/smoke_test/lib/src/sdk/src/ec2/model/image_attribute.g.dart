// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageAttribute extends ImageAttribute {
  @override
  final _i2.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? imageId;
  @override
  final _i2.BuiltList<LaunchPermission>? launchPermissions;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;
  @override
  final AttributeValue? description;
  @override
  final AttributeValue? kernelId;
  @override
  final AttributeValue? ramdiskId;
  @override
  final AttributeValue? sriovNetSupport;
  @override
  final AttributeValue? bootMode;
  @override
  final AttributeValue? tpmSupport;
  @override
  final AttributeValue? uefiData;
  @override
  final AttributeValue? lastLaunchedTime;
  @override
  final AttributeValue? imdsSupport;

  factory _$ImageAttribute([void Function(ImageAttributeBuilder)? updates]) =>
      (new ImageAttributeBuilder()..update(updates))._build();

  _$ImageAttribute._(
      {this.blockDeviceMappings,
      this.imageId,
      this.launchPermissions,
      this.productCodes,
      this.description,
      this.kernelId,
      this.ramdiskId,
      this.sriovNetSupport,
      this.bootMode,
      this.tpmSupport,
      this.uefiData,
      this.lastLaunchedTime,
      this.imdsSupport})
      : super._();

  @override
  ImageAttribute rebuild(void Function(ImageAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageAttributeBuilder toBuilder() =>
      new ImageAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageAttribute &&
        blockDeviceMappings == other.blockDeviceMappings &&
        imageId == other.imageId &&
        launchPermissions == other.launchPermissions &&
        productCodes == other.productCodes &&
        description == other.description &&
        kernelId == other.kernelId &&
        ramdiskId == other.ramdiskId &&
        sriovNetSupport == other.sriovNetSupport &&
        bootMode == other.bootMode &&
        tpmSupport == other.tpmSupport &&
        uefiData == other.uefiData &&
        lastLaunchedTime == other.lastLaunchedTime &&
        imdsSupport == other.imdsSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, launchPermissions.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, uefiData.hashCode);
    _$hash = $jc(_$hash, lastLaunchedTime.hashCode);
    _$hash = $jc(_$hash, imdsSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImageAttributeBuilder
    implements Builder<ImageAttribute, ImageAttributeBuilder> {
  _$ImageAttribute? _$v;

  _i2.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i2.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i2.ListBuilder<LaunchPermission>? _launchPermissions;
  _i2.ListBuilder<LaunchPermission> get launchPermissions =>
      _$this._launchPermissions ??= new _i2.ListBuilder<LaunchPermission>();
  set launchPermissions(_i2.ListBuilder<LaunchPermission>? launchPermissions) =>
      _$this._launchPermissions = launchPermissions;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  AttributeValueBuilder? _description;
  AttributeValueBuilder get description =>
      _$this._description ??= new AttributeValueBuilder();
  set description(AttributeValueBuilder? description) =>
      _$this._description = description;

  AttributeValueBuilder? _kernelId;
  AttributeValueBuilder get kernelId =>
      _$this._kernelId ??= new AttributeValueBuilder();
  set kernelId(AttributeValueBuilder? kernelId) => _$this._kernelId = kernelId;

  AttributeValueBuilder? _ramdiskId;
  AttributeValueBuilder get ramdiskId =>
      _$this._ramdiskId ??= new AttributeValueBuilder();
  set ramdiskId(AttributeValueBuilder? ramdiskId) =>
      _$this._ramdiskId = ramdiskId;

  AttributeValueBuilder? _sriovNetSupport;
  AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new AttributeValueBuilder();
  set sriovNetSupport(AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  AttributeValueBuilder? _bootMode;
  AttributeValueBuilder get bootMode =>
      _$this._bootMode ??= new AttributeValueBuilder();
  set bootMode(AttributeValueBuilder? bootMode) => _$this._bootMode = bootMode;

  AttributeValueBuilder? _tpmSupport;
  AttributeValueBuilder get tpmSupport =>
      _$this._tpmSupport ??= new AttributeValueBuilder();
  set tpmSupport(AttributeValueBuilder? tpmSupport) =>
      _$this._tpmSupport = tpmSupport;

  AttributeValueBuilder? _uefiData;
  AttributeValueBuilder get uefiData =>
      _$this._uefiData ??= new AttributeValueBuilder();
  set uefiData(AttributeValueBuilder? uefiData) => _$this._uefiData = uefiData;

  AttributeValueBuilder? _lastLaunchedTime;
  AttributeValueBuilder get lastLaunchedTime =>
      _$this._lastLaunchedTime ??= new AttributeValueBuilder();
  set lastLaunchedTime(AttributeValueBuilder? lastLaunchedTime) =>
      _$this._lastLaunchedTime = lastLaunchedTime;

  AttributeValueBuilder? _imdsSupport;
  AttributeValueBuilder get imdsSupport =>
      _$this._imdsSupport ??= new AttributeValueBuilder();
  set imdsSupport(AttributeValueBuilder? imdsSupport) =>
      _$this._imdsSupport = imdsSupport;

  ImageAttributeBuilder();

  ImageAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _imageId = $v.imageId;
      _launchPermissions = $v.launchPermissions?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _description = $v.description?.toBuilder();
      _kernelId = $v.kernelId?.toBuilder();
      _ramdiskId = $v.ramdiskId?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _bootMode = $v.bootMode?.toBuilder();
      _tpmSupport = $v.tpmSupport?.toBuilder();
      _uefiData = $v.uefiData?.toBuilder();
      _lastLaunchedTime = $v.lastLaunchedTime?.toBuilder();
      _imdsSupport = $v.imdsSupport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageAttribute;
  }

  @override
  void update(void Function(ImageAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageAttribute build() => _build();

  _$ImageAttribute _build() {
    _$ImageAttribute _$result;
    try {
      _$result = _$v ??
          new _$ImageAttribute._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              imageId: imageId,
              launchPermissions: _launchPermissions?.build(),
              productCodes: _productCodes?.build(),
              description: _description?.build(),
              kernelId: _kernelId?.build(),
              ramdiskId: _ramdiskId?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              bootMode: _bootMode?.build(),
              tpmSupport: _tpmSupport?.build(),
              uefiData: _uefiData?.build(),
              lastLaunchedTime: _lastLaunchedTime?.build(),
              imdsSupport: _imdsSupport?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'launchPermissions';
        _launchPermissions?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'description';
        _description?.build();
        _$failedField = 'kernelId';
        _kernelId?.build();
        _$failedField = 'ramdiskId';
        _ramdiskId?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'bootMode';
        _bootMode?.build();
        _$failedField = 'tpmSupport';
        _tpmSupport?.build();
        _$failedField = 'uefiData';
        _uefiData?.build();
        _$failedField = 'lastLaunchedTime';
        _lastLaunchedTime?.build();
        _$failedField = 'imdsSupport';
        _imdsSupport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImageAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
