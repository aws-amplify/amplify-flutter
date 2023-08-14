// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_secondary_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalSecondaryIndex extends LocalSecondaryIndex {
  @override
  final String indexName;
  @override
  final _i2.BuiltList<KeySchemaElement> keySchema;
  @override
  final Projection projection;

  factory _$LocalSecondaryIndex(
          [void Function(LocalSecondaryIndexBuilder)? updates]) =>
      (new LocalSecondaryIndexBuilder()..update(updates))._build();

  _$LocalSecondaryIndex._(
      {required this.indexName,
      required this.keySchema,
      required this.projection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'LocalSecondaryIndex', 'indexName');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'LocalSecondaryIndex', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        projection, r'LocalSecondaryIndex', 'projection');
  }

  @override
  LocalSecondaryIndex rebuild(
          void Function(LocalSecondaryIndexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalSecondaryIndexBuilder toBuilder() =>
      new LocalSecondaryIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalSecondaryIndex &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, projection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalSecondaryIndexBuilder
    implements Builder<LocalSecondaryIndex, LocalSecondaryIndexBuilder> {
  _$LocalSecondaryIndex? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.ListBuilder<KeySchemaElement>? _keySchema;
  _i2.ListBuilder<KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i2.ListBuilder<KeySchemaElement>();
  set keySchema(_i2.ListBuilder<KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  ProjectionBuilder? _projection;
  ProjectionBuilder get projection =>
      _$this._projection ??= new ProjectionBuilder();
  set projection(ProjectionBuilder? projection) =>
      _$this._projection = projection;

  LocalSecondaryIndexBuilder();

  LocalSecondaryIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema.toBuilder();
      _projection = $v.projection.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalSecondaryIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalSecondaryIndex;
  }

  @override
  void update(void Function(LocalSecondaryIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalSecondaryIndex build() => _build();

  _$LocalSecondaryIndex _build() {
    _$LocalSecondaryIndex _$result;
    try {
      _$result = _$v ??
          new _$LocalSecondaryIndex._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName, r'LocalSecondaryIndex', 'indexName'),
              keySchema: keySchema.build(),
              projection: projection.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        keySchema.build();
        _$failedField = 'projection';
        projection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalSecondaryIndex', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
