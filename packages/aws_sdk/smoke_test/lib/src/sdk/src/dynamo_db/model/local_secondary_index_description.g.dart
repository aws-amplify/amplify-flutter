// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.local_secondary_index_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalSecondaryIndexDescription extends LocalSecondaryIndexDescription {
  @override
  final String? indexArn;
  @override
  final String? indexName;
  @override
  final _i2.Int64? indexSizeBytes;
  @override
  final _i2.Int64? itemCount;
  @override
  final _i5.BuiltList<_i3.KeySchemaElement>? keySchema;
  @override
  final _i4.Projection? projection;

  factory _$LocalSecondaryIndexDescription(
          [void Function(LocalSecondaryIndexDescriptionBuilder)? updates]) =>
      (new LocalSecondaryIndexDescriptionBuilder()..update(updates))._build();

  _$LocalSecondaryIndexDescription._(
      {this.indexArn,
      this.indexName,
      this.indexSizeBytes,
      this.itemCount,
      this.keySchema,
      this.projection})
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
        indexArn == other.indexArn &&
        indexName == other.indexName &&
        indexSizeBytes == other.indexSizeBytes &&
        itemCount == other.itemCount &&
        keySchema == other.keySchema &&
        projection == other.projection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, indexArn.hashCode), indexName.hashCode),
                    indexSizeBytes.hashCode),
                itemCount.hashCode),
            keySchema.hashCode),
        projection.hashCode));
  }
}

class LocalSecondaryIndexDescriptionBuilder
    implements
        Builder<LocalSecondaryIndexDescription,
            LocalSecondaryIndexDescriptionBuilder> {
  _$LocalSecondaryIndexDescription? _$v;

  String? _indexArn;
  String? get indexArn => _$this._indexArn;
  set indexArn(String? indexArn) => _$this._indexArn = indexArn;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.Int64? _indexSizeBytes;
  _i2.Int64? get indexSizeBytes => _$this._indexSizeBytes;
  set indexSizeBytes(_i2.Int64? indexSizeBytes) =>
      _$this._indexSizeBytes = indexSizeBytes;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

  _i5.ListBuilder<_i3.KeySchemaElement>? _keySchema;
  _i5.ListBuilder<_i3.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i5.ListBuilder<_i3.KeySchemaElement>();
  set keySchema(_i5.ListBuilder<_i3.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i4.ProjectionBuilder? _projection;
  _i4.ProjectionBuilder get projection =>
      _$this._projection ??= new _i4.ProjectionBuilder();
  set projection(_i4.ProjectionBuilder? projection) =>
      _$this._projection = projection;

  LocalSecondaryIndexDescriptionBuilder() {
    LocalSecondaryIndexDescription._init(this);
  }

  LocalSecondaryIndexDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexArn = $v.indexArn;
      _indexName = $v.indexName;
      _indexSizeBytes = $v.indexSizeBytes;
      _itemCount = $v.itemCount;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
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
              indexArn: indexArn,
              indexName: indexName,
              indexSizeBytes: indexSizeBytes,
              itemCount: itemCount,
              keySchema: _keySchema?.build(),
              projection: _projection?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
