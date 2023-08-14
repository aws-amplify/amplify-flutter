// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_image_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportImageTask extends ExportImageTask {
  @override
  final String? description;
  @override
  final String? exportImageTaskId;
  @override
  final String? imageId;
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

  factory _$ExportImageTask([void Function(ExportImageTaskBuilder)? updates]) =>
      (new ExportImageTaskBuilder()..update(updates))._build();

  _$ExportImageTask._(
      {this.description,
      this.exportImageTaskId,
      this.imageId,
      this.progress,
      this.s3ExportLocation,
      this.status,
      this.statusMessage,
      this.tags})
      : super._();

  @override
  ExportImageTask rebuild(void Function(ExportImageTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportImageTaskBuilder toBuilder() =>
      new ExportImageTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportImageTask &&
        description == other.description &&
        exportImageTaskId == other.exportImageTaskId &&
        imageId == other.imageId &&
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
    _$hash = $jc(_$hash, exportImageTaskId.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, s3ExportLocation.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportImageTaskBuilder
    implements Builder<ExportImageTask, ExportImageTaskBuilder> {
  _$ExportImageTask? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _exportImageTaskId;
  String? get exportImageTaskId => _$this._exportImageTaskId;
  set exportImageTaskId(String? exportImageTaskId) =>
      _$this._exportImageTaskId = exportImageTaskId;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

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

  ExportImageTaskBuilder();

  ExportImageTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _exportImageTaskId = $v.exportImageTaskId;
      _imageId = $v.imageId;
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
  void replace(ExportImageTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportImageTask;
  }

  @override
  void update(void Function(ExportImageTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportImageTask build() => _build();

  _$ExportImageTask _build() {
    _$ExportImageTask _$result;
    try {
      _$result = _$v ??
          new _$ExportImageTask._(
              description: description,
              exportImageTaskId: exportImageTaskId,
              imageId: imageId,
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
            r'ExportImageTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
