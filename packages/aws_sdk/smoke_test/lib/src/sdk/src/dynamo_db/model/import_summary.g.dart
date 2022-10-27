// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportSummary extends ImportSummary {
  @override
  final String? cloudWatchLogGroupArn;
  @override
  final DateTime? endTime;
  @override
  final String? importArn;
  @override
  final _i2.ImportStatus? importStatus;
  @override
  final _i3.InputFormat? inputFormat;
  @override
  final _i4.S3BucketSource? s3BucketSource;
  @override
  final DateTime? startTime;
  @override
  final String? tableArn;

  factory _$ImportSummary([void Function(ImportSummaryBuilder)? updates]) =>
      (new ImportSummaryBuilder()..update(updates))._build();

  _$ImportSummary._(
      {this.cloudWatchLogGroupArn,
      this.endTime,
      this.importArn,
      this.importStatus,
      this.inputFormat,
      this.s3BucketSource,
      this.startTime,
      this.tableArn})
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
        cloudWatchLogGroupArn == other.cloudWatchLogGroupArn &&
        endTime == other.endTime &&
        importArn == other.importArn &&
        importStatus == other.importStatus &&
        inputFormat == other.inputFormat &&
        s3BucketSource == other.s3BucketSource &&
        startTime == other.startTime &&
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
                            $jc($jc(0, cloudWatchLogGroupArn.hashCode),
                                endTime.hashCode),
                            importArn.hashCode),
                        importStatus.hashCode),
                    inputFormat.hashCode),
                s3BucketSource.hashCode),
            startTime.hashCode),
        tableArn.hashCode));
  }
}

class ImportSummaryBuilder
    implements Builder<ImportSummary, ImportSummaryBuilder> {
  _$ImportSummary? _$v;

  String? _cloudWatchLogGroupArn;
  String? get cloudWatchLogGroupArn => _$this._cloudWatchLogGroupArn;
  set cloudWatchLogGroupArn(String? cloudWatchLogGroupArn) =>
      _$this._cloudWatchLogGroupArn = cloudWatchLogGroupArn;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _importArn;
  String? get importArn => _$this._importArn;
  set importArn(String? importArn) => _$this._importArn = importArn;

  _i2.ImportStatus? _importStatus;
  _i2.ImportStatus? get importStatus => _$this._importStatus;
  set importStatus(_i2.ImportStatus? importStatus) =>
      _$this._importStatus = importStatus;

  _i3.InputFormat? _inputFormat;
  _i3.InputFormat? get inputFormat => _$this._inputFormat;
  set inputFormat(_i3.InputFormat? inputFormat) =>
      _$this._inputFormat = inputFormat;

  _i4.S3BucketSourceBuilder? _s3BucketSource;
  _i4.S3BucketSourceBuilder get s3BucketSource =>
      _$this._s3BucketSource ??= new _i4.S3BucketSourceBuilder();
  set s3BucketSource(_i4.S3BucketSourceBuilder? s3BucketSource) =>
      _$this._s3BucketSource = s3BucketSource;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  ImportSummaryBuilder() {
    ImportSummary._init(this);
  }

  ImportSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cloudWatchLogGroupArn = $v.cloudWatchLogGroupArn;
      _endTime = $v.endTime;
      _importArn = $v.importArn;
      _importStatus = $v.importStatus;
      _inputFormat = $v.inputFormat;
      _s3BucketSource = $v.s3BucketSource?.toBuilder();
      _startTime = $v.startTime;
      _tableArn = $v.tableArn;
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
              cloudWatchLogGroupArn: cloudWatchLogGroupArn,
              endTime: endTime,
              importArn: importArn,
              importStatus: importStatus,
              inputFormat: inputFormat,
              s3BucketSource: _s3BucketSource?.build(),
              startTime: startTime,
              tableArn: tableArn);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
