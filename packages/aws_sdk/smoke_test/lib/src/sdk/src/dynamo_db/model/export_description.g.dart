// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportDescription extends ExportDescription {
  @override
  final _i2.Int64? billedSizeBytes;
  @override
  final String? clientToken;
  @override
  final DateTime? endTime;
  @override
  final String? exportArn;
  @override
  final _i3.ExportFormat? exportFormat;
  @override
  final String? exportManifest;
  @override
  final _i4.ExportStatus? exportStatus;
  @override
  final DateTime? exportTime;
  @override
  final String? failureCode;
  @override
  final String? failureMessage;
  @override
  final _i2.Int64? itemCount;
  @override
  final String? s3Bucket;
  @override
  final String? s3BucketOwner;
  @override
  final String? s3Prefix;
  @override
  final _i5.S3SseAlgorithm? s3SseAlgorithm;
  @override
  final String? s3SseKmsKeyId;
  @override
  final DateTime? startTime;
  @override
  final String? tableArn;
  @override
  final String? tableId;

  factory _$ExportDescription(
          [void Function(ExportDescriptionBuilder)? updates]) =>
      (new ExportDescriptionBuilder()..update(updates))._build();

  _$ExportDescription._(
      {this.billedSizeBytes,
      this.clientToken,
      this.endTime,
      this.exportArn,
      this.exportFormat,
      this.exportManifest,
      this.exportStatus,
      this.exportTime,
      this.failureCode,
      this.failureMessage,
      this.itemCount,
      this.s3Bucket,
      this.s3BucketOwner,
      this.s3Prefix,
      this.s3SseAlgorithm,
      this.s3SseKmsKeyId,
      this.startTime,
      this.tableArn,
      this.tableId})
      : super._();

  @override
  ExportDescription rebuild(void Function(ExportDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportDescriptionBuilder toBuilder() =>
      new ExportDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportDescription &&
        billedSizeBytes == other.billedSizeBytes &&
        clientToken == other.clientToken &&
        endTime == other.endTime &&
        exportArn == other.exportArn &&
        exportFormat == other.exportFormat &&
        exportManifest == other.exportManifest &&
        exportStatus == other.exportStatus &&
        exportTime == other.exportTime &&
        failureCode == other.failureCode &&
        failureMessage == other.failureMessage &&
        itemCount == other.itemCount &&
        s3Bucket == other.s3Bucket &&
        s3BucketOwner == other.s3BucketOwner &&
        s3Prefix == other.s3Prefix &&
        s3SseAlgorithm == other.s3SseAlgorithm &&
        s3SseKmsKeyId == other.s3SseKmsKeyId &&
        startTime == other.startTime &&
        tableArn == other.tableArn &&
        tableId == other.tableId;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                billedSizeBytes
                                                                                    .hashCode),
                                                                            clientToken
                                                                                .hashCode),
                                                                        endTime
                                                                            .hashCode),
                                                                    exportArn
                                                                        .hashCode),
                                                                exportFormat
                                                                    .hashCode),
                                                            exportManifest
                                                                .hashCode),
                                                        exportStatus.hashCode),
                                                    exportTime.hashCode),
                                                failureCode.hashCode),
                                            failureMessage.hashCode),
                                        itemCount.hashCode),
                                    s3Bucket.hashCode),
                                s3BucketOwner.hashCode),
                            s3Prefix.hashCode),
                        s3SseAlgorithm.hashCode),
                    s3SseKmsKeyId.hashCode),
                startTime.hashCode),
            tableArn.hashCode),
        tableId.hashCode));
  }
}

class ExportDescriptionBuilder
    implements Builder<ExportDescription, ExportDescriptionBuilder> {
  _$ExportDescription? _$v;

  _i2.Int64? _billedSizeBytes;
  _i2.Int64? get billedSizeBytes => _$this._billedSizeBytes;
  set billedSizeBytes(_i2.Int64? billedSizeBytes) =>
      _$this._billedSizeBytes = billedSizeBytes;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _exportArn;
  String? get exportArn => _$this._exportArn;
  set exportArn(String? exportArn) => _$this._exportArn = exportArn;

  _i3.ExportFormat? _exportFormat;
  _i3.ExportFormat? get exportFormat => _$this._exportFormat;
  set exportFormat(_i3.ExportFormat? exportFormat) =>
      _$this._exportFormat = exportFormat;

  String? _exportManifest;
  String? get exportManifest => _$this._exportManifest;
  set exportManifest(String? exportManifest) =>
      _$this._exportManifest = exportManifest;

  _i4.ExportStatus? _exportStatus;
  _i4.ExportStatus? get exportStatus => _$this._exportStatus;
  set exportStatus(_i4.ExportStatus? exportStatus) =>
      _$this._exportStatus = exportStatus;

  DateTime? _exportTime;
  DateTime? get exportTime => _$this._exportTime;
  set exportTime(DateTime? exportTime) => _$this._exportTime = exportTime;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

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

  _i5.S3SseAlgorithm? _s3SseAlgorithm;
  _i5.S3SseAlgorithm? get s3SseAlgorithm => _$this._s3SseAlgorithm;
  set s3SseAlgorithm(_i5.S3SseAlgorithm? s3SseAlgorithm) =>
      _$this._s3SseAlgorithm = s3SseAlgorithm;

  String? _s3SseKmsKeyId;
  String? get s3SseKmsKeyId => _$this._s3SseKmsKeyId;
  set s3SseKmsKeyId(String? s3SseKmsKeyId) =>
      _$this._s3SseKmsKeyId = s3SseKmsKeyId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  ExportDescriptionBuilder() {
    ExportDescription._init(this);
  }

  ExportDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _billedSizeBytes = $v.billedSizeBytes;
      _clientToken = $v.clientToken;
      _endTime = $v.endTime;
      _exportArn = $v.exportArn;
      _exportFormat = $v.exportFormat;
      _exportManifest = $v.exportManifest;
      _exportStatus = $v.exportStatus;
      _exportTime = $v.exportTime;
      _failureCode = $v.failureCode;
      _failureMessage = $v.failureMessage;
      _itemCount = $v.itemCount;
      _s3Bucket = $v.s3Bucket;
      _s3BucketOwner = $v.s3BucketOwner;
      _s3Prefix = $v.s3Prefix;
      _s3SseAlgorithm = $v.s3SseAlgorithm;
      _s3SseKmsKeyId = $v.s3SseKmsKeyId;
      _startTime = $v.startTime;
      _tableArn = $v.tableArn;
      _tableId = $v.tableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportDescription;
  }

  @override
  void update(void Function(ExportDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportDescription build() => _build();

  _$ExportDescription _build() {
    final _$result = _$v ??
        new _$ExportDescription._(
            billedSizeBytes: billedSizeBytes,
            clientToken: clientToken,
            endTime: endTime,
            exportArn: exportArn,
            exportFormat: exportFormat,
            exportManifest: exportManifest,
            exportStatus: exportStatus,
            exportTime: exportTime,
            failureCode: failureCode,
            failureMessage: failureMessage,
            itemCount: itemCount,
            s3Bucket: s3Bucket,
            s3BucketOwner: s3BucketOwner,
            s3Prefix: s3Prefix,
            s3SseAlgorithm: s3SseAlgorithm,
            s3SseKmsKeyId: s3SseKmsKeyId,
            startTime: startTime,
            tableArn: tableArn,
            tableId: tableId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
