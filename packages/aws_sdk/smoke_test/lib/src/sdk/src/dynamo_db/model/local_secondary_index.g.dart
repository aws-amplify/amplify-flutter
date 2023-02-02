// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.local_secondary_index;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalSecondaryIndex extends LocalSecondaryIndex {
  @override
  final String indexName;
  @override
  final _i4.BuiltList<_i2.KeySchemaElement> keySchema;
  @override
  final _i3.Projection projection;

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

  _i4.ListBuilder<_i2.KeySchemaElement>? _keySchema;
  _i4.ListBuilder<_i2.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i4.ListBuilder<_i2.KeySchemaElement>();
  set keySchema(_i4.ListBuilder<_i2.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i3.ProjectionBuilder? _projection;
  _i3.ProjectionBuilder get projection =>
      _$this._projection ??= new _i3.ProjectionBuilder();
  set projection(_i3.ProjectionBuilder? projection) =>
      _$this._projection = projection;

  LocalSecondaryIndexBuilder() {
    LocalSecondaryIndex._init(this);
  }

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
