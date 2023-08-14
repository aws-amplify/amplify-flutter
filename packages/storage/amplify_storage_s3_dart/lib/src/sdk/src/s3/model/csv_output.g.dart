// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csv_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CsvOutput extends CsvOutput {
  @override
  final QuoteFields? quoteFields;
  @override
  final String? quoteEscapeCharacter;
  @override
  final String? recordDelimiter;
  @override
  final String? fieldDelimiter;
  @override
  final String? quoteCharacter;

  factory _$CsvOutput([void Function(CsvOutputBuilder)? updates]) =>
      (new CsvOutputBuilder()..update(updates))._build();

  _$CsvOutput._(
      {this.quoteFields,
      this.quoteEscapeCharacter,
      this.recordDelimiter,
      this.fieldDelimiter,
      this.quoteCharacter})
      : super._();

  @override
  CsvOutput rebuild(void Function(CsvOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CsvOutputBuilder toBuilder() => new CsvOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CsvOutput &&
        quoteFields == other.quoteFields &&
        quoteEscapeCharacter == other.quoteEscapeCharacter &&
        recordDelimiter == other.recordDelimiter &&
        fieldDelimiter == other.fieldDelimiter &&
        quoteCharacter == other.quoteCharacter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quoteFields.hashCode);
    _$hash = $jc(_$hash, quoteEscapeCharacter.hashCode);
    _$hash = $jc(_$hash, recordDelimiter.hashCode);
    _$hash = $jc(_$hash, fieldDelimiter.hashCode);
    _$hash = $jc(_$hash, quoteCharacter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CsvOutputBuilder implements Builder<CsvOutput, CsvOutputBuilder> {
  _$CsvOutput? _$v;

  QuoteFields? _quoteFields;
  QuoteFields? get quoteFields => _$this._quoteFields;
  set quoteFields(QuoteFields? quoteFields) =>
      _$this._quoteFields = quoteFields;

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

  CsvOutputBuilder();

  CsvOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quoteFields = $v.quoteFields;
      _quoteEscapeCharacter = $v.quoteEscapeCharacter;
      _recordDelimiter = $v.recordDelimiter;
      _fieldDelimiter = $v.fieldDelimiter;
      _quoteCharacter = $v.quoteCharacter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CsvOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CsvOutput;
  }

  @override
  void update(void Function(CsvOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CsvOutput build() => _build();

  _$CsvOutput _build() {
    final _$result = _$v ??
        new _$CsvOutput._(
            quoteFields: quoteFields,
            quoteEscapeCharacter: quoteEscapeCharacter,
            recordDelimiter: recordDelimiter,
            fieldDelimiter: fieldDelimiter,
            quoteCharacter: quoteCharacter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
