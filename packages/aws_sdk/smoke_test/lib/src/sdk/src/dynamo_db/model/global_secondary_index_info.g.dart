// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexInfo extends GlobalSecondaryIndexInfo {
  @override
  final String? indexName;
  @override
  final _i5.BuiltList<_i2.KeySchemaElement>? keySchema;
  @override
  final _i3.Projection? projection;
  @override
  final _i4.ProvisionedThroughput? provisionedThroughput;

  factory _$GlobalSecondaryIndexInfo(
          [void Function(GlobalSecondaryIndexInfoBuilder)? updates]) =>
      (new GlobalSecondaryIndexInfoBuilder()..update(updates))._build();

  _$GlobalSecondaryIndexInfo._(
      {this.indexName,
      this.keySchema,
      this.projection,
      this.provisionedThroughput})
      : super._();

  @override
  GlobalSecondaryIndexInfo rebuild(
          void Function(GlobalSecondaryIndexInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexInfoBuilder toBuilder() =>
      new GlobalSecondaryIndexInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndexInfo &&
        indexName == other.indexName &&
        keySchema == other.keySchema &&
        projection == other.projection &&
        provisionedThroughput == other.provisionedThroughput;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, indexName.hashCode), keySchema.hashCode),
            projection.hashCode),
        provisionedThroughput.hashCode));
  }
}

class GlobalSecondaryIndexInfoBuilder
    implements
        Builder<GlobalSecondaryIndexInfo, GlobalSecondaryIndexInfoBuilder> {
  _$GlobalSecondaryIndexInfo? _$v;

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

  GlobalSecondaryIndexInfoBuilder() {
    GlobalSecondaryIndexInfo._init(this);
  }

  GlobalSecondaryIndexInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _keySchema = $v.keySchema?.toBuilder();
      _projection = $v.projection?.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndexInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndexInfo;
  }

  @override
  void update(void Function(GlobalSecondaryIndexInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndexInfo build() => _build();

  _$GlobalSecondaryIndexInfo _build() {
    _$GlobalSecondaryIndexInfo _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndexInfo._(
              indexName: indexName,
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
            r'GlobalSecondaryIndexInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
