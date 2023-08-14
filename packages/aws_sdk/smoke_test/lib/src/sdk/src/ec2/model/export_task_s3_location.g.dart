// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_task_s3_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTaskS3Location extends ExportTaskS3Location {
  @override
  final String? s3Bucket;
  @override
  final String? s3Prefix;

  factory _$ExportTaskS3Location(
          [void Function(ExportTaskS3LocationBuilder)? updates]) =>
      (new ExportTaskS3LocationBuilder()..update(updates))._build();

  _$ExportTaskS3Location._({this.s3Bucket, this.s3Prefix}) : super._();

  @override
  ExportTaskS3Location rebuild(
          void Function(ExportTaskS3LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTaskS3LocationBuilder toBuilder() =>
      new ExportTaskS3LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTaskS3Location &&
        s3Bucket == other.s3Bucket &&
        s3Prefix == other.s3Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportTaskS3LocationBuilder
    implements Builder<ExportTaskS3Location, ExportTaskS3LocationBuilder> {
  _$ExportTaskS3Location? _$v;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3Prefix;
  String? get s3Prefix => _$this._s3Prefix;
  set s3Prefix(String? s3Prefix) => _$this._s3Prefix = s3Prefix;

  ExportTaskS3LocationBuilder();

  ExportTaskS3LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Bucket = $v.s3Bucket;
      _s3Prefix = $v.s3Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTaskS3Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTaskS3Location;
  }

  @override
  void update(void Function(ExportTaskS3LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTaskS3Location build() => _build();

  _$ExportTaskS3Location _build() {
    final _$result = _$v ??
        new _$ExportTaskS3Location._(s3Bucket: s3Bucket, s3Prefix: s3Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
