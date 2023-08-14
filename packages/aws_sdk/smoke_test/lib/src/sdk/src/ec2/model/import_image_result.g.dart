// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportImageResult extends ImportImageResult {
  @override
  final String? architecture;
  @override
  final String? description;
  @override
  final bool encrypted;
  @override
  final String? hypervisor;
  @override
  final String? imageId;
  @override
  final String? importTaskId;
  @override
  final String? kmsKeyId;
  @override
  final String? licenseType;
  @override
  final String? platform;
  @override
  final String? progress;
  @override
  final _i2.BuiltList<SnapshotDetail>? snapshotDetails;
  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final _i2.BuiltList<ImportImageLicenseConfigurationResponse>?
      licenseSpecifications;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? usageOperation;

  factory _$ImportImageResult(
          [void Function(ImportImageResultBuilder)? updates]) =>
      (new ImportImageResultBuilder()..update(updates))._build();

  _$ImportImageResult._(
      {this.architecture,
      this.description,
      required this.encrypted,
      this.hypervisor,
      this.imageId,
      this.importTaskId,
      this.kmsKeyId,
      this.licenseType,
      this.platform,
      this.progress,
      this.snapshotDetails,
      this.status,
      this.statusMessage,
      this.licenseSpecifications,
      this.tags,
      this.usageOperation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'ImportImageResult', 'encrypted');
  }

  @override
  ImportImageResult rebuild(void Function(ImportImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportImageResultBuilder toBuilder() =>
      new ImportImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportImageResult &&
        architecture == other.architecture &&
        description == other.description &&
        encrypted == other.encrypted &&
        hypervisor == other.hypervisor &&
        imageId == other.imageId &&
        importTaskId == other.importTaskId &&
        kmsKeyId == other.kmsKeyId &&
        licenseType == other.licenseType &&
        platform == other.platform &&
        progress == other.progress &&
        snapshotDetails == other.snapshotDetails &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        licenseSpecifications == other.licenseSpecifications &&
        tags == other.tags &&
        usageOperation == other.usageOperation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, importTaskId.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, licenseType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, snapshotDetails.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, usageOperation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportImageResultBuilder
    implements Builder<ImportImageResult, ImportImageResultBuilder> {
  _$ImportImageResult? _$v;

  String? _architecture;
  String? get architecture => _$this._architecture;
  set architecture(String? architecture) => _$this._architecture = architecture;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _hypervisor;
  String? get hypervisor => _$this._hypervisor;
  set hypervisor(String? hypervisor) => _$this._hypervisor = hypervisor;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _importTaskId;
  String? get importTaskId => _$this._importTaskId;
  set importTaskId(String? importTaskId) => _$this._importTaskId = importTaskId;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _licenseType;
  String? get licenseType => _$this._licenseType;
  set licenseType(String? licenseType) => _$this._licenseType = licenseType;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  _i2.ListBuilder<SnapshotDetail>? _snapshotDetails;
  _i2.ListBuilder<SnapshotDetail> get snapshotDetails =>
      _$this._snapshotDetails ??= new _i2.ListBuilder<SnapshotDetail>();
  set snapshotDetails(_i2.ListBuilder<SnapshotDetail>? snapshotDetails) =>
      _$this._snapshotDetails = snapshotDetails;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i2.ListBuilder<ImportImageLicenseConfigurationResponse>?
      _licenseSpecifications;
  _i2.ListBuilder<ImportImageLicenseConfigurationResponse>
      get licenseSpecifications => _$this._licenseSpecifications ??=
          new _i2.ListBuilder<ImportImageLicenseConfigurationResponse>();
  set licenseSpecifications(
          _i2.ListBuilder<ImportImageLicenseConfigurationResponse>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _usageOperation;
  String? get usageOperation => _$this._usageOperation;
  set usageOperation(String? usageOperation) =>
      _$this._usageOperation = usageOperation;

  ImportImageResultBuilder() {
    ImportImageResult._init(this);
  }

  ImportImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _architecture = $v.architecture;
      _description = $v.description;
      _encrypted = $v.encrypted;
      _hypervisor = $v.hypervisor;
      _imageId = $v.imageId;
      _importTaskId = $v.importTaskId;
      _kmsKeyId = $v.kmsKeyId;
      _licenseType = $v.licenseType;
      _platform = $v.platform;
      _progress = $v.progress;
      _snapshotDetails = $v.snapshotDetails?.toBuilder();
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _usageOperation = $v.usageOperation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportImageResult;
  }

  @override
  void update(void Function(ImportImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportImageResult build() => _build();

  _$ImportImageResult _build() {
    _$ImportImageResult _$result;
    try {
      _$result = _$v ??
          new _$ImportImageResult._(
              architecture: architecture,
              description: description,
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'ImportImageResult', 'encrypted'),
              hypervisor: hypervisor,
              imageId: imageId,
              importTaskId: importTaskId,
              kmsKeyId: kmsKeyId,
              licenseType: licenseType,
              platform: platform,
              progress: progress,
              snapshotDetails: _snapshotDetails?.build(),
              status: status,
              statusMessage: statusMessage,
              licenseSpecifications: _licenseSpecifications?.build(),
              tags: _tags?.build(),
              usageOperation: usageOperation);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotDetails';
        _snapshotDetails?.build();

        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportImageResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
