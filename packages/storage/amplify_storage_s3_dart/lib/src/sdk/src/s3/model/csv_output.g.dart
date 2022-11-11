// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.csv_output;

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
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fieldDelimiter.hashCode), quoteCharacter.hashCode),
                quoteEscapeCharacter.hashCode),
            quoteFields.hashCode),
        recordDelimiter.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
