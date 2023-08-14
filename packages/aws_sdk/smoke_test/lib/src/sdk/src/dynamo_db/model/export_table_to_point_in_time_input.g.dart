// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_table_to_point_in_time_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTableToPointInTimeInput extends ExportTableToPointInTimeInput {
  @override
  final String tableArn;
  @override
  final DateTime? exportTime;
  @override
  final String? clientToken;
  @override
  final String s3Bucket;
  @override
  final String? s3BucketOwner;
  @override
  final String? s3Prefix;
  @override
  final S3SseAlgorithm? s3SseAlgorithm;
  @override
  final String? s3SseKmsKeyId;
  @override
  final ExportFormat? exportFormat;

  factory _$ExportTableToPointInTimeInput(
          [void Function(ExportTableToPointInTimeInputBuilder)? updates]) =>
      (new ExportTableToPointInTimeInputBuilder()..update(updates))._build();

  _$ExportTableToPointInTimeInput._(
      {required this.tableArn,
      this.exportTime,
      this.clientToken,
      required this.s3Bucket,
      this.s3BucketOwner,
      this.s3Prefix,
      this.s3SseAlgorithm,
      this.s3SseKmsKeyId,
      this.exportFormat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableArn, r'ExportTableToPointInTimeInput', 'tableArn');
    BuiltValueNullFieldError.checkNotNull(
        s3Bucket, r'ExportTableToPointInTimeInput', 's3Bucket');
  }

  @override
  ExportTableToPointInTimeInput rebuild(
          void Function(ExportTableToPointInTimeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTableToPointInTimeInputBuilder toBuilder() =>
      new ExportTableToPointInTimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTableToPointInTimeInput &&
        tableArn == other.tableArn &&
        exportTime == other.exportTime &&
        clientToken == other.clientToken &&
        s3Bucket == other.s3Bucket &&
        s3BucketOwner == other.s3BucketOwner &&
        s3Prefix == other.s3Prefix &&
        s3SseAlgorithm == other.s3SseAlgorithm &&
        s3SseKmsKeyId == other.s3SseKmsKeyId &&
        exportFormat == other.exportFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, exportTime.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3BucketOwner.hashCode);
    _$hash = $jc(_$hash, s3Prefix.hashCode);
    _$hash = $jc(_$hash, s3SseAlgorithm.hashCode);
    _$hash = $jc(_$hash, s3SseKmsKeyId.hashCode);
    _$hash = $jc(_$hash, exportFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportTableToPointInTimeInputBuilder
    implements
        Builder<ExportTableToPointInTimeInput,
            ExportTableToPointInTimeInputBuilder> {
  _$ExportTableToPointInTimeInput? _$v;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  DateTime? _exportTime;
  DateTime? get exportTime => _$this._exportTime;
  set exportTime(DateTime? exportTime) => _$this._exportTime = exportTime;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3BucketOwner;
  String? get s3BucketOwner => _$this._s3BucketOwner;
  set s3BucketOwner(String? s3BucketOwner) =>
      _$this._s3BucketOwner = s3BucketOwner;

  String? _s3Prefix;
  String? get s3Prefix => _$this._s3Prefix;
  set s3Prefix(String? s3Prefix) => _$this._s3Prefix = s3Prefix;

  S3SseAlgorithm? _s3SseAlgorithm;
  S3SseAlgorithm? get s3SseAlgorithm => _$this._s3SseAlgorithm;
  set s3SseAlgorithm(S3SseAlgorithm? s3SseAlgorithm) =>
      _$this._s3SseAlgorithm = s3SseAlgorithm;

  String? _s3SseKmsKeyId;
  String? get s3SseKmsKeyId => _$this._s3SseKmsKeyId;
  set s3SseKmsKeyId(String? s3SseKmsKeyId) =>
      _$this._s3SseKmsKeyId = s3SseKmsKeyId;

  ExportFormat? _exportFormat;
  ExportFormat? get exportFormat => _$this._exportFormat;
  set exportFormat(ExportFormat? exportFormat) =>
      _$this._exportFormat = exportFormat;

  ExportTableToPointInTimeInputBuilder() {
    ExportTableToPointInTimeInput._init(this);
  }

  ExportTableToPointInTimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableArn = $v.tableArn;
      _exportTime = $v.exportTime;
      _clientToken = $v.clientToken;
      _s3Bucket = $v.s3Bucket;
      _s3BucketOwner = $v.s3BucketOwner;
      _s3Prefix = $v.s3Prefix;
      _s3SseAlgorithm = $v.s3SseAlgorithm;
      _s3SseKmsKeyId = $v.s3SseKmsKeyId;
      _exportFormat = $v.exportFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTableToPointInTimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTableToPointInTimeInput;
  }

  @override
  void update(void Function(ExportTableToPointInTimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTableToPointInTimeInput build() => _build();

  _$ExportTableToPointInTimeInput _build() {
    final _$result = _$v ??
        new _$ExportTableToPointInTimeInput._(
            tableArn: BuiltValueNullFieldError.checkNotNull(
                tableArn, r'ExportTableToPointInTimeInput', 'tableArn'),
            exportTime: exportTime,
            clientToken: clientToken,
            s3Bucket: BuiltValueNullFieldError.checkNotNull(
                s3Bucket, r'ExportTableToPointInTimeInput', 's3Bucket'),
            s3BucketOwner: s3BucketOwner,
            s3Prefix: s3Prefix,
            s3SseAlgorithm: s3SseAlgorithm,
            s3SseKmsKeyId: s3SseKmsKeyId,
            exportFormat: exportFormat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
