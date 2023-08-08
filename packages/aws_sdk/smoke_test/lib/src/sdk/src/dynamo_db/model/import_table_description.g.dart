// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_table_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTableDescription extends ImportTableDescription {
  @override
  final String? importArn;
  @override
  final _i2.ImportStatus? importStatus;
  @override
  final String? tableArn;
  @override
  final String? tableId;
  @override
  final String? clientToken;
  @override
  final _i3.S3BucketSource? s3BucketSource;
  @override
  final _i4.Int64 errorCount;
  @override
  final String? cloudWatchLogGroupArn;
  @override
  final _i5.InputFormat? inputFormat;
  @override
  final _i6.InputFormatOptions? inputFormatOptions;
  @override
  final _i7.InputCompressionType? inputCompressionType;
  @override
  final _i8.TableCreationParameters? tableCreationParameters;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final _i4.Int64? processedSizeBytes;
  @override
  final _i4.Int64 processedItemCount;
  @override
  final _i4.Int64 importedItemCount;
  @override
  final String? failureCode;
  @override
  final String? failureMessage;

  factory _$ImportTableDescription(
          [void Function(ImportTableDescriptionBuilder)? updates]) =>
      (new ImportTableDescriptionBuilder()..update(updates))._build();

  _$ImportTableDescription._(
      {this.importArn,
      this.importStatus,
      this.tableArn,
      this.tableId,
      this.clientToken,
      this.s3BucketSource,
      required this.errorCount,
      this.cloudWatchLogGroupArn,
      this.inputFormat,
      this.inputFormatOptions,
      this.inputCompressionType,
      this.tableCreationParameters,
      this.startTime,
      this.endTime,
      this.processedSizeBytes,
      required this.processedItemCount,
      required this.importedItemCount,
      this.failureCode,
      this.failureMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errorCount, r'ImportTableDescription', 'errorCount');
    BuiltValueNullFieldError.checkNotNull(
        processedItemCount, r'ImportTableDescription', 'processedItemCount');
    BuiltValueNullFieldError.checkNotNull(
        importedItemCount, r'ImportTableDescription', 'importedItemCount');
  }

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
        importArn == other.importArn &&
        importStatus == other.importStatus &&
        tableArn == other.tableArn &&
        tableId == other.tableId &&
        clientToken == other.clientToken &&
        s3BucketSource == other.s3BucketSource &&
        errorCount == other.errorCount &&
        cloudWatchLogGroupArn == other.cloudWatchLogGroupArn &&
        inputFormat == other.inputFormat &&
        inputFormatOptions == other.inputFormatOptions &&
        inputCompressionType == other.inputCompressionType &&
        tableCreationParameters == other.tableCreationParameters &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        processedSizeBytes == other.processedSizeBytes &&
        processedItemCount == other.processedItemCount &&
        importedItemCount == other.importedItemCount &&
        failureCode == other.failureCode &&
        failureMessage == other.failureMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importArn.hashCode);
    _$hash = $jc(_$hash, importStatus.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, s3BucketSource.hashCode);
    _$hash = $jc(_$hash, errorCount.hashCode);
    _$hash = $jc(_$hash, cloudWatchLogGroupArn.hashCode);
    _$hash = $jc(_$hash, inputFormat.hashCode);
    _$hash = $jc(_$hash, inputFormatOptions.hashCode);
    _$hash = $jc(_$hash, inputCompressionType.hashCode);
    _$hash = $jc(_$hash, tableCreationParameters.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, processedSizeBytes.hashCode);
    _$hash = $jc(_$hash, processedItemCount.hashCode);
    _$hash = $jc(_$hash, importedItemCount.hashCode);
    _$hash = $jc(_$hash, failureCode.hashCode);
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportTableDescriptionBuilder
    implements Builder<ImportTableDescription, ImportTableDescriptionBuilder> {
  _$ImportTableDescription? _$v;

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

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.S3BucketSourceBuilder? _s3BucketSource;
  _i3.S3BucketSourceBuilder get s3BucketSource =>
      _$this._s3BucketSource ??= new _i3.S3BucketSourceBuilder();
  set s3BucketSource(_i3.S3BucketSourceBuilder? s3BucketSource) =>
      _$this._s3BucketSource = s3BucketSource;

  _i4.Int64? _errorCount;
  _i4.Int64? get errorCount => _$this._errorCount;
  set errorCount(_i4.Int64? errorCount) => _$this._errorCount = errorCount;

  String? _cloudWatchLogGroupArn;
  String? get cloudWatchLogGroupArn => _$this._cloudWatchLogGroupArn;
  set cloudWatchLogGroupArn(String? cloudWatchLogGroupArn) =>
      _$this._cloudWatchLogGroupArn = cloudWatchLogGroupArn;

  _i5.InputFormat? _inputFormat;
  _i5.InputFormat? get inputFormat => _$this._inputFormat;
  set inputFormat(_i5.InputFormat? inputFormat) =>
      _$this._inputFormat = inputFormat;

  _i6.InputFormatOptionsBuilder? _inputFormatOptions;
  _i6.InputFormatOptionsBuilder get inputFormatOptions =>
      _$this._inputFormatOptions ??= new _i6.InputFormatOptionsBuilder();
  set inputFormatOptions(_i6.InputFormatOptionsBuilder? inputFormatOptions) =>
      _$this._inputFormatOptions = inputFormatOptions;

  _i7.InputCompressionType? _inputCompressionType;
  _i7.InputCompressionType? get inputCompressionType =>
      _$this._inputCompressionType;
  set inputCompressionType(_i7.InputCompressionType? inputCompressionType) =>
      _$this._inputCompressionType = inputCompressionType;

  _i8.TableCreationParametersBuilder? _tableCreationParameters;
  _i8.TableCreationParametersBuilder get tableCreationParameters =>
      _$this._tableCreationParameters ??=
          new _i8.TableCreationParametersBuilder();
  set tableCreationParameters(
          _i8.TableCreationParametersBuilder? tableCreationParameters) =>
      _$this._tableCreationParameters = tableCreationParameters;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  _i4.Int64? _processedSizeBytes;
  _i4.Int64? get processedSizeBytes => _$this._processedSizeBytes;
  set processedSizeBytes(_i4.Int64? processedSizeBytes) =>
      _$this._processedSizeBytes = processedSizeBytes;

  _i4.Int64? _processedItemCount;
  _i4.Int64? get processedItemCount => _$this._processedItemCount;
  set processedItemCount(_i4.Int64? processedItemCount) =>
      _$this._processedItemCount = processedItemCount;

  _i4.Int64? _importedItemCount;
  _i4.Int64? get importedItemCount => _$this._importedItemCount;
  set importedItemCount(_i4.Int64? importedItemCount) =>
      _$this._importedItemCount = importedItemCount;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  ImportTableDescriptionBuilder() {
    ImportTableDescription._init(this);
  }

  ImportTableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importArn = $v.importArn;
      _importStatus = $v.importStatus;
      _tableArn = $v.tableArn;
      _tableId = $v.tableId;
      _clientToken = $v.clientToken;
      _s3BucketSource = $v.s3BucketSource?.toBuilder();
      _errorCount = $v.errorCount;
      _cloudWatchLogGroupArn = $v.cloudWatchLogGroupArn;
      _inputFormat = $v.inputFormat;
      _inputFormatOptions = $v.inputFormatOptions?.toBuilder();
      _inputCompressionType = $v.inputCompressionType;
      _tableCreationParameters = $v.tableCreationParameters?.toBuilder();
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _processedSizeBytes = $v.processedSizeBytes;
      _processedItemCount = $v.processedItemCount;
      _importedItemCount = $v.importedItemCount;
      _failureCode = $v.failureCode;
      _failureMessage = $v.failureMessage;
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
              importArn: importArn,
              importStatus: importStatus,
              tableArn: tableArn,
              tableId: tableId,
              clientToken: clientToken,
              s3BucketSource: _s3BucketSource?.build(),
              errorCount: BuiltValueNullFieldError.checkNotNull(
                  errorCount, r'ImportTableDescription', 'errorCount'),
              cloudWatchLogGroupArn: cloudWatchLogGroupArn,
              inputFormat: inputFormat,
              inputFormatOptions: _inputFormatOptions?.build(),
              inputCompressionType: inputCompressionType,
              tableCreationParameters: _tableCreationParameters?.build(),
              startTime: startTime,
              endTime: endTime,
              processedSizeBytes: processedSizeBytes,
              processedItemCount: BuiltValueNullFieldError.checkNotNull(
                  processedItemCount,
                  r'ImportTableDescription',
                  'processedItemCount'),
              importedItemCount: BuiltValueNullFieldError.checkNotNull(
                  importedItemCount,
                  r'ImportTableDescription',
                  'importedItemCount'),
              failureCode: failureCode,
              failureMessage: failureMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3BucketSource';
        _s3BucketSource?.build();

        _$failedField = 'inputFormatOptions';
        _inputFormatOptions?.build();

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
