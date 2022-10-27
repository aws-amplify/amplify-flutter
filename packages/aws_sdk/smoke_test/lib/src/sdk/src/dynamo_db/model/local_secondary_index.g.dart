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
    return $jf($jc($jc($jc(0, indexName.hashCode), keySchema.hashCode),
        projection.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
