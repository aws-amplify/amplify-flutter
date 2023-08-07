// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_serialization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputSerialization extends OutputSerialization {
  @override
  final CsvOutput? csv;
  @override
  final JsonOutput? json;

  factory _$OutputSerialization(
          [void Function(OutputSerializationBuilder)? updates]) =>
      (new OutputSerializationBuilder()..update(updates))._build();

  _$OutputSerialization._({this.csv, this.json}) : super._();

  @override
  OutputSerialization rebuild(
          void Function(OutputSerializationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputSerializationBuilder toBuilder() =>
      new OutputSerializationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputSerialization &&
        csv == other.csv &&
        json == other.json;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, csv.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OutputSerializationBuilder
    implements Builder<OutputSerialization, OutputSerializationBuilder> {
  _$OutputSerialization? _$v;

  CsvOutputBuilder? _csv;
  CsvOutputBuilder get csv => _$this._csv ??= new CsvOutputBuilder();
  set csv(CsvOutputBuilder? csv) => _$this._csv = csv;

  JsonOutputBuilder? _json;
  JsonOutputBuilder get json => _$this._json ??= new JsonOutputBuilder();
  set json(JsonOutputBuilder? json) => _$this._json = json;

  OutputSerializationBuilder();

  OutputSerializationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _csv = $v.csv?.toBuilder();
      _json = $v.json?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputSerialization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputSerialization;
  }

  @override
  void update(void Function(OutputSerializationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputSerialization build() => _build();

  _$OutputSerialization _build() {
    _$OutputSerialization _$result;
    try {
      _$result = _$v ??
          new _$OutputSerialization._(csv: _csv?.build(), json: _json?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'csv';
        _csv?.build();
        _$failedField = 'json';
        _json?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OutputSerialization', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
