// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.input_format_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputFormatOptions extends InputFormatOptions {
  @override
  final _i2.CsvOptions? csv;

  factory _$InputFormatOptions(
          [void Function(InputFormatOptionsBuilder)? updates]) =>
      (new InputFormatOptionsBuilder()..update(updates))._build();

  _$InputFormatOptions._({this.csv}) : super._();

  @override
  InputFormatOptions rebuild(
          void Function(InputFormatOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputFormatOptionsBuilder toBuilder() =>
      new InputFormatOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputFormatOptions && csv == other.csv;
  }

  @override
  int get hashCode {
    return $jf($jc(0, csv.hashCode));
  }
}

class InputFormatOptionsBuilder
    implements Builder<InputFormatOptions, InputFormatOptionsBuilder> {
  _$InputFormatOptions? _$v;

  _i2.CsvOptionsBuilder? _csv;
  _i2.CsvOptionsBuilder get csv => _$this._csv ??= new _i2.CsvOptionsBuilder();
  set csv(_i2.CsvOptionsBuilder? csv) => _$this._csv = csv;

  InputFormatOptionsBuilder() {
    InputFormatOptions._init(this);
  }

  InputFormatOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _csv = $v.csv?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputFormatOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputFormatOptions;
  }

  @override
  void update(void Function(InputFormatOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputFormatOptions build() => _build();

  _$InputFormatOptions _build() {
    _$InputFormatOptions _$result;
    try {
      _$result = _$v ?? new _$InputFormatOptions._(csv: _csv?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'csv';
        _csv?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InputFormatOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
