// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportDescription extends ExportDescription {
  @override
  final String? exportArn;
  @override
  final _i2.ExportStatus? exportStatus;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final String? exportManifest;
  @override
  final String? tableArn;
  @override
  final String? tableId;
  @override
  final DateTime? exportTime;
  @override
  final String? clientToken;
  @override
  final String? s3Bucket;
  @override
  final String? s3BucketOwner;
  @override
  final String? s3Prefix;
  @override
  final _i3.S3SseAlgorithm? s3SseAlgorithm;
  @override
  final String? s3SseKmsKeyId;
  @override
  final String? failureCode;
  @override
  final String? failureMessage;
  @override
  final _i4.ExportFormat? exportFormat;
  @override
  final _i5.Int64? billedSizeBytes;
  @override
  final _i5.Int64? itemCount;

  factory _$ExportDescription(
          [void Function(ExportDescriptionBuilder)? updates]) =>
      (new ExportDescriptionBuilder()..update(updates))._build();

  _$ExportDescription._(
      {this.exportArn,
      this.exportStatus,
      this.startTime,
      this.endTime,
      this.exportManifest,
      this.tableArn,
      this.tableId,
      this.exportTime,
      this.clientToken,
      this.s3Bucket,
      this.s3BucketOwner,
      this.s3Prefix,
      this.s3SseAlgorithm,
      this.s3SseKmsKeyId,
      this.failureCode,
      this.failureMessage,
      this.exportFormat,
      this.billedSizeBytes,
      this.itemCount})
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
        exportArn == other.exportArn &&
        exportStatus == other.exportStatus &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        exportManifest == other.exportManifest &&
        tableArn == other.tableArn &&
        tableId == other.tableId &&
        exportTime == other.exportTime &&
        clientToken == other.clientToken &&
        s3Bucket == other.s3Bucket &&
        s3BucketOwner == other.s3BucketOwner &&
        s3Prefix == other.s3Prefix &&
        s3SseAlgorithm == other.s3SseAlgorithm &&
        s3SseKmsKeyId == other.s3SseKmsKeyId &&
        failureCode == other.failureCode &&
        failureMessage == other.failureMessage &&
        exportFormat == other.exportFormat &&
        billedSizeBytes == other.billedSizeBytes &&
        itemCount == other.itemCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportArn.hashCode);
    _$hash = $jc(_$hash, exportStatus.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, exportManifest.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, exportTime.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3BucketOwner.hashCode);
    _$hash = $jc(_$hash, s3Prefix.hashCode);
    _$hash = $jc(_$hash, s3SseAlgorithm.hashCode);
    _$hash = $jc(_$hash, s3SseKmsKeyId.hashCode);
    _$hash = $jc(_$hash, failureCode.hashCode);
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, exportFormat.hashCode);
    _$hash = $jc(_$hash, billedSizeBytes.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportDescriptionBuilder
    implements Builder<ExportDescription, ExportDescriptionBuilder> {
  _$ExportDescription? _$v;

  String? _exportArn;
  String? get exportArn => _$this._exportArn;
  set exportArn(String? exportArn) => _$this._exportArn = exportArn;

  _i2.ExportStatus? _exportStatus;
  _i2.ExportStatus? get exportStatus => _$this._exportStatus;
  set exportStatus(_i2.ExportStatus? exportStatus) =>
      _$this._exportStatus = exportStatus;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _exportManifest;
  String? get exportManifest => _$this._exportManifest;
  set exportManifest(String? exportManifest) =>
      _$this._exportManifest = exportManifest;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

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

  _i3.S3SseAlgorithm? _s3SseAlgorithm;
  _i3.S3SseAlgorithm? get s3SseAlgorithm => _$this._s3SseAlgorithm;
  set s3SseAlgorithm(_i3.S3SseAlgorithm? s3SseAlgorithm) =>
      _$this._s3SseAlgorithm = s3SseAlgorithm;

  String? _s3SseKmsKeyId;
  String? get s3SseKmsKeyId => _$this._s3SseKmsKeyId;
  set s3SseKmsKeyId(String? s3SseKmsKeyId) =>
      _$this._s3SseKmsKeyId = s3SseKmsKeyId;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i4.ExportFormat? _exportFormat;
  _i4.ExportFormat? get exportFormat => _$this._exportFormat;
  set exportFormat(_i4.ExportFormat? exportFormat) =>
      _$this._exportFormat = exportFormat;

  _i5.Int64? _billedSizeBytes;
  _i5.Int64? get billedSizeBytes => _$this._billedSizeBytes;
  set billedSizeBytes(_i5.Int64? billedSizeBytes) =>
      _$this._billedSizeBytes = billedSizeBytes;

  _i5.Int64? _itemCount;
  _i5.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i5.Int64? itemCount) => _$this._itemCount = itemCount;

  ExportDescriptionBuilder() {
    ExportDescription._init(this);
  }

  ExportDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportArn = $v.exportArn;
      _exportStatus = $v.exportStatus;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _exportManifest = $v.exportManifest;
      _tableArn = $v.tableArn;
      _tableId = $v.tableId;
      _exportTime = $v.exportTime;
      _clientToken = $v.clientToken;
      _s3Bucket = $v.s3Bucket;
      _s3BucketOwner = $v.s3BucketOwner;
      _s3Prefix = $v.s3Prefix;
      _s3SseAlgorithm = $v.s3SseAlgorithm;
      _s3SseKmsKeyId = $v.s3SseKmsKeyId;
      _failureCode = $v.failureCode;
      _failureMessage = $v.failureMessage;
      _exportFormat = $v.exportFormat;
      _billedSizeBytes = $v.billedSizeBytes;
      _itemCount = $v.itemCount;
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
            exportArn: exportArn,
            exportStatus: exportStatus,
            startTime: startTime,
            endTime: endTime,
            exportManifest: exportManifest,
            tableArn: tableArn,
            tableId: tableId,
            exportTime: exportTime,
            clientToken: clientToken,
            s3Bucket: s3Bucket,
            s3BucketOwner: s3BucketOwner,
            s3Prefix: s3Prefix,
            s3SseAlgorithm: s3SseAlgorithm,
            s3SseKmsKeyId: s3SseKmsKeyId,
            failureCode: failureCode,
            failureMessage: failureMessage,
            exportFormat: exportFormat,
            billedSizeBytes: billedSizeBytes,
            itemCount: itemCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
