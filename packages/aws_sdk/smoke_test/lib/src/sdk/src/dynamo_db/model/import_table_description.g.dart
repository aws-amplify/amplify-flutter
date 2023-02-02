// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_table_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTableDescription extends ImportTableDescription {
  @override
  final String? clientToken;
  @override
  final String? cloudWatchLogGroupArn;
  @override
  final DateTime? endTime;
  @override
  final _i2.Int64? errorCount;
  @override
  final String? failureCode;
  @override
  final String? failureMessage;
  @override
  final String? importArn;
  @override
  final _i3.ImportStatus? importStatus;
  @override
  final _i2.Int64? importedItemCount;
  @override
  final _i4.InputCompressionType? inputCompressionType;
  @override
  final _i5.InputFormat? inputFormat;
  @override
  final _i6.InputFormatOptions? inputFormatOptions;
  @override
  final _i2.Int64? processedItemCount;
  @override
  final _i2.Int64? processedSizeBytes;
  @override
  final _i7.S3BucketSource? s3BucketSource;
  @override
  final DateTime? startTime;
  @override
  final String? tableArn;
  @override
  final _i8.TableCreationParameters? tableCreationParameters;
  @override
  final String? tableId;

  factory _$ImportTableDescription(
          [void Function(ImportTableDescriptionBuilder)? updates]) =>
      (new ImportTableDescriptionBuilder()..update(updates))._build();

  _$ImportTableDescription._(
      {this.clientToken,
      this.cloudWatchLogGroupArn,
      this.endTime,
      this.errorCount,
      this.failureCode,
      this.failureMessage,
      this.importArn,
      this.importStatus,
      this.importedItemCount,
      this.inputCompressionType,
      this.inputFormat,
      this.inputFormatOptions,
      this.processedItemCount,
      this.processedSizeBytes,
      this.s3BucketSource,
      this.startTime,
      this.tableArn,
      this.tableCreationParameters,
      this.tableId})
      : super._();

  @override
  ImportTableDescription rebuild(
          void Function(ImportTableDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportTableDescriptionBuilder toBuilder() =>
      new ImportTableDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportTableDescription &&
        clientToken == other.clientToken &&
        cloudWatchLogGroupArn == other.cloudWatchLogGroupArn &&
        endTime == other.endTime &&
        errorCount == other.errorCount &&
        failureCode == other.failureCode &&
        failureMessage == other.failureMessage &&
        importArn == other.importArn &&
        importStatus == other.importStatus &&
        importedItemCount == other.importedItemCount &&
        inputCompressionType == other.inputCompressionType &&
        inputFormat == other.inputFormat &&
        inputFormatOptions == other.inputFormatOptions &&
        processedItemCount == other.processedItemCount &&
        processedSizeBytes == other.processedSizeBytes &&
        s3BucketSource == other.s3BucketSource &&
        startTime == other.startTime &&
        tableArn == other.tableArn &&
        tableCreationParameters == other.tableCreationParameters &&
        tableId == other.tableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, cloudWatchLogGroupArn.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, errorCount.hashCode);
    _$hash = $jc(_$hash, failureCode.hashCode);
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, importArn.hashCode);
    _$hash = $jc(_$hash, importStatus.hashCode);
    _$hash = $jc(_$hash, importedItemCount.hashCode);
    _$hash = $jc(_$hash, inputCompressionType.hashCode);
    _$hash = $jc(_$hash, inputFormat.hashCode);
    _$hash = $jc(_$hash, inputFormatOptions.hashCode);
    _$hash = $jc(_$hash, processedItemCount.hashCode);
    _$hash = $jc(_$hash, processedSizeBytes.hashCode);
    _$hash = $jc(_$hash, s3BucketSource.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableCreationParameters.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportTableDescriptionBuilder
    implements Builder<ImportTableDescription, ImportTableDescriptionBuilder> {
  _$ImportTableDescription? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _cloudWatchLogGroupArn;
  String? get cloudWatchLogGroupArn => _$this._cloudWatchLogGroupArn;
  set cloudWatchLogGroupArn(String? cloudWatchLogGroupArn) =>
      _$this._cloudWatchLogGroupArn = cloudWatchLogGroupArn;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  _i2.Int64? _errorCount;
  _i2.Int64? get errorCount => _$this._errorCount;
  set errorCount(_i2.Int64? errorCount) => _$this._errorCount = errorCount;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  String? _importArn;
  String? get importArn => _$this._importArn;
  set importArn(String? importArn) => _$this._importArn = importArn;

  _i3.ImportStatus? _importStatus;
  _i3.ImportStatus? get importStatus => _$this._importStatus;
  set importStatus(_i3.ImportStatus? importStatus) =>
      _$this._importStatus = importStatus;

  _i2.Int64? _importedItemCount;
  _i2.Int64? get importedItemCount => _$this._importedItemCount;
  set importedItemCount(_i2.Int64? importedItemCount) =>
      _$this._importedItemCount = importedItemCount;

  _i4.InputCompressionType? _inputCompressionType;
  _i4.InputCompressionType? get inputCompressionType =>
      _$this._inputCompressionType;
  set inputCompressionType(_i4.InputCompressionType? inputCompressionType) =>
      _$this._inputCompressionType = inputCompressionType;

  _i5.InputFormat? _inputFormat;
  _i5.InputFormat? get inputFormat => _$this._inputFormat;
  set inputFormat(_i5.InputFormat? inputFormat) =>
      _$this._inputFormat = inputFormat;

  _i6.InputFormatOptionsBuilder? _inputFormatOptions;
  _i6.InputFormatOptionsBuilder get inputFormatOptions =>
      _$this._inputFormatOptions ??= new _i6.InputFormatOptionsBuilder();
  set inputFormatOptions(_i6.InputFormatOptionsBuilder? inputFormatOptions) =>
      _$this._inputFormatOptions = inputFormatOptions;

  _i2.Int64? _processedItemCount;
  _i2.Int64? get processedItemCount => _$this._processedItemCount;
  set processedItemCount(_i2.Int64? processedItemCount) =>
      _$this._processedItemCount = processedItemCount;

  _i2.Int64? _processedSizeBytes;
  _i2.Int64? get processedSizeBytes => _$this._processedSizeBytes;
  set processedSizeBytes(_i2.Int64? processedSizeBytes) =>
      _$this._processedSizeBytes = processedSizeBytes;

  _i7.S3BucketSourceBuilder? _s3BucketSource;
  _i7.S3BucketSourceBuilder get s3BucketSource =>
      _$this._s3BucketSource ??= new _i7.S3BucketSourceBuilder();
  set s3BucketSource(_i7.S3BucketSourceBuilder? s3BucketSource) =>
      _$this._s3BucketSource = s3BucketSource;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  _i8.TableCreationParametersBuilder? _tableCreationParameters;
  _i8.TableCreationParametersBuilder get tableCreationParameters =>
      _$this._tableCreationParameters ??=
          new _i8.TableCreationParametersBuilder();
  set tableCreationParameters(
          _i8.TableCreationParametersBuilder? tableCreationParameters) =>
      _$this._tableCreationParameters = tableCreationParameters;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  ImportTableDescriptionBuilder() {
    ImportTableDescription._init(this);
  }

  ImportTableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _cloudWatchLogGroupArn = $v.cloudWatchLogGroupArn;
      _endTime = $v.endTime;
      _errorCount = $v.errorCount;
      _failureCode = $v.failureCode;
      _failureMessage = $v.failureMessage;
      _importArn = $v.importArn;
      _importStatus = $v.importStatus;
      _importedItemCount = $v.importedItemCount;
      _inputCompressionType = $v.inputCompressionType;
      _inputFormat = $v.inputFormat;
      _inputFormatOptions = $v.inputFormatOptions?.toBuilder();
      _processedItemCount = $v.processedItemCount;
      _processedSizeBytes = $v.processedSizeBytes;
      _s3BucketSource = $v.s3BucketSource?.toBuilder();
      _startTime = $v.startTime;
      _tableArn = $v.tableArn;
      _tableCreationParameters = $v.tableCreationParameters?.toBuilder();
      _tableId = $v.tableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportTableDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportTableDescription;
  }

  @override
  void update(void Function(ImportTableDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportTableDescription build() => _build();

  _$ImportTableDescription _build() {
    _$ImportTableDescription _$result;
    try {
      _$result = _$v ??
          new _$ImportTableDescription._(
              clientToken: clientToken,
              cloudWatchLogGroupArn: cloudWatchLogGroupArn,
              endTime: endTime,
              errorCount: errorCount,
              failureCode: failureCode,
              failureMessage: failureMessage,
              importArn: importArn,
              importStatus: importStatus,
              importedItemCount: importedItemCount,
              inputCompressionType: inputCompressionType,
              inputFormat: inputFormat,
              inputFormatOptions: _inputFormatOptions?.build(),
              processedItemCount: processedItemCount,
              processedSizeBytes: processedSizeBytes,
              s3BucketSource: _s3BucketSource?.build(),
              startTime: startTime,
              tableArn: tableArn,
              tableCreationParameters: _tableCreationParameters?.build(),
              tableId: tableId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputFormatOptions';
        _inputFormatOptions?.build();

        _$failedField = 's3BucketSource';
        _s3BucketSource?.build();

        _$failedField = 'tableCreationParameters';
        _tableCreationParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportTableDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
