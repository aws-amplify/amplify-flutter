// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableDescription extends TableDescription {
  @override
  final _i3.BuiltList<AttributeDefinition>? attributeDefinitions;
  @override
  final String? tableName;
  @override
  final _i3.BuiltList<KeySchemaElement>? keySchema;
  @override
  final TableStatus? tableStatus;
  @override
  final DateTime? creationDateTime;
  @override
  final ProvisionedThroughputDescription? provisionedThroughput;
  @override
  final _i2.Int64? tableSizeBytes;
  @override
  final _i2.Int64? itemCount;
  @override
  final String? tableArn;
  @override
  final String? tableId;
  @override
  final BillingModeSummary? billingModeSummary;
  @override
  final _i3.BuiltList<LocalSecondaryIndexDescription>? localSecondaryIndexes;
  @override
  final _i3.BuiltList<GlobalSecondaryIndexDescription>? globalSecondaryIndexes;
  @override
  final StreamSpecification? streamSpecification;
  @override
  final String? latestStreamLabel;
  @override
  final String? latestStreamArn;
  @override
  final String? globalTableVersion;
  @override
  final _i3.BuiltList<ReplicaDescription>? replicas;
  @override
  final RestoreSummary? restoreSummary;
  @override
  final SseDescription? sseDescription;
  @override
  final ArchivalSummary? archivalSummary;
  @override
  final TableClassSummary? tableClassSummary;
  @override
  final bool? deletionProtectionEnabled;

  factory _$TableDescription(
          [void Function(TableDescriptionBuilder)? updates]) =>
      (new TableDescriptionBuilder()..update(updates))._build();

  _$TableDescription._(
      {this.attributeDefinitions,
      this.tableName,
      this.keySchema,
      this.tableStatus,
      this.creationDateTime,
      this.provisionedThroughput,
      this.tableSizeBytes,
      this.itemCount,
      this.tableArn,
      this.tableId,
      this.billingModeSummary,
      this.localSecondaryIndexes,
      this.globalSecondaryIndexes,
      this.streamSpecification,
      this.latestStreamLabel,
      this.latestStreamArn,
      this.globalTableVersion,
      this.replicas,
      this.restoreSummary,
      this.sseDescription,
      this.archivalSummary,
      this.tableClassSummary,
      this.deletionProtectionEnabled})
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
        attributeDefinitions == other.attributeDefinitions &&
        tableName == other.tableName &&
        keySchema == other.keySchema &&
        tableStatus == other.tableStatus &&
        creationDateTime == other.creationDateTime &&
        provisionedThroughput == other.provisionedThroughput &&
        tableSizeBytes == other.tableSizeBytes &&
        itemCount == other.itemCount &&
        tableArn == other.tableArn &&
        tableId == other.tableId &&
        billingModeSummary == other.billingModeSummary &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        streamSpecification == other.streamSpecification &&
        latestStreamLabel == other.latestStreamLabel &&
        latestStreamArn == other.latestStreamArn &&
        globalTableVersion == other.globalTableVersion &&
        replicas == other.replicas &&
        restoreSummary == other.restoreSummary &&
        sseDescription == other.sseDescription &&
        archivalSummary == other.archivalSummary &&
        tableClassSummary == other.tableClassSummary &&
        deletionProtectionEnabled == other.deletionProtectionEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, keySchema.hashCode);
    _$hash = $jc(_$hash, tableStatus.hashCode);
    _$hash = $jc(_$hash, creationDateTime.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, tableSizeBytes.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, billingModeSummary.hashCode);
    _$hash = $jc(_$hash, localSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, streamSpecification.hashCode);
    _$hash = $jc(_$hash, latestStreamLabel.hashCode);
    _$hash = $jc(_$hash, latestStreamArn.hashCode);
    _$hash = $jc(_$hash, globalTableVersion.hashCode);
    _$hash = $jc(_$hash, replicas.hashCode);
    _$hash = $jc(_$hash, restoreSummary.hashCode);
    _$hash = $jc(_$hash, sseDescription.hashCode);
    _$hash = $jc(_$hash, archivalSummary.hashCode);
    _$hash = $jc(_$hash, tableClassSummary.hashCode);
    _$hash = $jc(_$hash, deletionProtectionEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableDescriptionBuilder
    implements Builder<TableDescription, TableDescriptionBuilder> {
  _$TableDescription? _$v;

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

  TableStatus? _tableStatus;
  TableStatus? get tableStatus => _$this._tableStatus;
  set tableStatus(TableStatus? tableStatus) =>
      _$this._tableStatus = tableStatus;

  DateTime? _creationDateTime;
  DateTime? get creationDateTime => _$this._creationDateTime;
  set creationDateTime(DateTime? creationDateTime) =>
      _$this._creationDateTime = creationDateTime;

  ProvisionedThroughputDescriptionBuilder? _provisionedThroughput;
  ProvisionedThroughputDescriptionBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??=
          new ProvisionedThroughputDescriptionBuilder();
  set provisionedThroughput(
          ProvisionedThroughputDescriptionBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i2.Int64? _tableSizeBytes;
  _i2.Int64? get tableSizeBytes => _$this._tableSizeBytes;
  set tableSizeBytes(_i2.Int64? tableSizeBytes) =>
      _$this._tableSizeBytes = tableSizeBytes;

  _i2.Int64? _itemCount;
  _i2.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i2.Int64? itemCount) => _$this._itemCount = itemCount;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  BillingModeSummaryBuilder? _billingModeSummary;
  BillingModeSummaryBuilder get billingModeSummary =>
      _$this._billingModeSummary ??= new BillingModeSummaryBuilder();
  set billingModeSummary(BillingModeSummaryBuilder? billingModeSummary) =>
      _$this._billingModeSummary = billingModeSummary;

  _i3.ListBuilder<LocalSecondaryIndexDescription>? _localSecondaryIndexes;
  _i3.ListBuilder<LocalSecondaryIndexDescription> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i3.ListBuilder<LocalSecondaryIndexDescription>();
  set localSecondaryIndexes(
          _i3.ListBuilder<LocalSecondaryIndexDescription>?
              localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i3.ListBuilder<GlobalSecondaryIndexDescription>? _globalSecondaryIndexes;
  _i3.ListBuilder<GlobalSecondaryIndexDescription> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i3.ListBuilder<GlobalSecondaryIndexDescription>();
  set globalSecondaryIndexes(
          _i3.ListBuilder<GlobalSecondaryIndexDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  StreamSpecificationBuilder? _streamSpecification;
  StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new StreamSpecificationBuilder();
  set streamSpecification(StreamSpecificationBuilder? streamSpecification) =>
      _$this._streamSpecification = streamSpecification;

  String? _latestStreamLabel;
  String? get latestStreamLabel => _$this._latestStreamLabel;
  set latestStreamLabel(String? latestStreamLabel) =>
      _$this._latestStreamLabel = latestStreamLabel;

  String? _latestStreamArn;
  String? get latestStreamArn => _$this._latestStreamArn;
  set latestStreamArn(String? latestStreamArn) =>
      _$this._latestStreamArn = latestStreamArn;

  String? _globalTableVersion;
  String? get globalTableVersion => _$this._globalTableVersion;
  set globalTableVersion(String? globalTableVersion) =>
      _$this._globalTableVersion = globalTableVersion;

  _i3.ListBuilder<ReplicaDescription>? _replicas;
  _i3.ListBuilder<ReplicaDescription> get replicas =>
      _$this._replicas ??= new _i3.ListBuilder<ReplicaDescription>();
  set replicas(_i3.ListBuilder<ReplicaDescription>? replicas) =>
      _$this._replicas = replicas;

  RestoreSummaryBuilder? _restoreSummary;
  RestoreSummaryBuilder get restoreSummary =>
      _$this._restoreSummary ??= new RestoreSummaryBuilder();
  set restoreSummary(RestoreSummaryBuilder? restoreSummary) =>
      _$this._restoreSummary = restoreSummary;

  SseDescriptionBuilder? _sseDescription;
  SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new SseDescriptionBuilder();
  set sseDescription(SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  ArchivalSummaryBuilder? _archivalSummary;
  ArchivalSummaryBuilder get archivalSummary =>
      _$this._archivalSummary ??= new ArchivalSummaryBuilder();
  set archivalSummary(ArchivalSummaryBuilder? archivalSummary) =>
      _$this._archivalSummary = archivalSummary;

  TableClassSummaryBuilder? _tableClassSummary;
  TableClassSummaryBuilder get tableClassSummary =>
      _$this._tableClassSummary ??= new TableClassSummaryBuilder();
  set tableClassSummary(TableClassSummaryBuilder? tableClassSummary) =>
      _$this._tableClassSummary = tableClassSummary;

  bool? _deletionProtectionEnabled;
  bool? get deletionProtectionEnabled => _$this._deletionProtectionEnabled;
  set deletionProtectionEnabled(bool? deletionProtectionEnabled) =>
      _$this._deletionProtectionEnabled = deletionProtectionEnabled;

  TableDescriptionBuilder();

  TableDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions?.toBuilder();
      _tableName = $v.tableName;
      _keySchema = $v.keySchema?.toBuilder();
      _tableStatus = $v.tableStatus;
      _creationDateTime = $v.creationDateTime;
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _tableSizeBytes = $v.tableSizeBytes;
      _itemCount = $v.itemCount;
      _tableArn = $v.tableArn;
      _tableId = $v.tableId;
      _billingModeSummary = $v.billingModeSummary?.toBuilder();
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _latestStreamLabel = $v.latestStreamLabel;
      _latestStreamArn = $v.latestStreamArn;
      _globalTableVersion = $v.globalTableVersion;
      _replicas = $v.replicas?.toBuilder();
      _restoreSummary = $v.restoreSummary?.toBuilder();
      _sseDescription = $v.sseDescription?.toBuilder();
      _archivalSummary = $v.archivalSummary?.toBuilder();
      _tableClassSummary = $v.tableClassSummary?.toBuilder();
      _deletionProtectionEnabled = $v.deletionProtectionEnabled;
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
              attributeDefinitions: _attributeDefinitions?.build(),
              tableName: tableName,
              keySchema: _keySchema?.build(),
              tableStatus: tableStatus,
              creationDateTime: creationDateTime,
              provisionedThroughput: _provisionedThroughput?.build(),
              tableSizeBytes: tableSizeBytes,
              itemCount: itemCount,
              tableArn: tableArn,
              tableId: tableId,
              billingModeSummary: _billingModeSummary?.build(),
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              streamSpecification: _streamSpecification?.build(),
              latestStreamLabel: latestStreamLabel,
              latestStreamArn: latestStreamArn,
              globalTableVersion: globalTableVersion,
              replicas: _replicas?.build(),
              restoreSummary: _restoreSummary?.build(),
              sseDescription: _sseDescription?.build(),
              archivalSummary: _archivalSummary?.build(),
              tableClassSummary: _tableClassSummary?.build(),
              deletionProtectionEnabled: deletionProtectionEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        _attributeDefinitions?.build();

        _$failedField = 'keySchema';
        _keySchema?.build();

        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();

        _$failedField = 'billingModeSummary';
        _billingModeSummary?.build();
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();

        _$failedField = 'replicas';
        _replicas?.build();
        _$failedField = 'restoreSummary';
        _restoreSummary?.build();
        _$failedField = 'sseDescription';
        _sseDescription?.build();
        _$failedField = 'archivalSummary';
        _archivalSummary?.build();
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
