// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTableInput extends ImportTableInput {
  @override
  final String? clientToken;
  @override
  final _i3.S3BucketSource s3BucketSource;
  @override
  final _i4.InputFormat inputFormat;
  @override
  final _i5.InputFormatOptions? inputFormatOptions;
  @override
  final _i6.InputCompressionType? inputCompressionType;
  @override
  final _i7.TableCreationParameters tableCreationParameters;

  factory _$ImportTableInput(
          [void Function(ImportTableInputBuilder)? updates]) =>
      (new ImportTableInputBuilder()..update(updates))._build();

  _$ImportTableInput._(
      {this.clientToken,
      required this.s3BucketSource,
      required this.inputFormat,
      this.inputFormatOptions,
      this.inputCompressionType,
      required this.tableCreationParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        s3BucketSource, r'ImportTableInput', 's3BucketSource');
    BuiltValueNullFieldError.checkNotNull(
        inputFormat, r'ImportTableInput', 'inputFormat');
    BuiltValueNullFieldError.checkNotNull(tableCreationParameters,
        r'ImportTableInput', 'tableCreationParameters');
  }

  @override
  ImportTableInput rebuild(void Function(ImportTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportTableInputBuilder toBuilder() =>
      new ImportTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportTableInput &&
        clientToken == other.clientToken &&
        s3BucketSource == other.s3BucketSource &&
        inputFormat == other.inputFormat &&
        inputFormatOptions == other.inputFormatOptions &&
        inputCompressionType == other.inputCompressionType &&
        tableCreationParameters == other.tableCreationParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, s3BucketSource.hashCode);
    _$hash = $jc(_$hash, inputFormat.hashCode);
    _$hash = $jc(_$hash, inputFormatOptions.hashCode);
    _$hash = $jc(_$hash, inputCompressionType.hashCode);
    _$hash = $jc(_$hash, tableCreationParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportTableInputBuilder
    implements Builder<ImportTableInput, ImportTableInputBuilder> {
  _$ImportTableInput? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.S3BucketSourceBuilder? _s3BucketSource;
  _i3.S3BucketSourceBuilder get s3BucketSource =>
      _$this._s3BucketSource ??= new _i3.S3BucketSourceBuilder();
  set s3BucketSource(_i3.S3BucketSourceBuilder? s3BucketSource) =>
      _$this._s3BucketSource = s3BucketSource;

  _i4.InputFormat? _inputFormat;
  _i4.InputFormat? get inputFormat => _$this._inputFormat;
  set inputFormat(_i4.InputFormat? inputFormat) =>
      _$this._inputFormat = inputFormat;

  _i5.InputFormatOptionsBuilder? _inputFormatOptions;
  _i5.InputFormatOptionsBuilder get inputFormatOptions =>
      _$this._inputFormatOptions ??= new _i5.InputFormatOptionsBuilder();
  set inputFormatOptions(_i5.InputFormatOptionsBuilder? inputFormatOptions) =>
      _$this._inputFormatOptions = inputFormatOptions;

  _i6.InputCompressionType? _inputCompressionType;
  _i6.InputCompressionType? get inputCompressionType =>
      _$this._inputCompressionType;
  set inputCompressionType(_i6.InputCompressionType? inputCompressionType) =>
      _$this._inputCompressionType = inputCompressionType;

  _i7.TableCreationParametersBuilder? _tableCreationParameters;
  _i7.TableCreationParametersBuilder get tableCreationParameters =>
      _$this._tableCreationParameters ??=
          new _i7.TableCreationParametersBuilder();
  set tableCreationParameters(
          _i7.TableCreationParametersBuilder? tableCreationParameters) =>
      _$this._tableCreationParameters = tableCreationParameters;

  ImportTableInputBuilder() {
    ImportTableInput._init(this);
  }

  ImportTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _s3BucketSource = $v.s3BucketSource.toBuilder();
      _inputFormat = $v.inputFormat;
      _inputFormatOptions = $v.inputFormatOptions?.toBuilder();
      _inputCompressionType = $v.inputCompressionType;
      _tableCreationParameters = $v.tableCreationParameters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportTableInput;
  }

  @override
  void update(void Function(ImportTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportTableInput build() => _build();

  _$ImportTableInput _build() {
    _$ImportTableInput _$result;
    try {
      _$result = _$v ??
          new _$ImportTableInput._(
              clientToken: clientToken,
              s3BucketSource: s3BucketSource.build(),
              inputFormat: BuiltValueNullFieldError.checkNotNull(
                  inputFormat, r'ImportTableInput', 'inputFormat'),
              inputFormatOptions: _inputFormatOptions?.build(),
              inputCompressionType: inputCompressionType,
              tableCreationParameters: tableCreationParameters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3BucketSource';
        s3BucketSource.build();

        _$failedField = 'inputFormatOptions';
        _inputFormatOptions?.build();

        _$failedField = 'tableCreationParameters';
        tableCreationParameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportTableInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
