// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.input_serialization;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputSerialization extends InputSerialization {
  @override
  final _i2.CompressionType? compressionType;
  @override
  final _i3.CsvInput? csv;
  @override
  final _i4.JsonInput? json;
  @override
  final _i5.ParquetInput? parquet;

  factory _$InputSerialization(
          [void Function(InputSerializationBuilder)? updates]) =>
      (new InputSerializationBuilder()..update(updates))._build();

  _$InputSerialization._(
      {this.compressionType, this.csv, this.json, this.parquet})
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
        compressionType == other.compressionType &&
        csv == other.csv &&
        json == other.json &&
        parquet == other.parquet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, compressionType.hashCode);
    _$hash = $jc(_$hash, csv.hashCode);
    _$hash = $jc(_$hash, json.hashCode);
    _$hash = $jc(_$hash, parquet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InputSerializationBuilder
    implements Builder<InputSerialization, InputSerializationBuilder> {
  _$InputSerialization? _$v;

  _i2.CompressionType? _compressionType;
  _i2.CompressionType? get compressionType => _$this._compressionType;
  set compressionType(_i2.CompressionType? compressionType) =>
      _$this._compressionType = compressionType;

  _i3.CsvInputBuilder? _csv;
  _i3.CsvInputBuilder get csv => _$this._csv ??= new _i3.CsvInputBuilder();
  set csv(_i3.CsvInputBuilder? csv) => _$this._csv = csv;

  _i4.JsonInputBuilder? _json;
  _i4.JsonInputBuilder get json => _$this._json ??= new _i4.JsonInputBuilder();
  set json(_i4.JsonInputBuilder? json) => _$this._json = json;

  _i5.ParquetInputBuilder? _parquet;
  _i5.ParquetInputBuilder get parquet =>
      _$this._parquet ??= new _i5.ParquetInputBuilder();
  set parquet(_i5.ParquetInputBuilder? parquet) => _$this._parquet = parquet;

  InputSerializationBuilder() {
    InputSerialization._init(this);
  }

  InputSerializationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _compressionType = $v.compressionType;
      _csv = $v.csv?.toBuilder();
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
              compressionType: compressionType,
              csv: _csv?.build(),
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
