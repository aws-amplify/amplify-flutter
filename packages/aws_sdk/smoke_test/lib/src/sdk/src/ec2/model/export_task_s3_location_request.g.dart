// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_task_s3_location_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTaskS3LocationRequest extends ExportTaskS3LocationRequest {
  @override
  final String? s3Bucket;
  @override
  final String? s3Prefix;

  factory _$ExportTaskS3LocationRequest(
          [void Function(ExportTaskS3LocationRequestBuilder)? updates]) =>
      (new ExportTaskS3LocationRequestBuilder()..update(updates))._build();

  _$ExportTaskS3LocationRequest._({this.s3Bucket, this.s3Prefix}) : super._();

  @override
  ExportTaskS3LocationRequest rebuild(
          void Function(ExportTaskS3LocationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTaskS3LocationRequestBuilder toBuilder() =>
      new ExportTaskS3LocationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTaskS3LocationRequest &&
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

class ExportTaskS3LocationRequestBuilder
    implements
        Builder<ExportTaskS3LocationRequest,
            ExportTaskS3LocationRequestBuilder> {
  _$ExportTaskS3LocationRequest? _$v;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3Prefix;
  String? get s3Prefix => _$this._s3Prefix;
  set s3Prefix(String? s3Prefix) => _$this._s3Prefix = s3Prefix;

  ExportTaskS3LocationRequestBuilder();

  ExportTaskS3LocationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Bucket = $v.s3Bucket;
      _s3Prefix = $v.s3Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTaskS3LocationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTaskS3LocationRequest;
  }

  @override
  void update(void Function(ExportTaskS3LocationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTaskS3LocationRequest build() => _build();

  _$ExportTaskS3LocationRequest _build() {
    final _$result = _$v ??
        new _$ExportTaskS3LocationRequest._(
            s3Bucket: s3Bucket, s3Prefix: s3Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
