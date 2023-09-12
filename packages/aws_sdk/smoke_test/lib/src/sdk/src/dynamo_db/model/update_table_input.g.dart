// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_table_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableInput extends UpdateTableInput {
  @override
  final _i3.BuiltList<AttributeDefinition>? attributeDefinitions;
  @override
  final String tableName;
  @override
  final BillingMode? billingMode;
  @override
  final ProvisionedThroughput? provisionedThroughput;
  @override
  final _i3.BuiltList<GlobalSecondaryIndexUpdate>? globalSecondaryIndexUpdates;
  @override
  final StreamSpecification? streamSpecification;
  @override
  final SseSpecification? sseSpecification;
  @override
  final _i3.BuiltList<ReplicationGroupUpdate>? replicaUpdates;
  @override
  final TableClass? tableClass;
  @override
  final bool? deletionProtectionEnabled;

  factory _$UpdateTableInput(
          [void Function(UpdateTableInputBuilder)? updates]) =>
      (new UpdateTableInputBuilder()..update(updates))._build();

  _$UpdateTableInput._(
      {this.attributeDefinitions,
      required this.tableName,
      this.billingMode,
      this.provisionedThroughput,
      this.globalSecondaryIndexUpdates,
      this.streamSpecification,
      this.sseSpecification,
      this.replicaUpdates,
      this.tableClass,
      this.deletionProtectionEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateTableInput', 'tableName');
  }

  @override
  UpdateTableInput rebuild(void Function(UpdateTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTableInputBuilder toBuilder() =>
      new UpdateTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTableInput &&
        attributeDefinitions == other.attributeDefinitions &&
        tableName == other.tableName &&
        billingMode == other.billingMode &&
        provisionedThroughput == other.provisionedThroughput &&
        globalSecondaryIndexUpdates == other.globalSecondaryIndexUpdates &&
        streamSpecification == other.streamSpecification &&
        sseSpecification == other.sseSpecification &&
        replicaUpdates == other.replicaUpdates &&
        tableClass == other.tableClass &&
        deletionProtectionEnabled == other.deletionProtectionEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeDefinitions.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, billingMode.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexUpdates.hashCode);
    _$hash = $jc(_$hash, streamSpecification.hashCode);
    _$hash = $jc(_$hash, sseSpecification.hashCode);
    _$hash = $jc(_$hash, replicaUpdates.hashCode);
    _$hash = $jc(_$hash, tableClass.hashCode);
    _$hash = $jc(_$hash, deletionProtectionEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTableInputBuilder
    implements Builder<UpdateTableInput, UpdateTableInputBuilder> {
  _$UpdateTableInput? _$v;

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

  _i3.ListBuilder<GlobalSecondaryIndexUpdate>? _globalSecondaryIndexUpdates;
  _i3.ListBuilder<GlobalSecondaryIndexUpdate> get globalSecondaryIndexUpdates =>
      _$this._globalSecondaryIndexUpdates ??=
          new _i3.ListBuilder<GlobalSecondaryIndexUpdate>();
  set globalSecondaryIndexUpdates(
          _i3.ListBuilder<GlobalSecondaryIndexUpdate>?
              globalSecondaryIndexUpdates) =>
      _$this._globalSecondaryIndexUpdates = globalSecondaryIndexUpdates;

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

  _i3.ListBuilder<ReplicationGroupUpdate>? _replicaUpdates;
  _i3.ListBuilder<ReplicationGroupUpdate> get replicaUpdates =>
      _$this._replicaUpdates ??= new _i3.ListBuilder<ReplicationGroupUpdate>();
  set replicaUpdates(_i3.ListBuilder<ReplicationGroupUpdate>? replicaUpdates) =>
      _$this._replicaUpdates = replicaUpdates;

  TableClass? _tableClass;
  TableClass? get tableClass => _$this._tableClass;
  set tableClass(TableClass? tableClass) => _$this._tableClass = tableClass;

  bool? _deletionProtectionEnabled;
  bool? get deletionProtectionEnabled => _$this._deletionProtectionEnabled;
  set deletionProtectionEnabled(bool? deletionProtectionEnabled) =>
      _$this._deletionProtectionEnabled = deletionProtectionEnabled;

  UpdateTableInputBuilder();

  UpdateTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions?.toBuilder();
      _tableName = $v.tableName;
      _billingMode = $v.billingMode;
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _globalSecondaryIndexUpdates =
          $v.globalSecondaryIndexUpdates?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _replicaUpdates = $v.replicaUpdates?.toBuilder();
      _tableClass = $v.tableClass;
      _deletionProtectionEnabled = $v.deletionProtectionEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTableInput;
  }

  @override
  void update(void Function(UpdateTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTableInput build() => _build();

  _$UpdateTableInput _build() {
    _$UpdateTableInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTableInput._(
              attributeDefinitions: _attributeDefinitions?.build(),
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateTableInput', 'tableName'),
              billingMode: billingMode,
              provisionedThroughput: _provisionedThroughput?.build(),
              globalSecondaryIndexUpdates:
                  _globalSecondaryIndexUpdates?.build(),
              streamSpecification: _streamSpecification?.build(),
              sseSpecification: _sseSpecification?.build(),
              replicaUpdates: _replicaUpdates?.build(),
              tableClass: tableClass,
              deletionProtectionEnabled: deletionProtectionEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        _attributeDefinitions?.build();

        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'globalSecondaryIndexUpdates';
        _globalSecondaryIndexUpdates?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
        _$failedField = 'replicaUpdates';
        _replicaUpdates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTableInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint