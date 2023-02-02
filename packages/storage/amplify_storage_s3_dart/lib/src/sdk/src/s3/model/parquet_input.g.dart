// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.parquet_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParquetInput extends ParquetInput {
  factory _$ParquetInput([void Function(ParquetInputBuilder)? updates]) =>
      (new ParquetInputBuilder()..update(updates))._build();

  _$ParquetInput._() : super._();

  @override
  ParquetInput rebuild(void Function(ParquetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParquetInputBuilder toBuilder() => new ParquetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParquetInput;
  }

  @override
  int get hashCode {
    return 810668991;
  }
}

class ParquetInputBuilder
    implements Builder<ParquetInput, ParquetInputBuilder> {
  _$ParquetInput? _$v;

  ParquetInputBuilder() {
    ParquetInput._init(this);
  }

  @override
  void replace(ParquetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParquetInput;
  }

  @override
  void update(void Function(ParquetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParquetInput build() => _build();

  _$ParquetInput _build() {
    final _$result = _$v ?? new _$ParquetInput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
