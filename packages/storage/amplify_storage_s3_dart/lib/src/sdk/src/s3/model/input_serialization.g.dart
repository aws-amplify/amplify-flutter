// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_serialization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputSerialization extends InputSerialization {
  @override
  final CsvInput? csv;
  @override
  final CompressionType? compressionType;
  @override
  final JsonInput? json;
  @override
  final ParquetInput? parquet;

  factory _$InputSerialization(
          [void Function(InputSerializationBuilder)? updates]) =>
      (new InputSerializationBuilder()..update(updates))._build();

  _$InputSerialization._(
      {this.csv, this.compressionType, this.json, this.parquet})
      : super._();

  @override
  InputSerialization rebuild(
          void Function(InputSerializationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputSerializationBuilder toBuilder() =>
      new InputSerializationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputSerialization &&
        csv == other.csv &&
        compressionType == other.compressionType &&
        json == other.json &&
        parquet == other.parquet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, csv.hashCode);
    _$hash = $jc(_$hash, compressionType.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jc(_$hash, parquet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InputSerializationBuilder
    implements Builder<InputSerialization, InputSerializationBuilder> {
  _$InputSerialization? _$v;

  CsvInputBuilder? _csv;
  CsvInputBuilder get csv => _$this._csv ??= new CsvInputBuilder();
  set csv(CsvInputBuilder? csv) => _$this._csv = csv;

  CompressionType? _compressionType;
  CompressionType? get compressionType => _$this._compressionType;
  set compressionType(CompressionType? compressionType) =>
      _$this._compressionType = compressionType;

  JsonInputBuilder? _json;
  JsonInputBuilder get json => _$this._json ??= new JsonInputBuilder();
  set json(JsonInputBuilder? json) => _$this._json = json;

  ParquetInputBuilder? _parquet;
  ParquetInputBuilder get parquet =>
      _$this._parquet ??= new ParquetInputBuilder();
  set parquet(ParquetInputBuilder? parquet) => _$this._parquet = parquet;

  InputSerializationBuilder();

  InputSerializationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _csv = $v.csv?.toBuilder();
      _compressionType = $v.compressionType;
      _json = $v.json?.toBuilder();
      _parquet = $v.parquet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputSerialization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputSerialization;
  }

  @override
  void update(void Function(InputSerializationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputSerialization build() => _build();

  _$InputSerialization _build() {
    _$InputSerialization _$result;
    try {
      _$result = _$v ??
          new _$InputSerialization._(
              csv: _csv?.build(),
              compressionType: compressionType,
              json: _json?.build(),
              parquet: _parquet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'csv';
        _csv?.build();

        _$failedField = 'json';
        _json?.build();
        _$failedField = 'parquet';
        _parquet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InputSerialization', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
