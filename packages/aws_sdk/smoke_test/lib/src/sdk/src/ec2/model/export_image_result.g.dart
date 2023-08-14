// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportImageResult extends ExportImageResult {
  @override
  final String? description;
  @override
  final DiskImageFormat? diskImageFormat;
  @override
  final String? exportImageTaskId;
  @override
  final String? imageId;
  @override
  final String? roleName;
  @override
  final String? progress;
  @override
  final ExportTaskS3Location? s3ExportLocation;
  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ExportImageResult(
          [void Function(ExportImageResultBuilder)? updates]) =>
      (new ExportImageResultBuilder()..update(updates))._build();

  _$ExportImageResult._(
      {this.description,
      this.diskImageFormat,
      this.exportImageTaskId,
      this.imageId,
      this.roleName,
      this.progress,
      this.s3ExportLocation,
      this.status,
      this.statusMessage,
      this.tags})
      : super._();

  @override
  ExportImageResult rebuild(void Function(ExportImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportImageResultBuilder toBuilder() =>
      new ExportImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportImageResult &&
        description == other.description &&
        diskImageFormat == other.diskImageFormat &&
        exportImageTaskId == other.exportImageTaskId &&
        imageId == other.imageId &&
        roleName == other.roleName &&
        progress == other.progress &&
        s3ExportLocation == other.s3ExportLocation &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, diskImageFormat.hashCode);
    _$hash = $jc(_$hash, exportImageTaskId.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, s3ExportLocation.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportImageResultBuilder
    implements Builder<ExportImageResult, ExportImageResultBuilder> {
  _$ExportImageResult? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DiskImageFormat? _diskImageFormat;
  DiskImageFormat? get diskImageFormat => _$this._diskImageFormat;
  set diskImageFormat(DiskImageFormat? diskImageFormat) =>
      _$this._diskImageFormat = diskImageFormat;

  String? _exportImageTaskId;
  String? get exportImageTaskId => _$this._exportImageTaskId;
  set exportImageTaskId(String? exportImageTaskId) =>
      _$this._exportImageTaskId = exportImageTaskId;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  ExportTaskS3LocationBuilder? _s3ExportLocation;
  ExportTaskS3LocationBuilder get s3ExportLocation =>
      _$this._s3ExportLocation ??= new ExportTaskS3LocationBuilder();
  set s3ExportLocation(ExportTaskS3LocationBuilder? s3ExportLocation) =>
      _$this._s3ExportLocation = s3ExportLocation;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ExportImageResultBuilder();

  ExportImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _diskImageFormat = $v.diskImageFormat;
      _exportImageTaskId = $v.exportImageTaskId;
      _imageId = $v.imageId;
      _roleName = $v.roleName;
      _progress = $v.progress;
      _s3ExportLocation = $v.s3ExportLocation?.toBuilder();
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportImageResult;
  }

  @override
  void update(void Function(ExportImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportImageResult build() => _build();

  _$ExportImageResult _build() {
    _$ExportImageResult _$result;
    try {
      _$result = _$v ??
          new _$ExportImageResult._(
              description: description,
              diskImageFormat: diskImageFormat,
              exportImageTaskId: exportImageTaskId,
              imageId: imageId,
              roleName: roleName,
              progress: progress,
              s3ExportLocation: _s3ExportLocation?.build(),
              status: status,
              statusMessage: statusMessage,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3ExportLocation';
        _s3ExportLocation?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportImageResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
