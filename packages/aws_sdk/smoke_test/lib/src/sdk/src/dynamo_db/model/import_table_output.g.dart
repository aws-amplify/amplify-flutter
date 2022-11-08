// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.import_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTableOutput extends ImportTableOutput {
  @override
  final _i2.ImportTableDescription importTableDescription;

  factory _$ImportTableOutput(
          [void Function(ImportTableOutputBuilder)? updates]) =>
      (new ImportTableOutputBuilder()..update(updates))._build();

  _$ImportTableOutput._({required this.importTableDescription}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        importTableDescription, r'ImportTableOutput', 'importTableDescription');
  }

  @override
  ImportTableOutput rebuild(void Function(ImportTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportTableOutputBuilder toBuilder() =>
      new ImportTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportTableOutput &&
        importTableDescription == other.importTableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, importTableDescription.hashCode));
  }
}

class ImportTableOutputBuilder
    implements Builder<ImportTableOutput, ImportTableOutputBuilder> {
  _$ImportTableOutput? _$v;

  _i2.ImportTableDescriptionBuilder? _importTableDescription;
  _i2.ImportTableDescriptionBuilder get importTableDescription =>
      _$this._importTableDescription ??=
          new _i2.ImportTableDescriptionBuilder();
  set importTableDescription(
          _i2.ImportTableDescriptionBuilder? importTableDescription) =>
      _$this._importTableDescription = importTableDescription;

  ImportTableOutputBuilder() {
    ImportTableOutput._init(this);
  }

  ImportTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importTableDescription = $v.importTableDescription.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportTableOutput;
  }

  @override
  void update(void Function(ImportTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportTableOutput build() => _build();

  _$ImportTableOutput _build() {
    _$ImportTableOutput _$result;
    try {
      _$result = _$v ??
          new _$ImportTableOutput._(
              importTableDescription: importTableDescription.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importTableDescription';
        importTableDescription.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
