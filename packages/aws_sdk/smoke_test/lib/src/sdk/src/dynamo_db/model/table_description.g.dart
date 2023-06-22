// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableDescription extends TableDescription {
  @override
  final _i16.BuiltList<_i2.AttributeDefinition>? attributeDefinitions;
  @override
  final String? tableName;
  @override
  final _i16.BuiltList<_i3.KeySchemaElement>? keySchema;
  @override
  final _i4.TableStatus? tableStatus;
  @override
  final DateTime? creationDateTime;
  @override
  final _i5.ProvisionedThroughputDescription? provisionedThroughput;
  @override
  final _i6.Int64? tableSizeBytes;
  @override
  final _i6.Int64? itemCount;
  @override
  final String? tableArn;
  @override
  final String? tableId;
  @override
  final _i7.BillingModeSummary? billingModeSummary;
  @override
  final _i16.BuiltList<_i8.LocalSecondaryIndexDescription>?
      localSecondaryIndexes;
  @override
  final _i16.BuiltList<_i9.GlobalSecondaryIndexDescription>?
      globalSecondaryIndexes;
  @override
  final _i10.StreamSpecification? streamSpecification;
  @override
  final String? latestStreamLabel;
  @override
  final String? latestStreamArn;
  @override
  final String? globalTableVersion;
  @override
  final _i16.BuiltList<_i11.ReplicaDescription>? replicas;
  @override
  final _i12.RestoreSummary? restoreSummary;
  @override
  final _i13.SseDescription? sseDescription;
  @override
  final _i14.ArchivalSummary? archivalSummary;
  @override
  final _i15.TableClassSummary? tableClassSummary;
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

  _i16.ListBuilder<_i2.AttributeDefinition>? _attributeDefinitions;
  _i16.ListBuilder<_i2.AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i16.ListBuilder<_i2.AttributeDefinition>();
  set attributeDefinitions(
          _i16.ListBuilder<_i2.AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i16.ListBuilder<_i3.KeySchemaElement>? _keySchema;
  _i16.ListBuilder<_i3.KeySchemaElement> get keySchema =>
      _$this._keySchema ??= new _i16.ListBuilder<_i3.KeySchemaElement>();
  set keySchema(_i16.ListBuilder<_i3.KeySchemaElement>? keySchema) =>
      _$this._keySchema = keySchema;

  _i4.TableStatus? _tableStatus;
  _i4.TableStatus? get tableStatus => _$this._tableStatus;
  set tableStatus(_i4.TableStatus? tableStatus) =>
      _$this._tableStatus = tableStatus;

  DateTime? _creationDateTime;
  DateTime? get creationDateTime => _$this._creationDateTime;
  set creationDateTime(DateTime? creationDateTime) =>
      _$this._creationDateTime = creationDateTime;

  _i5.ProvisionedThroughputDescriptionBuilder? _provisionedThroughput;
  _i5.ProvisionedThroughputDescriptionBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??=
          new _i5.ProvisionedThroughputDescriptionBuilder();
  set provisionedThroughput(
          _i5.ProvisionedThroughputDescriptionBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i6.Int64? _tableSizeBytes;
  _i6.Int64? get tableSizeBytes => _$this._tableSizeBytes;
  set tableSizeBytes(_i6.Int64? tableSizeBytes) =>
      _$this._tableSizeBytes = tableSizeBytes;

  _i6.Int64? _itemCount;
  _i6.Int64? get itemCount => _$this._itemCount;
  set itemCount(_i6.Int64? itemCount) => _$this._itemCount = itemCount;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  _i7.BillingModeSummaryBuilder? _billingModeSummary;
  _i7.BillingModeSummaryBuilder get billingModeSummary =>
      _$this._billingModeSummary ??= new _i7.BillingModeSummaryBuilder();
  set billingModeSummary(_i7.BillingModeSummaryBuilder? billingModeSummary) =>
      _$this._billingModeSummary = billingModeSummary;

  _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>? _localSecondaryIndexes;
  _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>
      get localSecondaryIndexes => _$this._localSecondaryIndexes ??=
          new _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>();
  set localSecondaryIndexes(
          _i16.ListBuilder<_i8.LocalSecondaryIndexDescription>?
              localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i16.ListBuilder<_i9.GlobalSecondaryIndexDescription>?
      _globalSecondaryIndexes;
  _i16.ListBuilder<_i9.GlobalSecondaryIndexDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??=
          new _i16.ListBuilder<_i9.GlobalSecondaryIndexDescription>();
  set globalSecondaryIndexes(
          _i16.ListBuilder<_i9.GlobalSecondaryIndexDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i10.StreamSpecificationBuilder? _streamSpecification;
  _i10.StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new _i10.StreamSpecificationBuilder();
  set streamSpecification(
          _i10.StreamSpecificationBuilder? streamSpecification) =>
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

  _i16.ListBuilder<_i11.ReplicaDescription>? _replicas;
  _i16.ListBuilder<_i11.ReplicaDescription> get replicas =>
      _$this._replicas ??= new _i16.ListBuilder<_i11.ReplicaDescription>();
  set replicas(_i16.ListBuilder<_i11.ReplicaDescription>? replicas) =>
      _$this._replicas = replicas;

  _i12.RestoreSummaryBuilder? _restoreSummary;
  _i12.RestoreSummaryBuilder get restoreSummary =>
      _$this._restoreSummary ??= new _i12.RestoreSummaryBuilder();
  set restoreSummary(_i12.RestoreSummaryBuilder? restoreSummary) =>
      _$this._restoreSummary = restoreSummary;

  _i13.SseDescriptionBuilder? _sseDescription;
  _i13.SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new _i13.SseDescriptionBuilder();
  set sseDescription(_i13.SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  _i14.ArchivalSummaryBuilder? _archivalSummary;
  _i14.ArchivalSummaryBuilder get archivalSummary =>
      _$this._archivalSummary ??= new _i14.ArchivalSummaryBuilder();
  set archivalSummary(_i14.ArchivalSummaryBuilder? archivalSummary) =>
      _$this._archivalSummary = archivalSummary;

  _i15.TableClassSummaryBuilder? _tableClassSummary;
  _i15.TableClassSummaryBuilder get tableClassSummary =>
      _$this._tableClassSummary ??= new _i15.TableClassSummaryBuilder();
  set tableClassSummary(_i15.TableClassSummaryBuilder? tableClassSummary) =>
      _$this._tableClassSummary = tableClassSummary;

  bool? _deletionProtectionEnabled;
  bool? get deletionProtectionEnabled => _$this._deletionProtectionEnabled;
  set deletionProtectionEnabled(bool? deletionProtectionEnabled) =>
      _$this._deletionProtectionEnabled = deletionProtectionEnabled;

  TableDescriptionBuilder() {
    TableDescription._init(this);
  }

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
