// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_global_secondary_index_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGlobalSecondaryIndexAction
    extends CreateGlobalSecondaryIndexAction {
  @override
  final String indexName;
  @override
  final _i5.BuiltList<_i2.KeySchemaElement> keySchema;
  @override
  final _i3.Projection projection;
  @override
  final _i4.ProvisionedThroughput? provisionedThroughput;

  factory _$CreateGlobalSecondaryIndexAction(
          [void Function(CreateGlobalSecondaryIndexActionBuilder)? updates]) =>
      (new CreateGlobalSecondaryIndexActionBuilder()..update(updates))._build();

  _$CreateGlobalSecondaryIndexAction._(
      {required this.indexName,
      required this.keySchema,
      required this.projection,
      this.provisionedThroughput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'CreateGlobalSecondaryIndexAction', 'indexName');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'CreateGlobalSecondaryIndexAction', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        projection, r'CreateGlobalSecondaryIndexAction', 'projection');
  }

  @override
  CreateGlobalSecondaryIndexAction rebuild(
          void Function(CreateGlobalSecondaryIndexActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGlobalSecondaryIndexActionBuilder toBuilder() =>
      new CreateGlobalSecondaryIndexActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGlobalSecondaryIndexAction &&
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

class CreateGlobalSecondaryIndexActionBuilder
    implements
        Builder<CreateGlobalSecondaryIndexAction,
            CreateGlobalSecondaryIndexActionBuilder> {
  _$CreateGlobalSecondaryIndexAction? _$v;

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

  CreateGlobalSecondaryIndexActionBuilder() {
    CreateGlobalSecondaryIndexAction._init(this);
  }

  CreateGlobalSecondaryIndexActionBuilder get _$this {
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
  void replace(CreateGlobalSecondaryIndexAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGlobalSecondaryIndexAction;
  }

  @override
  void update(void Function(CreateGlobalSecondaryIndexActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGlobalSecondaryIndexAction build() => _build();

  _$CreateGlobalSecondaryIndexAction _build() {
    _$CreateGlobalSecondaryIndexAction _$result;
    try {
      _$result = _$v ??
          new _$CreateGlobalSecondaryIndexAction._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName, r'CreateGlobalSecondaryIndexAction', 'indexName'),
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
            r'CreateGlobalSecondaryIndexAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
