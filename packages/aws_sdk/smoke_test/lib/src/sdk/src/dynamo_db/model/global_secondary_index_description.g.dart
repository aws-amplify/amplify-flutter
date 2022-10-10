// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexDescription
    extends GlobalSecondaryIndexDescription {
  @override
  final bool? backfilling;
  @override
  final String? indexArn;
  @override
  final String? indexName;
  @override
  final _i2.Int64? indexSizeBytes;
  @override
  final _i3.IndexStatus? indexStatus;
  @override
  final _i2.Int64? itemCount;
  @override
  final _i7.BuiltList<_i4.KeySchemaElement>? keySchema;
  @override
  final _i5.Projection? projection;
  @override
  final _i6.ProvisionedThroughputDescription? provisionedThroughput;

  factory _$GlobalSecondaryIndexDescription(
          [void Function(GlobalSecondaryIndexDescriptionBuilder)? updates]) =>
      (new GlobalSecondaryIndexDescriptionBuilder()..update(updates))._build();

  _$GlobalSecondaryIndexDescription._(
      {this.backfilling,
      this.indexArn,
      this.indexName,
      this.indexSizeBytes,
      this.indexStatus,
      this.itemCount,
      this.keySchema,
      this.projection,
      this.provisionedThroughput})
      : super._();

  @override
  GlobalSecondaryIndexDescription rebuild(
          void Function(GlobalSecondaryIndexDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexDescriptionBuilder toBuilder() =>
      new GlobalSecondaryIndexDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndexDescription &&
        backfilling == other.backfilling &&
        indexArn == other.indexArn &&
        indexName == other.indexName &&
        indexSizeBytes == other.indexSizeBytes &&
        indexStatus == other.indexStatus &&
        itemCount == other.itemCount &&
        keySchema == other.keySchema &&
        projection == other.projection &&
        provisionedThroughput == other.provisionedThroughput;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, backfilling.hashCode),
                                    indexArn.hashCode),
                                indexName.hashCode),
                            indexSizeBytes.hashCode),
                        indexStatus.hashCode),
                    itemCount.hashCode),
                keySchema.hashCode),
            projection.hashCode),
        provisionedThroughput.hashCode));
  }
}

class GlobalSecondaryIndexDescriptionBuilder
    implements
        Builder<GlobalSecondaryIndexDescription,
            GlobalSecondaryIndexDescriptionBuilder> {
  _$GlobalSecondaryIndexDescription? _$v;

  bool? _backfilling;
  bool? get backfilling => _$this._backfilling;
  set backfilling(bool? backfilling) => _$this._backfilling = backfilling;

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

  _i3.IndexStatus? _indexStatus;
  _i3.IndexStatus? get indexStatus => _$this._indexStatus;
  set indexStatus(_i3.IndexStatus? indexStatus) =>
      _$this._indexStatus = indexStatus;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

  _i7.ListBuilder<_i4.KeySchemaElement>? _keySchema;
  _i7.ListBuilder<_i4.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i7.ListBuilder<_i4.KeySchemaElement>();
  set keySchema(_i7.ListBuilder<_i4.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i5.ProjectionBuilder? _projection;
  _i5.ProjectionBuilder get projection =>
      _$this._projection ??= new _i5.ProjectionBuilder();
  set projection(_i5.ProjectionBuilder? projection) =>
      _$this._projection = projection;

  _i6.ProvisionedThroughputDescriptionBuilder? _provisionedThroughput;
  _i6.ProvisionedThroughputDescriptionBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??=
          new _i6.ProvisionedThroughputDescriptionBuilder();
  set provisionedThroughput(
          _i6.ProvisionedThroughputDescriptionBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  GlobalSecondaryIndexDescriptionBuilder() {
    GlobalSecondaryIndexDescription._init(this);
  }

  GlobalSecondaryIndexDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backfilling = $v.backfilling;
      _indexArn = $v.indexArn;
      _indexName = $v.indexName;
      _indexSizeBytes = $v.indexSizeBytes;
      _indexStatus = $v.indexStatus;
      _itemCount = $v.itemCount;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndexDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndexDescription;
  }

  @override
  void update(void Function(GlobalSecondaryIndexDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndexDescription build() => _build();

  _$GlobalSecondaryIndexDescription _build() {
    _$GlobalSecondaryIndexDescription _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndexDescription._(
              backfilling: backfilling,
              indexArn: indexArn,
              indexName: indexName,
              indexSizeBytes: indexSizeBytes,
              indexStatus: indexStatus,
              itemCount: itemCount,
              keySchema: _keySchema?.build(),
              projection: _projection?.build(),
              provisionedThroughput: _provisionedThroughput?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keySchema';
        _keySchema?.build();
        _$failedField = 'projection';
        _projection?.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalSecondaryIndexDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
