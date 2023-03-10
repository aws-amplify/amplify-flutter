// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndex extends GlobalSecondaryIndex {
  @override
  final String indexName;
  @override
  final _i5.BuiltList<_i2.KeySchemaElement> keySchema;
  @override
  final _i3.Projection projection;
  @override
  final _i4.ProvisionedThroughput? provisionedThroughput;

  factory _$GlobalSecondaryIndex(
          [void Function(GlobalSecondaryIndexBuilder)? updates]) =>
      (new GlobalSecondaryIndexBuilder()..update(updates))._build();

  _$GlobalSecondaryIndex._(
      {required this.indexName,
      required this.keySchema,
      required this.projection,
      this.provisionedThroughput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'GlobalSecondaryIndex', 'indexName');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'GlobalSecondaryIndex', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        projection, r'GlobalSecondaryIndex', 'projection');
  }

  @override
  GlobalSecondaryIndex rebuild(
          void Function(GlobalSecondaryIndexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexBuilder toBuilder() =>
      new GlobalSecondaryIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndex &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection &&
        provisionedThroughput == other.provisionedThroughput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, projection.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalSecondaryIndexBuilder
    implements Builder<GlobalSecondaryIndex, GlobalSecondaryIndexBuilder> {
  _$GlobalSecondaryIndex? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i5.ListBuilder<_i2.KeySchemaElement>? _keySchema;
  _i5.ListBuilder<_i2.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i5.ListBuilder<_i2.KeySchemaElement>();
  set keySchema(_i5.ListBuilder<_i2.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i3.ProjectionBuilder? _projection;
  _i3.ProjectionBuilder get projection =>
      _$this._projection ??= new _i3.ProjectionBuilder();
  set projection(_i3.ProjectionBuilder? projection) =>
      _$this._projection = projection;

  _i4.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i4.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i4.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i4.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  GlobalSecondaryIndexBuilder() {
    GlobalSecondaryIndex._init(this);
  }

  GlobalSecondaryIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema.toBuilder();
      _projection = $v.projection.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndex;
  }

  @override
  void update(void Function(GlobalSecondaryIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndex build() => _build();

  _$GlobalSecondaryIndex _build() {
    _$GlobalSecondaryIndex _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndex._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName, r'GlobalSecondaryIndex', 'indexName'),
              keySchema: keySchema.build(),
              projection: projection.build(),
              provisionedThroughput: _provisionedThroughput?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        keySchema.build();
        _$failedField = 'projection';
        projection.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalSecondaryIndex', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
