// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csv_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CsvInput extends CsvInput {
  @override
  final FileHeaderInfo? fileHeaderInfo;
  @override
  final String? comments;
  @override
  final String? quoteEscapeCharacter;
  @override
  final String? recordDelimiter;
  @override
  final String? fieldDelimiter;
  @override
  final String? quoteCharacter;
  @override
  final bool? allowQuotedRecordDelimiter;

  factory _$CsvInput([void Function(CsvInputBuilder)? updates]) =>
      (new CsvInputBuilder()..update(updates))._build();

  _$CsvInput._(
      {this.fileHeaderInfo,
      this.comments,
      this.quoteEscapeCharacter,
      this.recordDelimiter,
      this.fieldDelimiter,
      this.quoteCharacter,
      this.allowQuotedRecordDelimiter})
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
        fileHeaderInfo == other.fileHeaderInfo &&
        comments == other.comments &&
        quoteEscapeCharacter == other.quoteEscapeCharacter &&
        recordDelimiter == other.recordDelimiter &&
        fieldDelimiter == other.fieldDelimiter &&
        quoteCharacter == other.quoteCharacter &&
        allowQuotedRecordDelimiter == other.allowQuotedRecordDelimiter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fileHeaderInfo.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, quoteEscapeCharacter.hashCode);
    _$hash = $jc(_$hash, recordDelimiter.hashCode);
    _$hash = $jc(_$hash, fieldDelimiter.hashCode);
    _$hash = $jc(_$hash, quoteCharacter.hashCode);
    _$hash = $jc(_$hash, allowQuotedRecordDelimiter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CsvInputBuilder implements Builder<CsvInput, CsvInputBuilder> {
  _$CsvInput? _$v;

  FileHeaderInfo? _fileHeaderInfo;
  FileHeaderInfo? get fileHeaderInfo => _$this._fileHeaderInfo;
  set fileHeaderInfo(FileHeaderInfo? fileHeaderInfo) =>
      _$this._fileHeaderInfo = fileHeaderInfo;

  String? _comments;
  String? get comments => _$this._comments;
  set comments(String? comments) => _$this._comments = comments;

  String? _quoteEscapeCharacter;
  String? get quoteEscapeCharacter => _$this._quoteEscapeCharacter;
  set quoteEscapeCharacter(String? quoteEscapeCharacter) =>
      _$this._quoteEscapeCharacter = quoteEscapeCharacter;

  String? _recordDelimiter;
  String? get recordDelimiter => _$this._recordDelimiter;
  set recordDelimiter(String? recordDelimiter) =>
      _$this._recordDelimiter = recordDelimiter;

  String? _fieldDelimiter;
  String? get fieldDelimiter => _$this._fieldDelimiter;
  set fieldDelimiter(String? fieldDelimiter) =>
      _$this._fieldDelimiter = fieldDelimiter;

  String? _quoteCharacter;
  String? get quoteCharacter => _$this._quoteCharacter;
  set quoteCharacter(String? quoteCharacter) =>
      _$this._quoteCharacter = quoteCharacter;

  bool? _allowQuotedRecordDelimiter;
  bool? get allowQuotedRecordDelimiter => _$this._allowQuotedRecordDelimiter;
  set allowQuotedRecordDelimiter(bool? allowQuotedRecordDelimiter) =>
      _$this._allowQuotedRecordDelimiter = allowQuotedRecordDelimiter;

  CsvInputBuilder();

  CsvInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileHeaderInfo = $v.fileHeaderInfo;
      _comments = $v.comments;
      _quoteEscapeCharacter = $v.quoteEscapeCharacter;
      _recordDelimiter = $v.recordDelimiter;
      _fieldDelimiter = $v.fieldDelimiter;
      _quoteCharacter = $v.quoteCharacter;
      _allowQuotedRecordDelimiter = $v.allowQuotedRecordDelimiter;
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
            fileHeaderInfo: fileHeaderInfo,
            comments: comments,
            quoteEscapeCharacter: quoteEscapeCharacter,
            recordDelimiter: recordDelimiter,
            fieldDelimiter: fieldDelimiter,
            quoteCharacter: quoteCharacter,
            allowQuotedRecordDelimiter: allowQuotedRecordDelimiter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
