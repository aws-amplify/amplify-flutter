// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_table_topoint_intime_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTableTopointIntimeInput extends ExportTableTopointIntimeInput {
  @override
  final String? clientToken;
  @override
  final _i3.ExportFormat? exportFormat;
  @override
  final DateTime? exportTime;
  @override
  final String s3Bucket;
  @override
  final String? s3BucketOwner;
  @override
  final String? s3Prefix;
  @override
  final _i4.S3SseAlgorithm? s3SseAlgorithm;
  @override
  final String? s3SseKmsKeyId;
  @override
  final String tableArn;

  factory _$ExportTableTopointIntimeInput(
          [void Function(ExportTableTopointIntimeInputBuilder)? updates]) =>
      (new ExportTableTopointIntimeInputBuilder()..update(updates))._build();

  _$ExportTableTopointIntimeInput._(
      {this.clientToken,
      this.exportFormat,
      this.exportTime,
      required this.s3Bucket,
      this.s3BucketOwner,
      this.s3Prefix,
      this.s3SseAlgorithm,
      this.s3SseKmsKeyId,
      required this.tableArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        s3Bucket, r'ExportTableTopointIntimeInput', 's3Bucket');
    BuiltValueNullFieldError.checkNotNull(
        tableArn, r'ExportTableTopointIntimeInput', 'tableArn');
  }

  @override
  ExportTableTopointIntimeInput rebuild(
          void Function(ExportTableTopointIntimeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTableTopointIntimeInputBuilder toBuilder() =>
      new ExportTableTopointIntimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTableTopointIntimeInput &&
        clientToken == other.clientToken &&
        exportFormat == other.exportFormat &&
        exportTime == other.exportTime &&
        s3Bucket == other.s3Bucket &&
        s3BucketOwner == other.s3BucketOwner &&
        s3Prefix == other.s3Prefix &&
        s3SseAlgorithm == other.s3SseAlgorithm &&
        s3SseKmsKeyId == other.s3SseKmsKeyId &&
        tableArn == other.tableArn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, clientToken.hashCode),
                                    exportFormat.hashCode),
                                exportTime.hashCode),
                            s3Bucket.hashCode),
                        s3BucketOwner.hashCode),
                    s3Prefix.hashCode),
                s3SseAlgorithm.hashCode),
            s3SseKmsKeyId.hashCode),
        tableArn.hashCode));
  }
}

class ExportTableTopointIntimeInputBuilder
    implements
        Builder<ExportTableTopointIntimeInput,
            ExportTableTopointIntimeInputBuilder> {
  _$ExportTableTopointIntimeInput? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ExportFormat? _exportFormat;
  _i3.ExportFormat? get exportFormat => _$this._exportFormat;
  set exportFormat(_i3.ExportFormat? exportFormat) =>
      _$this._exportFormat = exportFormat;

  DateTime? _exportTime;
  DateTime? get exportTime => _$this._exportTime;
  set exportTime(DateTime? exportTime) => _$this._exportTime = exportTime;

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

  _i4.S3SseAlgorithm? _s3SseAlgorithm;
  _i4.S3SseAlgorithm? get s3SseAlgorithm => _$this._s3SseAlgorithm;
  set s3SseAlgorithm(_i4.S3SseAlgorithm? s3SseAlgorithm) =>
      _$this._s3SseAlgorithm = s3SseAlgorithm;

  String? _s3SseKmsKeyId;
  String? get s3SseKmsKeyId => _$this._s3SseKmsKeyId;
  set s3SseKmsKeyId(String? s3SseKmsKeyId) =>
      _$this._s3SseKmsKeyId = s3SseKmsKeyId;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  ExportTableTopointIntimeInputBuilder() {
    ExportTableTopointIntimeInput._init(this);
  }

  ExportTableTopointIntimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _exportFormat = $v.exportFormat;
      _exportTime = $v.exportTime;
      _s3Bucket = $v.s3Bucket;
      _s3BucketOwner = $v.s3BucketOwner;
      _s3Prefix = $v.s3Prefix;
      _s3SseAlgorithm = $v.s3SseAlgorithm;
      _s3SseKmsKeyId = $v.s3SseKmsKeyId;
      _tableArn = $v.tableArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTableTopointIntimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTableTopointIntimeInput;
  }

  @override
  void update(void Function(ExportTableTopointIntimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTableTopointIntimeInput build() => _build();

  _$ExportTableTopointIntimeInput _build() {
    final _$result = _$v ??
        new _$ExportTableTopointIntimeInput._(
            clientToken: clientToken,
            exportFormat: exportFormat,
            exportTime: exportTime,
            s3Bucket: BuiltValueNullFieldError.checkNotNull(
                s3Bucket, r'ExportTableTopointIntimeInput', 's3Bucket'),
            s3BucketOwner: s3BucketOwner,
            s3Prefix: s3Prefix,
            s3SseAlgorithm: s3SseAlgorithm,
            s3SseKmsKeyId: s3SseKmsKeyId,
            tableArn: BuiltValueNullFieldError.checkNotNull(
                tableArn, r'ExportTableTopointIntimeInput', 'tableArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
