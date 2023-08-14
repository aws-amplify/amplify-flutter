// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_format_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputFormatOptions extends InputFormatOptions {
  @override
  final CsvOptions? csv;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, csv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InputFormatOptionsBuilder
    implements Builder<InputFormatOptions, InputFormatOptionsBuilder> {
  _$InputFormatOptions? _$v;

  CsvOptionsBuilder? _csv;
  CsvOptionsBuilder get csv => _$this._csv ??= new CsvOptionsBuilder();
  set csv(CsvOptionsBuilder? csv) => _$this._csv = csv;

  InputFormatOptionsBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
