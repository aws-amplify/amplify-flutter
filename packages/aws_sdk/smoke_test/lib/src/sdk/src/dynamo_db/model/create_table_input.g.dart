// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTableInput extends CreateTableInput {
  @override
  final _i13.BuiltList<_i3.AttributeDefinition> attributeDefinitions;
  @override
  final _i4.BillingMode? billingMode;
  @override
  final _i13.BuiltList<_i5.GlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final _i13.BuiltList<_i6.KeySchemaElement> keySchema;
  @override
  final _i13.BuiltList<_i7.LocalSecondaryIndex>? localSecondaryIndexes;
  @override
  final _i8.ProvisionedThroughput? provisionedThroughput;
  @override
  final _i9.SseSpecification? sseSpecification;
  @override
  final _i10.StreamSpecification? streamSpecification;
  @override
  final _i11.TableClass? tableClass;
  @override
  final String tableName;
  @override
  final _i13.BuiltList<_i12.Tag>? tags;

  factory _$CreateTableInput(
          [void Function(CreateTableInputBuilder)? updates]) =>
      (new CreateTableInputBuilder()..update(updates))._build();

  _$CreateTableInput._(
      {required this.attributeDefinitions,
      this.billingMode,
      this.globalSecondaryIndexes,
      required this.keySchema,
      this.localSecondaryIndexes,
      this.provisionedThroughput,
      this.sseSpecification,
      this.streamSpecification,
      this.tableClass,
      required this.tableName,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeDefinitions, r'CreateTableInput', 'attributeDefinitions');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'CreateTableInput', 'keySchema');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'CreateTableInput', 'tableName');
  }

  @override
  CreateTableInput rebuild(void Function(CreateTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTableInputBuilder toBuilder() =>
      new CreateTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTableInput &&
        attributeDefinitions == other.attributeDefinitions &&
        billingMode == other.billingMode &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        keySchema == other.keySchema &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        provisionedThroughput == other.provisionedThroughput &&
        sseSpecification == other.sseSpecification &&
        streamSpecification == other.streamSpecification &&
        tableClass == other.tableClass &&
        tableName == other.tableName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, sseSpecification.hashCode);
    _$hash = $jc(_$hash, streamSpecification.hashCode);
    _$hash = $jc(_$hash, tableClass.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTableInputBuilder
    implements Builder<CreateTableInput, CreateTableInputBuilder> {
  _$CreateTableInput? _$v;

  _i13.ListBuilder<_i3.AttributeDefinition>? _attributeDefinitions;
  _i13.ListBuilder<_i3.AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i13.ListBuilder<_i3.AttributeDefinition>();
  set attributeDefinitions(
          _i13.ListBuilder<_i3.AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  _i4.BillingMode? _billingMode;
  _i4.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i4.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  _i13.ListBuilder<_i5.GlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i13.ListBuilder<_i5.GlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i13.ListBuilder<_i5.GlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i13.ListBuilder<_i5.GlobalSecondaryIndex>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i13.ListBuilder<_i6.KeySchemaElement>? _keySchema;
  _i13.ListBuilder<_i6.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i13.ListBuilder<_i6.KeySchemaElement>();
  set keySchema(_i13.ListBuilder<_i6.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i13.ListBuilder<_i7.LocalSecondaryIndex>? _localSecondaryIndexes;
  _i13.ListBuilder<_i7.LocalSecondaryIndex> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i13.ListBuilder<_i7.LocalSecondaryIndex>();
  set localSecondaryIndexes(
          _i13.ListBuilder<_i7.LocalSecondaryIndex>? localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i8.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i8.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i8.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i8.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i9.SseSpecificationBuilder? _sseSpecification;
  _i9.SseSpecificationBuilder get sseSpecification =>
      _$this._sseSpecification ??= new _i9.SseSpecificationBuilder();
  set sseSpecification(_i9.SseSpecificationBuilder? sseSpecification) =>
      _$this._sseSpecification = sseSpecification;

  _i10.StreamSpecificationBuilder? _streamSpecification;
  _i10.StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new _i10.StreamSpecificationBuilder();
  set streamSpecification(
          _i10.StreamSpecificationBuilder? streamSpecification) =>
      _$this._streamSpecification = streamSpecification;

  _i11.TableClass? _tableClass;
  _i11.TableClass? get tableClass => _$this._tableClass;
  set tableClass(_i11.TableClass? tableClass) =>
      _$this._tableClass = tableClass;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i13.ListBuilder<_i12.Tag>? _tags;
  _i13.ListBuilder<_i12.Tag> get tags =>
      _$this._tags ??= new _i13.ListBuilder<_i12.Tag>();
  set tags(_i13.ListBuilder<_i12.Tag>? tags) => _$this._tags = tags;

  CreateTableInputBuilder() {
    CreateTableInput._init(this);
  }

  CreateTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions.toBuilder();
      _billingMode = $v.billingMode;
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _keySchema = $v.keySchema.toBuilder();
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _tableClass = $v.tableClass;
      _tableName = $v.tableName;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTableInput;
  }

  @override
  void update(void Function(CreateTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTableInput build() => _build();

  _$CreateTableInput _build() {
    _$CreateTableInput _$result;
    try {
      _$result = _$v ??
          new _$CreateTableInput._(
              attributeDefinitions: attributeDefinitions.build(),
              billingMode: billingMode,
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              keySchema: keySchema.build(),
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              provisionedThroughput: _provisionedThroughput?.build(),
              sseSpecification: _sseSpecification?.build(),
              streamSpecification: _streamSpecification?.build(),
              tableClass: tableClass,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'CreateTableInput', 'tableName'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        attributeDefinitions.build();

        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'keySchema';
        keySchema.build();
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTableInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
