// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.csv_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CsvOutput extends CsvOutput {
  @override
  final String? fieldDelimiter;
  @override
  final String? quoteCharacter;
  @override
  final String? quoteEscapeCharacter;
  @override
  final _i2.QuoteFields? quoteFields;
  @override
  final String? recordDelimiter;

  factory _$CsvOutput([void Function(CsvOutputBuilder)? updates]) =>
      (new CsvOutputBuilder()..update(updates))._build();

  _$CsvOutput._(
      {this.fieldDelimiter,
      this.quoteCharacter,
      this.quoteEscapeCharacter,
      this.quoteFields,
      this.recordDelimiter})
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
        fieldDelimiter == other.fieldDelimiter &&
        quoteCharacter == other.quoteCharacter &&
        quoteEscapeCharacter == other.quoteEscapeCharacter &&
        quoteFields == other.quoteFields &&
        recordDelimiter == other.recordDelimiter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldDelimiter.hashCode);
    _$hash = $jc(_$hash, quoteCharacter.hashCode);
    _$hash = $jc(_$hash, quoteEscapeCharacter.hashCode);
    _$hash = $jc(_$hash, quoteFields.hashCode);
    _$hash = $jc(_$hash, recordDelimiter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CsvOutputBuilder implements Builder<CsvOutput, CsvOutputBuilder> {
  _$CsvOutput? _$v;

  String? _fieldDelimiter;
  String? get fieldDelimiter => _$this._fieldDelimiter;
  set fieldDelimiter(String? fieldDelimiter) =>
      _$this._fieldDelimiter = fieldDelimiter;

  String? _quoteCharacter;
  String? get quoteCharacter => _$this._quoteCharacter;
  set quoteCharacter(String? quoteCharacter) =>
      _$this._quoteCharacter = quoteCharacter;

  String? _quoteEscapeCharacter;
  String? get quoteEscapeCharacter => _$this._quoteEscapeCharacter;
  set quoteEscapeCharacter(String? quoteEscapeCharacter) =>
      _$this._quoteEscapeCharacter = quoteEscapeCharacter;

  _i2.QuoteFields? _quoteFields;
  _i2.QuoteFields? get quoteFields => _$this._quoteFields;
  set quoteFields(_i2.QuoteFields? quoteFields) =>
      _$this._quoteFields = quoteFields;

  String? _recordDelimiter;
  String? get recordDelimiter => _$this._recordDelimiter;
  set recordDelimiter(String? recordDelimiter) =>
      _$this._recordDelimiter = recordDelimiter;

  CsvOutputBuilder() {
    CsvOutput._init(this);
  }

  CsvOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldDelimiter = $v.fieldDelimiter;
      _quoteCharacter = $v.quoteCharacter;
      _quoteEscapeCharacter = $v.quoteEscapeCharacter;
      _quoteFields = $v.quoteFields;
      _recordDelimiter = $v.recordDelimiter;
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
            fieldDelimiter: fieldDelimiter,
            quoteCharacter: quoteCharacter,
            quoteEscapeCharacter: quoteEscapeCharacter,
            quoteFields: quoteFields,
            recordDelimiter: recordDelimiter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
