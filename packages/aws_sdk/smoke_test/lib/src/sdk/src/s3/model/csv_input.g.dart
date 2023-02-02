// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.csv_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CsvInput extends CsvInput {
  @override
  final bool? allowQuotedRecordDelimiter;
  @override
  final String? comments;
  @override
  final String? fieldDelimiter;
  @override
  final _i2.FileHeaderInfo? fileHeaderInfo;
  @override
  final String? quoteCharacter;
  @override
  final String? quoteEscapeCharacter;
  @override
  final String? recordDelimiter;

  factory _$CsvInput([void Function(CsvInputBuilder)? updates]) =>
      (new CsvInputBuilder()..update(updates))._build();

  _$CsvInput._(
      {this.allowQuotedRecordDelimiter,
      this.comments,
      this.fieldDelimiter,
      this.fileHeaderInfo,
      this.quoteCharacter,
      this.quoteEscapeCharacter,
      this.recordDelimiter})
      : super._();

  @override
  CsvInput rebuild(void Function(CsvInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CsvInputBuilder toBuilder() => new CsvInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CsvInput &&
        allowQuotedRecordDelimiter == other.allowQuotedRecordDelimiter &&
        comments == other.comments &&
        fieldDelimiter == other.fieldDelimiter &&
        fileHeaderInfo == other.fileHeaderInfo &&
        quoteCharacter == other.quoteCharacter &&
        quoteEscapeCharacter == other.quoteEscapeCharacter &&
        recordDelimiter == other.recordDelimiter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowQuotedRecordDelimiter.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, fieldDelimiter.hashCode);
    _$hash = $jc(_$hash, fileHeaderInfo.hashCode);
    _$hash = $jc(_$hash, quoteCharacter.hashCode);
    _$hash = $jc(_$hash, quoteEscapeCharacter.hashCode);
    _$hash = $jc(_$hash, recordDelimiter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CsvInputBuilder implements Builder<CsvInput, CsvInputBuilder> {
  _$CsvInput? _$v;

  bool? _allowQuotedRecordDelimiter;
  bool? get allowQuotedRecordDelimiter => _$this._allowQuotedRecordDelimiter;
  set allowQuotedRecordDelimiter(bool? allowQuotedRecordDelimiter) =>
      _$this._allowQuotedRecordDelimiter = allowQuotedRecordDelimiter;

  String? _comments;
  String? get comments => _$this._comments;
  set comments(String? comments) => _$this._comments = comments;

  String? _fieldDelimiter;
  String? get fieldDelimiter => _$this._fieldDelimiter;
  set fieldDelimiter(String? fieldDelimiter) =>
      _$this._fieldDelimiter = fieldDelimiter;

  _i2.FileHeaderInfo? _fileHeaderInfo;
  _i2.FileHeaderInfo? get fileHeaderInfo => _$this._fileHeaderInfo;
  set fileHeaderInfo(_i2.FileHeaderInfo? fileHeaderInfo) =>
      _$this._fileHeaderInfo = fileHeaderInfo;

  String? _quoteCharacter;
  String? get quoteCharacter => _$this._quoteCharacter;
  set quoteCharacter(String? quoteCharacter) =>
      _$this._quoteCharacter = quoteCharacter;

  String? _quoteEscapeCharacter;
  String? get quoteEscapeCharacter => _$this._quoteEscapeCharacter;
  set quoteEscapeCharacter(String? quoteEscapeCharacter) =>
      _$this._quoteEscapeCharacter = quoteEscapeCharacter;

  String? _recordDelimiter;
  String? get recordDelimiter => _$this._recordDelimiter;
  set recordDelimiter(String? recordDelimiter) =>
      _$this._recordDelimiter = recordDelimiter;

  CsvInputBuilder() {
    CsvInput._init(this);
  }

  CsvInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowQuotedRecordDelimiter = $v.allowQuotedRecordDelimiter;
      _comments = $v.comments;
      _fieldDelimiter = $v.fieldDelimiter;
      _fileHeaderInfo = $v.fileHeaderInfo;
      _quoteCharacter = $v.quoteCharacter;
      _quoteEscapeCharacter = $v.quoteEscapeCharacter;
      _recordDelimiter = $v.recordDelimiter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CsvInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CsvInput;
  }

  @override
  void update(void Function(CsvInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CsvInput build() => _build();

  _$CsvInput _build() {
    final _$result = _$v ??
        new _$CsvInput._(
            allowQuotedRecordDelimiter: allowQuotedRecordDelimiter,
            comments: comments,
            fieldDelimiter: fieldDelimiter,
            fileHeaderInfo: fileHeaderInfo,
            quoteCharacter: quoteCharacter,
            quoteEscapeCharacter: quoteEscapeCharacter,
            recordDelimiter: recordDelimiter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
