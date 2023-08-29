// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_to_s3_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportToS3Task extends ExportToS3Task {
  @override
  final ContainerFormat? containerFormat;
  @override
  final DiskImageFormat? diskImageFormat;
  @override
  final String? s3Bucket;
  @override
  final String? s3Key;

  factory _$ExportToS3Task([void Function(ExportToS3TaskBuilder)? updates]) =>
      (new ExportToS3TaskBuilder()..update(updates))._build();

  _$ExportToS3Task._(
      {this.containerFormat, this.diskImageFormat, this.s3Bucket, this.s3Key})
      : super._();

  @override
  ExportToS3Task rebuild(void Function(ExportToS3TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportToS3TaskBuilder toBuilder() =>
      new ExportToS3TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportToS3Task &&
        containerFormat == other.containerFormat &&
        diskImageFormat == other.diskImageFormat &&
        s3Bucket == other.s3Bucket &&
        s3Key == other.s3Key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, containerFormat.hashCode);
    _$hash = $jc(_$hash, diskImageFormat.hashCode);
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3Key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportToS3TaskBuilder
    implements Builder<ExportToS3Task, ExportToS3TaskBuilder> {
  _$ExportToS3Task? _$v;

  ContainerFormat? _containerFormat;
  ContainerFormat? get containerFormat => _$this._containerFormat;
  set containerFormat(ContainerFormat? containerFormat) =>
      _$this._containerFormat = containerFormat;

  DiskImageFormat? _diskImageFormat;
  DiskImageFormat? get diskImageFormat => _$this._diskImageFormat;
  set diskImageFormat(DiskImageFormat? diskImageFormat) =>
      _$this._diskImageFormat = diskImageFormat;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3Key;
  String? get s3Key => _$this._s3Key;
  set s3Key(String? s3Key) => _$this._s3Key = s3Key;

  ExportToS3TaskBuilder();

  ExportToS3TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _containerFormat = $v.containerFormat;
      _diskImageFormat = $v.diskImageFormat;
      _s3Bucket = $v.s3Bucket;
      _s3Key = $v.s3Key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportToS3Task other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportToS3Task;
  }

  @override
  void update(void Function(ExportToS3TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportToS3Task build() => _build();

  _$ExportToS3Task _build() {
    final _$result = _$v ??
        new _$ExportToS3Task._(
            containerFormat: containerFormat,
            diskImageFormat: diskImageFormat,
            s3Bucket: s3Bucket,
            s3Key: s3Key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
