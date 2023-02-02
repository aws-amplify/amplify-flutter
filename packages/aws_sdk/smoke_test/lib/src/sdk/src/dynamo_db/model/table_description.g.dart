// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableDescription extends TableDescription {
  @override
  final _i2.ArchivalSummary? archivalSummary;
  @override
  final _i16.BuiltList<_i3.AttributeDefinition>? attributeDefinitions;
  @override
  final _i4.BillingModeSummary? billingModeSummary;
  @override
  final DateTime? creationDateTime;
  @override
  final _i16.BuiltList<_i5.GlobalSecondaryIndexDescription>?
      globalSecondaryIndexes;
  @override
  final String? globalTableVersion;
  @override
  final _i6.Int64? itemCount;
  @override
  final _i16.BuiltList<_i7.KeySchemaElement>? keySchema;
  @override
  final String? latestStreamArn;
  @override
  final String? latestStreamLabel;
  @override
  final _i16.BuiltList<_i8.LocalSecondaryIndexDescription>?
      localSecondaryIndexes;
  @override
  final _i9.ProvisionedThroughputDescription? provisionedThroughput;
  @override
  final _i16.BuiltList<_i10.ReplicaDescription>? replicas;
  @override
  final _i11.RestoreSummary? restoreSummary;
  @override
  final _i12.SseDescription? sseDescription;
  @override
  final _i13.StreamSpecification? streamSpecification;
  @override
  final String? tableArn;
  @override
  final _i14.TableClassSummary? tableClassSummary;
  @override
  final String? tableId;
  @override
  final String? tableName;
  @override
  final _i6.Int64? tableSizeBytes;
  @override
  final _i15.TableStatus? tableStatus;

  factory _$TableDescription(
          [void Function(TableDescriptionBuilder)? updates]) =>
      (new TableDescriptionBuilder()..update(updates))._build();

  _$TableDescription._(
      {this.archivalSummary,
      this.attributeDefinitions,
      this.billingModeSummary,
      this.creationDateTime,
      this.globalSecondaryIndexes,
      this.globalTableVersion,
      this.itemCount,
      this.keySchema,
      this.latestStreamArn,
      this.latestStreamLabel,
      this.localSecondaryIndexes,
      this.provisionedThroughput,
      this.replicas,
      this.restoreSummary,
      this.sseDescription,
      this.streamSpecification,
      this.tableArn,
      this.tableClassSummary,
      this.tableId,
      this.tableName,
      this.tableSizeBytes,
      this.tableStatus})
      : super._();

  @override
  TableDescription rebuild(void Function(TableDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableDescriptionBuilder toBuilder() =>
      new TableDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableDescription &&
        archivalSummary == other.archivalSummary &&
        attributeDefinitions == other.attributeDefinitions &&
        billingModeSummary == other.billingModeSummary &&
        creationDateTime == other.creationDateTime &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        globalTableVersion == other.globalTableVersion &&
        itemCount == other.itemCount &&
        keySchema == other.keySchema &&
        latestStreamArn == other.latestStreamArn &&
        latestStreamLabel == other.latestStreamLabel &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        provisionedThroughput == other.provisionedThroughput &&
        replicas == other.replicas &&
        restoreSummary == other.restoreSummary &&
        sseDescription == other.sseDescription &&
        streamSpecification == other.streamSpecification &&
        tableArn == other.tableArn &&
        tableClassSummary == other.tableClassSummary &&
        tableId == other.tableId &&
        tableName == other.tableName &&
        tableSizeBytes == other.tableSizeBytes &&
        tableStatus == other.tableStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, archivalSummary.hashCode);
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, billingModeSummary.hashCode);
    _$hash = $jc(_$hash, creationDateTime.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, globalTableVersion.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, latestStreamArn.hashCode);
    _$hash = $jc(_$hash, latestStreamLabel.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, replicas.hashCode);
    _$hash = $jc(_$hash, restoreSummary.hashCode);
    _$hash = $jc(_$hash, sseDescription.hashCode);
    _$hash = $jc(_$hash, streamSpecification.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableClassSummary.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tableSizeBytes.hashCode);
    _$hash = $jc(_$hash, tableStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableDescriptionBuilder
    implements Builder<TableDescription, TableDescriptionBuilder> {
  _$TableDescription? _$v;

  _i2.ArchivalSummaryBuilder? _archivalSummary;
  _i2.ArchivalSummaryBuilder get archivalSummary =>
      _$this._archivalSummary ??= new _i2.ArchivalSummaryBuilder();
  set archivalSummary(_i2.ArchivalSummaryBuilder? archivalSummary) =>
      _$this._archivalSummary = archivalSummary;

  _i16.ListBuilder<_i3.AttributeDefinition>? _attributeDefinitions;
  _i16.ListBuilder<_i3.AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i16.ListBuilder<_i3.AttributeDefinition>();
  set attributeDefinitions(
          _i16.ListBuilder<_i3.AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  _i4.BillingModeSummaryBuilder? _billingModeSummary;
  _i4.BillingModeSummaryBuilder get billingModeSummary =>
      _$this._billingModeSummary ??= new _i4.BillingModeSummaryBuilder();
  set billingModeSummary(_i4.BillingModeSummaryBuilder? billingModeSummary) =>
      _$this._billingModeSummary = billingModeSummary;

  DateTime? _creationDateTime;
  DateTime? get creationDateTime => _$this._creationDateTime;
  set creationDateTime(DateTime? creationDateTime) =>
      _$this._creationDateTime = creationDateTime;

  _i16.ListBuilder<_i5.GlobalSecondaryIndexDescription>?
      _globalSecondaryIndexes;
  _i16.ListBuilder<_i5.GlobalSecondaryIndexDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??=
          new _i16.ListBuilder<_i5.GlobalSecondaryIndexDescription>();
  set globalSecondaryIndexes(
          _i16.ListBuilder<_i5.GlobalSecondaryIndexDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  String? _globalTableVersion;
  String? get globalTableVersion => _$this._globalTableVersion;
  set globalTableVersion(String? globalTableVersion) =>
      _$this._globalTableVersion = globalTableVersion;

  _i6.Int64? _itemCount;
  _i6.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i6.Int64? itemCount) => _$this._itemCount = itemCount;

  _i16.ListBuilder<_i7.KeySchemaElement>? _keySchema;
  _i16.ListBuilder<_i7.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i16.ListBuilder<_i7.KeySchemaElement>();
  set keySchema(_i16.ListBuilder<_i7.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  String? _latestStreamArn;
  String? get latestStreamArn => _$this._latestStreamArn;
  set latestStreamArn(String? latestStreamArn) =>
      _$this._latestStreamArn = latestStreamArn;

  String? _latestStreamLabel;
  String? get latestStreamLabel => _$this._latestStreamLabel;
  set latestStreamLabel(String? latestStreamLabel) =>
      _$this._latestStreamLabel = latestStreamLabel;

  _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>? _localSecondaryIndexes;
  _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>
      get localSecondaryIndexes => _$this._localSecondaryIndexes ??=
          new _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>();
  set localSecondaryIndexes(
          _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>?
              localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i9.ProvisionedThroughputDescriptionBuilder? _provisionedThroughput;
  _i9.ProvisionedThroughputDescriptionBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??=
          new _i9.ProvisionedThroughputDescriptionBuilder();
  set provisionedThroughput(
          _i9.ProvisionedThroughputDescriptionBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i16.ListBuilder<_i10.ReplicaDescription>? _replicas;
  _i16.ListBuilder<_i10.ReplicaDescription> get replicas =>
      _$this._replicas ??= new _i16.ListBuilder<_i10.ReplicaDescription>();
  set replicas(_i16.ListBuilder<_i10.ReplicaDescription>? replicas) =>
      _$this._replicas = replicas;

  _i11.RestoreSummaryBuilder? _restoreSummary;
  _i11.RestoreSummaryBuilder get restoreSummary =>
      _$this._restoreSummary ??= new _i11.RestoreSummaryBuilder();
  set restoreSummary(_i11.RestoreSummaryBuilder? restoreSummary) =>
      _$this._restoreSummary = restoreSummary;

  _i12.SseDescriptionBuilder? _sseDescription;
  _i12.SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new _i12.SseDescriptionBuilder();
  set sseDescription(_i12.SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  _i13.StreamSpecificationBuilder? _streamSpecification;
  _i13.StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new _i13.StreamSpecificationBuilder();
  set streamSpecification(
          _i13.StreamSpecificationBuilder? streamSpecification) =>
      _$this._streamSpecification = streamSpecification;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  _i14.TableClassSummaryBuilder? _tableClassSummary;
  _i14.TableClassSummaryBuilder get tableClassSummary =>
      _$this._tableClassSummary ??= new _i14.TableClassSummaryBuilder();
  set tableClassSummary(_i14.TableClassSummaryBuilder? tableClassSummary) =>
      _$this._tableClassSummary = tableClassSummary;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i6.Int64? _tableSizeBytes;
  _i6.Int64? get tableSizeBytes => _$this._tableSizeBytes;
  set tableSizeBytes(_i6.Int64? tableSizeBytes) =>
      _$this._tableSizeBytes = tableSizeBytes;

  _i15.TableStatus? _tableStatus;
  _i15.TableStatus? get tableStatus => _$this._tableStatus;
  set tableStatus(_i15.TableStatus? tableStatus) =>
      _$this._tableStatus = tableStatus;

  TableDescriptionBuilder() {
    TableDescription._init(this);
  }

  TableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _archivalSummary = $v.archivalSummary?.toBuilder();
      _attributeDefinitions = $v.attributeDefinitions?.toBuilder();
      _billingModeSummary = $v.billingModeSummary?.toBuilder();
      _creationDateTime = $v.creationDateTime;
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _globalTableVersion = $v.globalTableVersion;
      _itemCount = $v.itemCount;
      _keySchema = $v.keySchema?.toBuilder();
      _latestStreamArn = $v.latestStreamArn;
      _latestStreamLabel = $v.latestStreamLabel;
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _replicas = $v.replicas?.toBuilder();
      _restoreSummary = $v.restoreSummary?.toBuilder();
      _sseDescription = $v.sseDescription?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _tableArn = $v.tableArn;
      _tableClassSummary = $v.tableClassSummary?.toBuilder();
      _tableId = $v.tableId;
      _tableName = $v.tableName;
      _tableSizeBytes = $v.tableSizeBytes;
      _tableStatus = $v.tableStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableDescription;
  }

  @override
  void update(void Function(TableDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableDescription build() => _build();

  _$TableDescription _build() {
    _$TableDescription _$result;
    try {
      _$result = _$v ??
          new _$TableDescription._(
              archivalSummary: _archivalSummary?.build(),
              attributeDefinitions: _attributeDefinitions?.build(),
              billingModeSummary: _billingModeSummary?.build(),
              creationDateTime: creationDateTime,
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              globalTableVersion: globalTableVersion,
              itemCount: itemCount,
              keySchema: _keySchema?.build(),
              latestStreamArn: latestStreamArn,
              latestStreamLabel: latestStreamLabel,
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              provisionedThroughput: _provisionedThroughput?.build(),
              replicas: _replicas?.build(),
              restoreSummary: _restoreSummary?.build(),
              sseDescription: _sseDescription?.build(),
              streamSpecification: _streamSpecification?.build(),
              tableArn: tableArn,
              tableClassSummary: _tableClassSummary?.build(),
              tableId: tableId,
              tableName: tableName,
              tableSizeBytes: tableSizeBytes,
              tableStatus: tableStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'archivalSummary';
        _archivalSummary?.build();
        _$failedField = 'attributeDefinitions';
        _attributeDefinitions?.build();
        _$failedField = 'billingModeSummary';
        _billingModeSummary?.build();

        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'keySchema';
        _keySchema?.build();

        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'replicas';
        _replicas?.build();
        _$failedField = 'restoreSummary';
        _restoreSummary?.build();
        _$failedField = 'sseDescription';
        _sseDescription?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();

        _$failedField = 'tableClassSummary';
        _tableClassSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TableDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
