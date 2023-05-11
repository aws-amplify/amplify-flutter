// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.local_secondary_index_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalSecondaryIndexDescription extends LocalSecondaryIndexDescription {
  @override
  final String? indexName;
  @override
  final _i5.BuiltList<_i2.KeySchemaElement>? keySchema;
  @override
  final _i3.Projection? projection;
  @override
  final _i4.Int64? indexSizeBytes;
  @override
  final _i4.Int64? itemCount;
  @override
  final String? indexArn;

  factory _$LocalSecondaryIndexDescription(
          [void Function(LocalSecondaryIndexDescriptionBuilder)? updates]) =>
      (new LocalSecondaryIndexDescriptionBuilder()..update(updates))._build();

  _$LocalSecondaryIndexDescription._(
      {this.indexName,
      this.keySchema,
      this.projection,
      this.indexSizeBytes,
      this.itemCount,
      this.indexArn})
      : super._();

  @override
  LocalSecondaryIndexDescription rebuild(
          void Function(LocalSecondaryIndexDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalSecondaryIndexDescriptionBuilder toBuilder() =>
      new LocalSecondaryIndexDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalSecondaryIndexDescription &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection &&
        indexSizeBytes == other.indexSizeBytes &&
        itemCount == other.itemCount &&
        indexArn == other.indexArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, projection.hashCode);
    _$hash = $jc(_$hash, indexSizeBytes.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, indexArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalSecondaryIndexDescriptionBuilder
    implements
        Builder<LocalSecondaryIndexDescription,
            LocalSecondaryIndexDescriptionBuilder> {
  _$LocalSecondaryIndexDescription? _$v;

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

  _i4.Int64? _indexSizeBytes;
  _i4.Int64? get indexSizeBytes => _$this._indexSizeBytes;
  set indexSizeBytes(_i4.Int64? indexSizeBytes) =>
      _$this._indexSizeBytes = indexSizeBytes;

  _i4.Int64? _itemCount;
  _i4.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i4.Int64? itemCount) => _$this._itemCount = itemCount;

  String? _indexArn;
  String? get indexArn => _$this._indexArn;
  set indexArn(String? indexArn) => _$this._indexArn = indexArn;

  LocalSecondaryIndexDescriptionBuilder() {
    LocalSecondaryIndexDescription._init(this);
  }

  LocalSecondaryIndexDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
      _indexSizeBytes = $v.indexSizeBytes;
      _itemCount = $v.itemCount;
      _indexArn = $v.indexArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalSecondaryIndexDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalSecondaryIndexDescription;
  }

  @override
  void update(void Function(LocalSecondaryIndexDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalSecondaryIndexDescription build() => _build();

  _$LocalSecondaryIndexDescription _build() {
    _$LocalSecondaryIndexDescription _$result;
    try {
      _$result = _$v ??
          new _$LocalSecondaryIndexDescription._(
              indexName: indexName,
              keySchema: _keySchema?.build(),
              projection: _projection?.build(),
              indexSizeBytes: indexSizeBytes,
              itemCount: itemCount,
              indexArn: indexArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        _keySchema?.build();
        _$failedField = 'projection';
        _projection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalSecondaryIndexDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
