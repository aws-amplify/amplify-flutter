// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_table_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTableInput extends CreateTableInput {
  @override
  final _i3.BuiltList<AttributeDefinition> attributeDefinitions;
  @override
  final String tableName;
  @override
  final _i3.BuiltList<KeySchemaElement> keySchema;
  @override
  final _i3.BuiltList<LocalSecondaryIndex>? localSecondaryIndexes;
  @override
  final _i3.BuiltList<GlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final BillingMode? billingMode;
  @override
  final ProvisionedThroughput? provisionedThroughput;
  @override
  final StreamSpecification? streamSpecification;
  @override
  final SseSpecification? sseSpecification;
  @override
  final _i3.BuiltList<Tag>? tags;
  @override
  final TableClass? tableClass;
  @override
  final bool? deletionProtectionEnabled;

  factory _$CreateTableInput(
          [void Function(CreateTableInputBuilder)? updates]) =>
      (new CreateTableInputBuilder()..update(updates))._build();

  _$CreateTableInput._(
      {required this.attributeDefinitions,
      required this.tableName,
      required this.keySchema,
      this.localSecondaryIndexes,
      this.globalSecondaryIndexes,
      this.billingMode,
      this.provisionedThroughput,
      this.streamSpecification,
      this.sseSpecification,
      this.tags,
      this.tableClass,
      this.deletionProtectionEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeDefinitions, r'CreateTableInput', 'attributeDefinitions');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'CreateTableInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'CreateTableInput', 'keySchema');
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
        tableName == other.tableName &&
        keySchema == other.keySchema &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        billingMode == other.billingMode &&
        provisionedThroughput == other.provisionedThroughput &&
        streamSpecification == other.streamSpecification &&
        sseSpecification == other.sseSpecification &&
        tags == other.tags &&
        tableClass == other.tableClass &&
        deletionProtectionEnabled == other.deletionProtectionEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, streamSpecification.hashCode);
    _$hash = $jc(_$hash, sseSpecification.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, tableClass.hashCode);
    _$hash = $jc(_$hash, deletionProtectionEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTableInputBuilder
    implements Builder<CreateTableInput, CreateTableInputBuilder> {
  _$CreateTableInput? _$v;

  _i3.ListBuilder<AttributeDefinition>? _attributeDefinitions;
  _i3.ListBuilder<AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i3.ListBuilder<AttributeDefinition>();
  set attributeDefinitions(
          _i3.ListBuilder<AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.ListBuilder<KeySchemaElement>? _keySchema;
  _i3.ListBuilder<KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i3.ListBuilder<KeySchemaElement>();
  set keySchema(_i3.ListBuilder<KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i3.ListBuilder<LocalSecondaryIndex>? _localSecondaryIndexes;
  _i3.ListBuilder<LocalSecondaryIndex> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i3.ListBuilder<LocalSecondaryIndex>();
  set localSecondaryIndexes(
          _i3.ListBuilder<LocalSecondaryIndex>? localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i3.ListBuilder<GlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i3.ListBuilder<GlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i3.ListBuilder<GlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i3.ListBuilder<GlobalSecondaryIndex>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  BillingMode? _billingMode;
  BillingMode? get billingMode => _$this._billingMode;
  set billingMode(BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  ProvisionedThroughputBuilder? _provisionedThroughput;
  ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new ProvisionedThroughputBuilder();
  set provisionedThroughput(
          ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  StreamSpecificationBuilder? _streamSpecification;
  StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new StreamSpecificationBuilder();
  set streamSpecification(StreamSpecificationBuilder? streamSpecification) =>
      _$this._streamSpecification = streamSpecification;

  SseSpecificationBuilder? _sseSpecification;
  SseSpecificationBuilder get sseSpecification =>
      _$this._sseSpecification ??= new SseSpecificationBuilder();
  set sseSpecification(SseSpecificationBuilder? sseSpecification) =>
      _$this._sseSpecification = sseSpecification;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TableClass? _tableClass;
  TableClass? get tableClass => _$this._tableClass;
  set tableClass(TableClass? tableClass) => _$this._tableClass = tableClass;

  bool? _deletionProtectionEnabled;
  bool? get deletionProtectionEnabled => _$this._deletionProtectionEnabled;
  set deletionProtectionEnabled(bool? deletionProtectionEnabled) =>
      _$this._deletionProtectionEnabled = deletionProtectionEnabled;

  CreateTableInputBuilder();

  CreateTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions.toBuilder();
      _tableName = $v.tableName;
      _keySchema = $v.keySchema.toBuilder();
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _billingMode = $v.billingMode;
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _tableClass = $v.tableClass;
      _deletionProtectionEnabled = $v.deletionProtectionEnabled;
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
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'CreateTableInput', 'tableName'),
              keySchema: keySchema.build(),
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              billingMode: billingMode,
              provisionedThroughput: _provisionedThroughput?.build(),
              streamSpecification: _streamSpecification?.build(),
              sseSpecification: _sseSpecification?.build(),
              tags: _tags?.build(),
              tableClass: tableClass,
              deletionProtectionEnabled: deletionProtectionEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        attributeDefinitions.build();

        _$failedField = 'keySchema';
        keySchema.build();
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
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
