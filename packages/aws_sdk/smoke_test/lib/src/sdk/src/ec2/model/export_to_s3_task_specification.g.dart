// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_to_s3_task_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportToS3TaskSpecification extends ExportToS3TaskSpecification {
  @override
  final ContainerFormat? containerFormat;
  @override
  final DiskImageFormat? diskImageFormat;
  @override
  final String? s3Bucket;
  @override
  final String? s3Prefix;

  factory _$ExportToS3TaskSpecification(
          [void Function(ExportToS3TaskSpecificationBuilder)? updates]) =>
      (new ExportToS3TaskSpecificationBuilder()..update(updates))._build();

  _$ExportToS3TaskSpecification._(
      {this.containerFormat,
      this.diskImageFormat,
      this.s3Bucket,
      this.s3Prefix})
      : super._();

  @override
  ExportToS3TaskSpecification rebuild(
          void Function(ExportToS3TaskSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportToS3TaskSpecificationBuilder toBuilder() =>
      new ExportToS3TaskSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportToS3TaskSpecification &&
        containerFormat == other.containerFormat &&
        diskImageFormat == other.diskImageFormat &&
        s3Bucket == other.s3Bucket &&
        s3Prefix == other.s3Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, containerFormat.hashCode);
    _$hash = $jc(_$hash, diskImageFormat.hashCode);
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportToS3TaskSpecificationBuilder
    implements
        Builder<ExportToS3TaskSpecification,
            ExportToS3TaskSpecificationBuilder> {
  _$ExportToS3TaskSpecification? _$v;

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

  String? _s3Prefix;
  String? get s3Prefix => _$this._s3Prefix;
  set s3Prefix(String? s3Prefix) => _$this._s3Prefix = s3Prefix;

  ExportToS3TaskSpecificationBuilder();

  ExportToS3TaskSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _containerFormat = $v.containerFormat;
      _diskImageFormat = $v.diskImageFormat;
      _s3Bucket = $v.s3Bucket;
      _s3Prefix = $v.s3Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportToS3TaskSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportToS3TaskSpecification;
  }

  @override
  void update(void Function(ExportToS3TaskSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportToS3TaskSpecification build() => _build();

  _$ExportToS3TaskSpecification _build() {
    final _$result = _$v ??
        new _$ExportToS3TaskSpecification._(
            containerFormat: containerFormat,
            diskImageFormat: diskImageFormat,
            s3Bucket: s3Bucket,
            s3Prefix: s3Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
