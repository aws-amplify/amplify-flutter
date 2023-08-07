// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_creation_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableCreationParameters extends TableCreationParameters {
  @override
  final String tableName;
  @override
  final _i2.BuiltList<AttributeDefinition> attributeDefinitions;
  @override
  final _i2.BuiltList<KeySchemaElement> keySchema;
  @override
  final BillingMode? billingMode;
  @override
  final ProvisionedThroughput? provisionedThroughput;
  @override
  final SseSpecification? sseSpecification;
  @override
  final _i2.BuiltList<GlobalSecondaryIndex>? globalSecondaryIndexes;

  factory _$TableCreationParameters(
          [void Function(TableCreationParametersBuilder)? updates]) =>
      (new TableCreationParametersBuilder()..update(updates))._build();

  _$TableCreationParameters._(
      {required this.tableName,
      required this.attributeDefinitions,
      required this.keySchema,
      this.billingMode,
      this.provisionedThroughput,
      this.sseSpecification,
      this.globalSecondaryIndexes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'TableCreationParameters', 'tableName');
    BuiltValueNullFieldError.checkNotNull(attributeDefinitions,
        r'TableCreationParameters', 'attributeDefinitions');
    BuiltValueNullFieldError.checkNotNull(
        keySchema, r'TableCreationParameters', 'keySchema');
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
        tableName == other.tableName &&
        attributeDefinitions == other.attributeDefinitions &&
        keySchema == other.keySchema &&
        billingMode == other.billingMode &&
        provisionedThroughput == other.provisionedThroughput &&
        sseSpecification == other.sseSpecification &&
        globalSecondaryIndexes == other.globalSecondaryIndexes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, sseSpecification.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableCreationParametersBuilder
    implements
        Builder<TableCreationParameters, TableCreationParametersBuilder> {
  _$TableCreationParameters? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i2.ListBuilder<AttributeDefinition>? _attributeDefinitions;
  _i2.ListBuilder<AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i2.ListBuilder<AttributeDefinition>();
  set attributeDefinitions(
          _i2.ListBuilder<AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  _i2.ListBuilder<KeySchemaElement>? _keySchema;
  _i2.ListBuilder<KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i2.ListBuilder<KeySchemaElement>();
  set keySchema(_i2.ListBuilder<KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

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

  SseSpecificationBuilder? _sseSpecification;
  SseSpecificationBuilder get sseSpecification =>
      _$this._sseSpecification ??= new SseSpecificationBuilder();
  set sseSpecification(SseSpecificationBuilder? sseSpecification) =>
      _$this._sseSpecification = sseSpecification;

  _i2.ListBuilder<GlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i2.ListBuilder<GlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i2.ListBuilder<GlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i2.ListBuilder<GlobalSecondaryIndex>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  TableCreationParametersBuilder();

  TableCreationParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _attributeDefinitions = $v.attributeDefinitions.toBuilder();
      _keySchema = $v.keySchema.toBuilder();
      _billingMode = $v.billingMode;
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
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
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'TableCreationParameters', 'tableName'),
              attributeDefinitions: attributeDefinitions.build(),
              keySchema: keySchema.build(),
              billingMode: billingMode,
              provisionedThroughput: _provisionedThroughput?.build(),
              sseSpecification: _sseSpecification?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        attributeDefinitions.build();
        _$failedField = 'keySchema';
        keySchema.build();

        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
