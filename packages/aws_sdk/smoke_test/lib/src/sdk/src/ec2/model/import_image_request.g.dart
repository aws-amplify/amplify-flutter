// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_image_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportImageRequest extends ImportImageRequest {
  @override
  final String? architecture;
  @override
  final ClientData? clientData;
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final _i3.BuiltList<ImageDiskContainer>? diskContainers;
  @override
  final bool dryRun;
  @override
  final bool encrypted;
  @override
  final String? hypervisor;
  @override
  final String? kmsKeyId;
  @override
  final String? licenseType;
  @override
  final String? platform;
  @override
  final String? roleName;
  @override
  final _i3.BuiltList<ImportImageLicenseConfigurationRequest>?
      licenseSpecifications;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? usageOperation;
  @override
  final BootModeValues? bootMode;

  factory _$ImportImageRequest(
          [void Function(ImportImageRequestBuilder)? updates]) =>
      (new ImportImageRequestBuilder()..update(updates))._build();

  _$ImportImageRequest._(
      {this.architecture,
      this.clientData,
      this.clientToken,
      this.description,
      this.diskContainers,
      required this.dryRun,
      required this.encrypted,
      this.hypervisor,
      this.kmsKeyId,
      this.licenseType,
      this.platform,
      this.roleName,
      this.licenseSpecifications,
      this.tagSpecifications,
      this.usageOperation,
      this.bootMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ImportImageRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'ImportImageRequest', 'encrypted');
  }

  @override
  ImportImageRequest rebuild(
          void Function(ImportImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportImageRequestBuilder toBuilder() =>
      new ImportImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportImageRequest &&
        architecture == other.architecture &&
        clientData == other.clientData &&
        clientToken == other.clientToken &&
        description == other.description &&
        diskContainers == other.diskContainers &&
        dryRun == other.dryRun &&
        encrypted == other.encrypted &&
        hypervisor == other.hypervisor &&
        kmsKeyId == other.kmsKeyId &&
        licenseType == other.licenseType &&
        platform == other.platform &&
        roleName == other.roleName &&
        licenseSpecifications == other.licenseSpecifications &&
        tagSpecifications == other.tagSpecifications &&
        usageOperation == other.usageOperation &&
        bootMode == other.bootMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, clientData.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, diskContainers.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, licenseType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, usageOperation.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportImageRequestBuilder
    implements Builder<ImportImageRequest, ImportImageRequestBuilder> {
  _$ImportImageRequest? _$v;

  String? _architecture;
  String? get architecture => _$this._architecture;
  set architecture(String? architecture) => _$this._architecture = architecture;

  ClientDataBuilder? _clientData;
  ClientDataBuilder get clientData =>
      _$this._clientData ??= new ClientDataBuilder();
  set clientData(ClientDataBuilder? clientData) =>
      _$this._clientData = clientData;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<ImageDiskContainer>? _diskContainers;
  _i3.ListBuilder<ImageDiskContainer> get diskContainers =>
      _$this._diskContainers ??= new _i3.ListBuilder<ImageDiskContainer>();
  set diskContainers(_i3.ListBuilder<ImageDiskContainer>? diskContainers) =>
      _$this._diskContainers = diskContainers;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _hypervisor;
  String? get hypervisor => _$this._hypervisor;
  set hypervisor(String? hypervisor) => _$this._hypervisor = hypervisor;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _licenseType;
  String? get licenseType => _$this._licenseType;
  set licenseType(String? licenseType) => _$this._licenseType = licenseType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  _i3.ListBuilder<ImportImageLicenseConfigurationRequest>?
      _licenseSpecifications;
  _i3.ListBuilder<ImportImageLicenseConfigurationRequest>
      get licenseSpecifications => _$this._licenseSpecifications ??=
          new _i3.ListBuilder<ImportImageLicenseConfigurationRequest>();
  set licenseSpecifications(
          _i3.ListBuilder<ImportImageLicenseConfigurationRequest>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _usageOperation;
  String? get usageOperation => _$this._usageOperation;
  set usageOperation(String? usageOperation) =>
      _$this._usageOperation = usageOperation;

  BootModeValues? _bootMode;
  BootModeValues? get bootMode => _$this._bootMode;
  set bootMode(BootModeValues? bootMode) => _$this._bootMode = bootMode;

  ImportImageRequestBuilder() {
    ImportImageRequest._init(this);
  }

  ImportImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _architecture = $v.architecture;
      _clientData = $v.clientData?.toBuilder();
      _clientToken = $v.clientToken;
      _description = $v.description;
      _diskContainers = $v.diskContainers?.toBuilder();
      _dryRun = $v.dryRun;
      _encrypted = $v.encrypted;
      _hypervisor = $v.hypervisor;
      _kmsKeyId = $v.kmsKeyId;
      _licenseType = $v.licenseType;
      _platform = $v.platform;
      _roleName = $v.roleName;
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _usageOperation = $v.usageOperation;
      _bootMode = $v.bootMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportImageRequest;
  }

  @override
  void update(void Function(ImportImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportImageRequest build() => _build();

  _$ImportImageRequest _build() {
    _$ImportImageRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportImageRequest._(
              architecture: architecture,
              clientData: _clientData?.build(),
              clientToken: clientToken,
              description: description,
              diskContainers: _diskContainers?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ImportImageRequest', 'dryRun'),
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'ImportImageRequest', 'encrypted'),
              hypervisor: hypervisor,
              kmsKeyId: kmsKeyId,
              licenseType: licenseType,
              platform: platform,
              roleName: roleName,
              licenseSpecifications: _licenseSpecifications?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              usageOperation: usageOperation,
              bootMode: bootMode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientData';
        _clientData?.build();

        _$failedField = 'diskContainers';
        _diskContainers?.build();

        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportImageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
