// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_secondary_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndex extends GlobalSecondaryIndex {
  @override
  final String indexName;
  @override
  final _i2.BuiltList<KeySchemaElement> keySchema;
  @override
  final Projection projection;
  @override
  final ProvisionedThroughput? provisionedThroughput;

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

  ProvisionedThroughputBuilder? _provisionedThroughput;
  ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new ProvisionedThroughputBuilder();
  set provisionedThroughput(
          ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  GlobalSecondaryIndexBuilder();

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
