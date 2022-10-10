// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_creation_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableCreationParameters extends TableCreationParameters {
  @override
  final _i8.BuiltList<_i2.AttributeDefinition> attributeDefinitions;
  @override
  final _i3.BillingMode? billingMode;
  @override
  final _i8.BuiltList<_i4.GlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final _i8.BuiltList<_i5.KeySchemaElement> keySchema;
  @override
  final _i6.ProvisionedThroughput? provisionedThroughput;
  @override
  final _i7.SseSpecification? sseSpecification;
  @override
  final String tableName;

  factory _$TableCreationParameters(
          [void Function(TableCreationParametersBuilder)? updates]) =>
      (new TableCreationParametersBuilder()..update(updates))._build();

  _$TableCreationParameters._(
      {required this.attributeDefinitions,
      this.billingMode,
      this.globalSecondaryIndexes,
      required this.keySchema,
      this.provisionedThroughput,
      this.sseSpecification,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(attributeDefinitions,
        r'TableCreationParameters', 'attributeDefinitions');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'TableCreationParameters', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'TableCreationParameters', 'tableName');
  }

  @override
  TableCreationParameters rebuild(
          void Function(TableCreationParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableCreationParametersBuilder toBuilder() =>
      new TableCreationParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableCreationParameters &&
        attributeDefinitions == other.attributeDefinitions &&
        billingMode == other.billingMode &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        keySchema == other.keySchema &&
        provisionedThroughput == other.provisionedThroughput &&
        sseSpecification == other.sseSpecification &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, attributeDefinitions.hashCode),
                            billingMode.hashCode),
                        globalSecondaryIndexes.hashCode),
                    keySchema.hashCode),
                provisionedThroughput.hashCode),
            sseSpecification.hashCode),
        tableName.hashCode));
  }
}

class TableCreationParametersBuilder
    implements
        Builder<TableCreationParameters, TableCreationParametersBuilder> {
  _$TableCreationParameters? _$v;

  _i8.ListBuilder<_i2.AttributeDefinition>? _attributeDefinitions;
  _i8.ListBuilder<_i2.AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i8.ListBuilder<_i2.AttributeDefinition>();
  set attributeDefinitions(
          _i8.ListBuilder<_i2.AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  _i3.BillingMode? _billingMode;
  _i3.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i3.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  _i8.ListBuilder<_i4.GlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i8.ListBuilder<_i4.GlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i8.ListBuilder<_i4.GlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i8.ListBuilder<_i4.GlobalSecondaryIndex>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i8.ListBuilder<_i5.KeySchemaElement>? _keySchema;
  _i8.ListBuilder<_i5.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i8.ListBuilder<_i5.KeySchemaElement>();
  set keySchema(_i8.ListBuilder<_i5.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i6.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i6.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i6.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i6.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i7.SseSpecificationBuilder? _sseSpecification;
  _i7.SseSpecificationBuilder get sseSpecification =>
      _$this._sseSpecification ??= new _i7.SseSpecificationBuilder();
  set sseSpecification(_i7.SseSpecificationBuilder? sseSpecification) =>
      _$this._sseSpecification = sseSpecification;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  TableCreationParametersBuilder() {
    TableCreationParameters._init(this);
  }

  TableCreationParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions.toBuilder();
      _billingMode = $v.billingMode;
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _keySchema = $v.keySchema.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableCreationParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableCreationParameters;
  }

  @override
  void update(void Function(TableCreationParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableCreationParameters build() => _build();

  _$TableCreationParameters _build() {
    _$TableCreationParameters _$result;
    try {
      _$result = _$v ??
          new _$TableCreationParameters._(
              attributeDefinitions: attributeDefinitions.build(),
              billingMode: billingMode,
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              keySchema: keySchema.build(),
              provisionedThroughput: _provisionedThroughput?.build(),
              sseSpecification: _sseSpecification?.build(),
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'TableCreationParameters', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        attributeDefinitions.build();

        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'keySchema';
        keySchema.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TableCreationParameters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
