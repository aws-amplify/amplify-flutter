// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportSummary extends ImportSummary {
  @override
  final String? importArn;
  @override
  final _i2.ImportStatus? importStatus;
  @override
  final String? tableArn;
  @override
  final _i3.S3BucketSource? s3BucketSource;
  @override
  final String? cloudWatchLogGroupArn;
  @override
  final _i4.InputFormat? inputFormat;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  factory _$ImportSummary([void Function(ImportSummaryBuilder)? updates]) =>
      (new ImportSummaryBuilder()..update(updates))._build();

  _$ImportSummary._(
      {this.importArn,
      this.importStatus,
      this.tableArn,
      this.s3BucketSource,
      this.cloudWatchLogGroupArn,
      this.inputFormat,
      this.startTime,
      this.endTime})
      : super._();

  @override
  ImportSummary rebuild(void Function(ImportSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportSummaryBuilder toBuilder() => new ImportSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportSummary &&
        importArn == other.importArn &&
        importStatus == other.importStatus &&
        tableArn == other.tableArn &&
        s3BucketSource == other.s3BucketSource &&
        cloudWatchLogGroupArn == other.cloudWatchLogGroupArn &&
        inputFormat == other.inputFormat &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importArn.hashCode);
    _$hash = $jc(_$hash, importStatus.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, s3BucketSource.hashCode);
    _$hash = $jc(_$hash, cloudWatchLogGroupArn.hashCode);
    _$hash = $jc(_$hash, inputFormat.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportSummaryBuilder
    implements Builder<ImportSummary, ImportSummaryBuilder> {
  _$ImportSummary? _$v;

  String? _importArn;
  String? get importArn => _$this._importArn;
  set importArn(String? importArn) => _$this._importArn = importArn;

  _i2.ImportStatus? _importStatus;
  _i2.ImportStatus? get importStatus => _$this._importStatus;
  set importStatus(_i2.ImportStatus? importStatus) =>
      _$this._importStatus = importStatus;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  _i3.S3BucketSourceBuilder? _s3BucketSource;
  _i3.S3BucketSourceBuilder get s3BucketSource =>
      _$this._s3BucketSource ??= new _i3.S3BucketSourceBuilder();
  set s3BucketSource(_i3.S3BucketSourceBuilder? s3BucketSource) =>
      _$this._s3BucketSource = s3BucketSource;

  String? _cloudWatchLogGroupArn;
  String? get cloudWatchLogGroupArn => _$this._cloudWatchLogGroupArn;
  set cloudWatchLogGroupArn(String? cloudWatchLogGroupArn) =>
      _$this._cloudWatchLogGroupArn = cloudWatchLogGroupArn;

  _i4.InputFormat? _inputFormat;
  _i4.InputFormat? get inputFormat => _$this._inputFormat;
  set inputFormat(_i4.InputFormat? inputFormat) =>
      _$this._inputFormat = inputFormat;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  ImportSummaryBuilder() {
    ImportSummary._init(this);
  }

  ImportSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importArn = $v.importArn;
      _importStatus = $v.importStatus;
      _tableArn = $v.tableArn;
      _s3BucketSource = $v.s3BucketSource?.toBuilder();
      _cloudWatchLogGroupArn = $v.cloudWatchLogGroupArn;
      _inputFormat = $v.inputFormat;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportSummary;
  }

  @override
  void update(void Function(ImportSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportSummary build() => _build();

  _$ImportSummary _build() {
    _$ImportSummary _$result;
    try {
      _$result = _$v ??
          new _$ImportSummary._(
              importArn: importArn,
              importStatus: importStatus,
              tableArn: tableArn,
              s3BucketSource: _s3BucketSource?.build(),
              cloudWatchLogGroupArn: cloudWatchLogGroupArn,
              inputFormat: inputFormat,
              startTime: startTime,
              endTime: endTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3BucketSource';
        _s3BucketSource?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
