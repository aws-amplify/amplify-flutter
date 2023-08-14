// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Image extends Image {
  @override
  final ArchitectureValues? architecture;
  @override
  final String? creationDate;
  @override
  final String? imageId;
  @override
  final String? imageLocation;
  @override
  final ImageTypeValues? imageType;
  @override
  final bool public;
  @override
  final String? kernelId;
  @override
  final String? ownerId;
  @override
  final PlatformValues? platform;
  @override
  final String? platformDetails;
  @override
  final String? usageOperation;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;
  @override
  final String? ramdiskId;
  @override
  final ImageState? state;
  @override
  final _i2.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? description;
  @override
  final bool enaSupport;
  @override
  final HypervisorType? hypervisor;
  @override
  final String? imageOwnerAlias;
  @override
  final String? name;
  @override
  final String? rootDeviceName;
  @override
  final DeviceType? rootDeviceType;
  @override
  final String? sriovNetSupport;
  @override
  final StateReason? stateReason;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final VirtualizationType? virtualizationType;
  @override
  final BootModeValues? bootMode;
  @override
  final TpmSupportValues? tpmSupport;
  @override
  final String? deprecationTime;
  @override
  final ImdsSupportValues? imdsSupport;

  factory _$Image([void Function(ImageBuilder)? updates]) =>
      (new ImageBuilder()..update(updates))._build();

  _$Image._(
      {this.architecture,
      this.creationDate,
      this.imageId,
      this.imageLocation,
      this.imageType,
      required this.public,
      this.kernelId,
      this.ownerId,
      this.platform,
      this.platformDetails,
      this.usageOperation,
      this.productCodes,
      this.ramdiskId,
      this.state,
      this.blockDeviceMappings,
      this.description,
      required this.enaSupport,
      this.hypervisor,
      this.imageOwnerAlias,
      this.name,
      this.rootDeviceName,
      this.rootDeviceType,
      this.sriovNetSupport,
      this.stateReason,
      this.tags,
      this.virtualizationType,
      this.bootMode,
      this.tpmSupport,
      this.deprecationTime,
      this.imdsSupport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(public, r'Image', 'public');
    BuiltValueNullFieldError.checkNotNull(enaSupport, r'Image', 'enaSupport');
  }

  @override
  Image rebuild(void Function(ImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilder toBuilder() => new ImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image &&
        architecture == other.architecture &&
        creationDate == other.creationDate &&
        imageId == other.imageId &&
        imageLocation == other.imageLocation &&
        imageType == other.imageType &&
        public == other.public &&
        kernelId == other.kernelId &&
        ownerId == other.ownerId &&
        platform == other.platform &&
        platformDetails == other.platformDetails &&
        usageOperation == other.usageOperation &&
        productCodes == other.productCodes &&
        ramdiskId == other.ramdiskId &&
        state == other.state &&
        blockDeviceMappings == other.blockDeviceMappings &&
        description == other.description &&
        enaSupport == other.enaSupport &&
        hypervisor == other.hypervisor &&
        imageOwnerAlias == other.imageOwnerAlias &&
        name == other.name &&
        rootDeviceName == other.rootDeviceName &&
        rootDeviceType == other.rootDeviceType &&
        sriovNetSupport == other.sriovNetSupport &&
        stateReason == other.stateReason &&
        tags == other.tags &&
        virtualizationType == other.virtualizationType &&
        bootMode == other.bootMode &&
        tpmSupport == other.tpmSupport &&
        deprecationTime == other.deprecationTime &&
        imdsSupport == other.imdsSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, imageLocation.hashCode);
    _$hash = $jc(_$hash, imageType.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, platformDetails.hashCode);
    _$hash = $jc(_$hash, usageOperation.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, imageOwnerAlias.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, rootDeviceType.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, stateReason.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, virtualizationType.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, deprecationTime.hashCode);
    _$hash = $jc(_$hash, imdsSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImageBuilder implements Builder<Image, ImageBuilder> {
  _$Image? _$v;

  ArchitectureValues? _architecture;
  ArchitectureValues? get architecture => _$this._architecture;
  set architecture(ArchitectureValues? architecture) =>
      _$this._architecture = architecture;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageLocation;
  String? get imageLocation => _$this._imageLocation;
  set imageLocation(String? imageLocation) =>
      _$this._imageLocation = imageLocation;

  ImageTypeValues? _imageType;
  ImageTypeValues? get imageType => _$this._imageType;
  set imageType(ImageTypeValues? imageType) => _$this._imageType = imageType;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  PlatformValues? _platform;
  PlatformValues? get platform => _$this._platform;
  set platform(PlatformValues? platform) => _$this._platform = platform;

  String? _platformDetails;
  String? get platformDetails => _$this._platformDetails;
  set platformDetails(String? platformDetails) =>
      _$this._platformDetails = platformDetails;

  String? _usageOperation;
  String? get usageOperation => _$this._usageOperation;
  set usageOperation(String? usageOperation) =>
      _$this._usageOperation = usageOperation;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  ImageState? _state;
  ImageState? get state => _$this._state;
  set state(ImageState? state) => _$this._state = state;

  _i2.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i2.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i2.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i2.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _enaSupport;
  bool? get enaSupport => _$this._enaSupport;
  set enaSupport(bool? enaSupport) => _$this._enaSupport = enaSupport;

  HypervisorType? _hypervisor;
  HypervisorType? get hypervisor => _$this._hypervisor;
  set hypervisor(HypervisorType? hypervisor) => _$this._hypervisor = hypervisor;

  String? _imageOwnerAlias;
  String? get imageOwnerAlias => _$this._imageOwnerAlias;
  set imageOwnerAlias(String? imageOwnerAlias) =>
      _$this._imageOwnerAlias = imageOwnerAlias;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _rootDeviceName;
  String? get rootDeviceName => _$this._rootDeviceName;
  set rootDeviceName(String? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  DeviceType? _rootDeviceType;
  DeviceType? get rootDeviceType => _$this._rootDeviceType;
  set rootDeviceType(DeviceType? rootDeviceType) =>
      _$this._rootDeviceType = rootDeviceType;

  String? _sriovNetSupport;
  String? get sriovNetSupport => _$this._sriovNetSupport;
  set sriovNetSupport(String? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  StateReasonBuilder? _stateReason;
  StateReasonBuilder get stateReason =>
      _$this._stateReason ??= new StateReasonBuilder();
  set stateReason(StateReasonBuilder? stateReason) =>
      _$this._stateReason = stateReason;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VirtualizationType? _virtualizationType;
  VirtualizationType? get virtualizationType => _$this._virtualizationType;
  set virtualizationType(VirtualizationType? virtualizationType) =>
      _$this._virtualizationType = virtualizationType;

  BootModeValues? _bootMode;
  BootModeValues? get bootMode => _$this._bootMode;
  set bootMode(BootModeValues? bootMode) => _$this._bootMode = bootMode;

  TpmSupportValues? _tpmSupport;
  TpmSupportValues? get tpmSupport => _$this._tpmSupport;
  set tpmSupport(TpmSupportValues? tpmSupport) =>
      _$this._tpmSupport = tpmSupport;

  String? _deprecationTime;
  String? get deprecationTime => _$this._deprecationTime;
  set deprecationTime(String? deprecationTime) =>
      _$this._deprecationTime = deprecationTime;

  ImdsSupportValues? _imdsSupport;
  ImdsSupportValues? get imdsSupport => _$this._imdsSupport;
  set imdsSupport(ImdsSupportValues? imdsSupport) =>
      _$this._imdsSupport = imdsSupport;

  ImageBuilder() {
    Image._init(this);
  }

  ImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _architecture = $v.architecture;
      _creationDate = $v.creationDate;
      _imageId = $v.imageId;
      _imageLocation = $v.imageLocation;
      _imageType = $v.imageType;
      _public = $v.public;
      _kernelId = $v.kernelId;
      _ownerId = $v.ownerId;
      _platform = $v.platform;
      _platformDetails = $v.platformDetails;
      _usageOperation = $v.usageOperation;
      _productCodes = $v.productCodes?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _state = $v.state;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _description = $v.description;
      _enaSupport = $v.enaSupport;
      _hypervisor = $v.hypervisor;
      _imageOwnerAlias = $v.imageOwnerAlias;
      _name = $v.name;
      _rootDeviceName = $v.rootDeviceName;
      _rootDeviceType = $v.rootDeviceType;
      _sriovNetSupport = $v.sriovNetSupport;
      _stateReason = $v.stateReason?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _virtualizationType = $v.virtualizationType;
      _bootMode = $v.bootMode;
      _tpmSupport = $v.tpmSupport;
      _deprecationTime = $v.deprecationTime;
      _imdsSupport = $v.imdsSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Image;
  }

  @override
  void update(void Function(ImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Image build() => _build();

  _$Image _build() {
    _$Image _$result;
    try {
      _$result = _$v ??
          new _$Image._(
              architecture: architecture,
              creationDate: creationDate,
              imageId: imageId,
              imageLocation: imageLocation,
              imageType: imageType,
              public: BuiltValueNullFieldError.checkNotNull(
                  public, r'Image', 'public'),
              kernelId: kernelId,
              ownerId: ownerId,
              platform: platform,
              platformDetails: platformDetails,
              usageOperation: usageOperation,
              productCodes: _productCodes?.build(),
              ramdiskId: ramdiskId,
              state: state,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              description: description,
              enaSupport: BuiltValueNullFieldError.checkNotNull(
                  enaSupport, r'Image', 'enaSupport'),
              hypervisor: hypervisor,
              imageOwnerAlias: imageOwnerAlias,
              name: name,
              rootDeviceName: rootDeviceName,
              rootDeviceType: rootDeviceType,
              sriovNetSupport: sriovNetSupport,
              stateReason: _stateReason?.build(),
              tags: _tags?.build(),
              virtualizationType: virtualizationType,
              bootMode: bootMode,
              tpmSupport: tpmSupport,
              deprecationTime: deprecationTime,
              imdsSupport: imdsSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productCodes';
        _productCodes?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'stateReason';
        _stateReason?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Image', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
