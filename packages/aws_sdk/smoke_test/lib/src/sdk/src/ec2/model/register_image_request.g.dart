// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterImageRequest extends RegisterImageRequest {
  @override
  final String? imageLocation;
  @override
  final ArchitectureValues? architecture;
  @override
  final _i3.BuiltList<BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final bool enaSupport;
  @override
  final String? kernelId;
  @override
  final String? name;
  @override
  final _i3.BuiltList<String>? billingProducts;
  @override
  final String? ramdiskId;
  @override
  final String? rootDeviceName;
  @override
  final String? sriovNetSupport;
  @override
  final String? virtualizationType;
  @override
  final BootModeValues? bootMode;
  @override
  final TpmSupportValues? tpmSupport;
  @override
  final String? uefiData;
  @override
  final ImdsSupportValues? imdsSupport;

  factory _$RegisterImageRequest(
          [void Function(RegisterImageRequestBuilder)? updates]) =>
      (new RegisterImageRequestBuilder()..update(updates))._build();

  _$RegisterImageRequest._(
      {this.imageLocation,
      this.architecture,
      this.blockDeviceMappings,
      this.description,
      required this.dryRun,
      required this.enaSupport,
      this.kernelId,
      this.name,
      this.billingProducts,
      this.ramdiskId,
      this.rootDeviceName,
      this.sriovNetSupport,
      this.virtualizationType,
      this.bootMode,
      this.tpmSupport,
      this.uefiData,
      this.imdsSupport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RegisterImageRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        enaSupport, r'RegisterImageRequest', 'enaSupport');
  }

  @override
  RegisterImageRequest rebuild(
          void Function(RegisterImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterImageRequestBuilder toBuilder() =>
      new RegisterImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterImageRequest &&
        imageLocation == other.imageLocation &&
        architecture == other.architecture &&
        blockDeviceMappings == other.blockDeviceMappings &&
        description == other.description &&
        dryRun == other.dryRun &&
        enaSupport == other.enaSupport &&
        kernelId == other.kernelId &&
        name == other.name &&
        billingProducts == other.billingProducts &&
        ramdiskId == other.ramdiskId &&
        rootDeviceName == other.rootDeviceName &&
        sriovNetSupport == other.sriovNetSupport &&
        virtualizationType == other.virtualizationType &&
        bootMode == other.bootMode &&
        tpmSupport == other.tpmSupport &&
        uefiData == other.uefiData &&
        imdsSupport == other.imdsSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageLocation.hashCode);
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, billingProducts.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, virtualizationType.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, uefiData.hashCode);
    _$hash = $jc(_$hash, imdsSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterImageRequestBuilder
    implements Builder<RegisterImageRequest, RegisterImageRequestBuilder> {
  _$RegisterImageRequest? _$v;

  String? _imageLocation;
  String? get imageLocation => _$this._imageLocation;
  set imageLocation(String? imageLocation) =>
      _$this._imageLocation = imageLocation;

  ArchitectureValues? _architecture;
  ArchitectureValues? get architecture => _$this._architecture;
  set architecture(ArchitectureValues? architecture) =>
      _$this._architecture = architecture;

  _i3.ListBuilder<BlockDeviceMapping>? _blockDeviceMappings;
  _i3.ListBuilder<BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??= new _i3.ListBuilder<BlockDeviceMapping>();
  set blockDeviceMappings(
          _i3.ListBuilder<BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _enaSupport;
  bool? get enaSupport => _$this._enaSupport;
  set enaSupport(bool? enaSupport) => _$this._enaSupport = enaSupport;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.ListBuilder<String>? _billingProducts;
  _i3.ListBuilder<String> get billingProducts =>
      _$this._billingProducts ??= new _i3.ListBuilder<String>();
  set billingProducts(_i3.ListBuilder<String>? billingProducts) =>
      _$this._billingProducts = billingProducts;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  String? _rootDeviceName;
  String? get rootDeviceName => _$this._rootDeviceName;
  set rootDeviceName(String? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  String? _sriovNetSupport;
  String? get sriovNetSupport => _$this._sriovNetSupport;
  set sriovNetSupport(String? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  String? _virtualizationType;
  String? get virtualizationType => _$this._virtualizationType;
  set virtualizationType(String? virtualizationType) =>
      _$this._virtualizationType = virtualizationType;

  BootModeValues? _bootMode;
  BootModeValues? get bootMode => _$this._bootMode;
  set bootMode(BootModeValues? bootMode) => _$this._bootMode = bootMode;

  TpmSupportValues? _tpmSupport;
  TpmSupportValues? get tpmSupport => _$this._tpmSupport;
  set tpmSupport(TpmSupportValues? tpmSupport) =>
      _$this._tpmSupport = tpmSupport;

  String? _uefiData;
  String? get uefiData => _$this._uefiData;
  set uefiData(String? uefiData) => _$this._uefiData = uefiData;

  ImdsSupportValues? _imdsSupport;
  ImdsSupportValues? get imdsSupport => _$this._imdsSupport;
  set imdsSupport(ImdsSupportValues? imdsSupport) =>
      _$this._imdsSupport = imdsSupport;

  RegisterImageRequestBuilder() {
    RegisterImageRequest._init(this);
  }

  RegisterImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageLocation = $v.imageLocation;
      _architecture = $v.architecture;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _description = $v.description;
      _dryRun = $v.dryRun;
      _enaSupport = $v.enaSupport;
      _kernelId = $v.kernelId;
      _name = $v.name;
      _billingProducts = $v.billingProducts?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _rootDeviceName = $v.rootDeviceName;
      _sriovNetSupport = $v.sriovNetSupport;
      _virtualizationType = $v.virtualizationType;
      _bootMode = $v.bootMode;
      _tpmSupport = $v.tpmSupport;
      _uefiData = $v.uefiData;
      _imdsSupport = $v.imdsSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterImageRequest;
  }

  @override
  void update(void Function(RegisterImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterImageRequest build() => _build();

  _$RegisterImageRequest _build() {
    _$RegisterImageRequest _$result;
    try {
      _$result = _$v ??
          new _$RegisterImageRequest._(
              imageLocation: imageLocation,
              architecture: architecture,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RegisterImageRequest', 'dryRun'),
              enaSupport: BuiltValueNullFieldError.checkNotNull(
                  enaSupport, r'RegisterImageRequest', 'enaSupport'),
              kernelId: kernelId,
              name: name,
              billingProducts: _billingProducts?.build(),
              ramdiskId: ramdiskId,
              rootDeviceName: rootDeviceName,
              sriovNetSupport: sriovNetSupport,
              virtualizationType: virtualizationType,
              bootMode: bootMode,
              tpmSupport: tpmSupport,
              uefiData: uefiData,
              imdsSupport: imdsSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'billingProducts';
        _billingProducts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterImageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
