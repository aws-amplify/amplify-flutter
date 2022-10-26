// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableInput extends UpdateTableInput {
  @override
  final _i11.BuiltList<_i3.AttributeDefinition>? attributeDefinitions;
  @override
  final _i4.BillingMode? billingMode;
  @override
  final _i11.BuiltList<_i5.GlobalSecondaryIndexUpdate>?
      globalSecondaryIndexUpdates;
  @override
  final _i6.ProvisionedThroughput? provisionedThroughput;
  @override
  final _i11.BuiltList<_i7.ReplicationGroupUpdate>? replicaUpdates;
  @override
  final _i8.SseSpecification? sseSpecification;
  @override
  final _i9.StreamSpecification? streamSpecification;
  @override
  final _i10.TableClass? tableClass;
  @override
  final String tableName;

  factory _$UpdateTableInput(
          [void Function(UpdateTableInputBuilder)? updates]) =>
      (new UpdateTableInputBuilder()..update(updates))._build();

  _$UpdateTableInput._(
      {this.attributeDefinitions,
      this.billingMode,
      this.globalSecondaryIndexUpdates,
      this.provisionedThroughput,
      this.replicaUpdates,
      this.sseSpecification,
      this.streamSpecification,
      this.tableClass,
      required this.tableName})
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
        billingMode == other.billingMode &&
        globalSecondaryIndexUpdates == other.globalSecondaryIndexUpdates &&
        provisionedThroughput == other.provisionedThroughput &&
        replicaUpdates == other.replicaUpdates &&
        sseSpecification == other.sseSpecification &&
        streamSpecification == other.streamSpecification &&
        tableClass == other.tableClass &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, attributeDefinitions.hashCode),
                                    billingMode.hashCode),
                                globalSecondaryIndexUpdates.hashCode),
                            provisionedThroughput.hashCode),
                        replicaUpdates.hashCode),
                    sseSpecification.hashCode),
                streamSpecification.hashCode),
            tableClass.hashCode),
        tableName.hashCode));
  }
}

class UpdateTableInputBuilder
    implements Builder<UpdateTableInput, UpdateTableInputBuilder> {
  _$UpdateTableInput? _$v;

  _i11.ListBuilder<_i3.AttributeDefinition>? _attributeDefinitions;
  _i11.ListBuilder<_i3.AttributeDefinition> get attributeDefinitions =>
      _$this._attributeDefinitions ??=
          new _i11.ListBuilder<_i3.AttributeDefinition>();
  set attributeDefinitions(
          _i11.ListBuilder<_i3.AttributeDefinition>? attributeDefinitions) =>
      _$this._attributeDefinitions = attributeDefinitions;

  _i4.BillingMode? _billingMode;
  _i4.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i4.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  _i11.ListBuilder<_i5.GlobalSecondaryIndexUpdate>?
      _globalSecondaryIndexUpdates;
  _i11.ListBuilder<_i5.GlobalSecondaryIndexUpdate>
      get globalSecondaryIndexUpdates => _$this._globalSecondaryIndexUpdates ??=
          new _i11.ListBuilder<_i5.GlobalSecondaryIndexUpdate>();
  set globalSecondaryIndexUpdates(
          _i11.ListBuilder<_i5.GlobalSecondaryIndexUpdate>?
              globalSecondaryIndexUpdates) =>
      _$this._globalSecondaryIndexUpdates = globalSecondaryIndexUpdates;

  _i6.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i6.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i6.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i6.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  _i11.ListBuilder<_i7.ReplicationGroupUpdate>? _replicaUpdates;
  _i11.ListBuilder<_i7.ReplicationGroupUpdate> get replicaUpdates =>
      _$this._replicaUpdates ??=
          new _i11.ListBuilder<_i7.ReplicationGroupUpdate>();
  set replicaUpdates(
          _i11.ListBuilder<_i7.ReplicationGroupUpdate>? replicaUpdates) =>
      _$this._replicaUpdates = replicaUpdates;

  _i8.SseSpecificationBuilder? _sseSpecification;
  _i8.SseSpecificationBuilder get sseSpecification =>
      _$this._sseSpecification ??= new _i8.SseSpecificationBuilder();
  set sseSpecification(_i8.SseSpecificationBuilder? sseSpecification) =>
      _$this._sseSpecification = sseSpecification;

  _i9.StreamSpecificationBuilder? _streamSpecification;
  _i9.StreamSpecificationBuilder get streamSpecification =>
      _$this._streamSpecification ??= new _i9.StreamSpecificationBuilder();
  set streamSpecification(
          _i9.StreamSpecificationBuilder? streamSpecification) =>
      _$this._streamSpecification = streamSpecification;

  _i10.TableClass? _tableClass;
  _i10.TableClass? get tableClass => _$this._tableClass;
  set tableClass(_i10.TableClass? tableClass) =>
      _$this._tableClass = tableClass;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  UpdateTableInputBuilder() {
    UpdateTableInput._init(this);
  }

  UpdateTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeDefinitions = $v.attributeDefinitions?.toBuilder();
      _billingMode = $v.billingMode;
      _globalSecondaryIndexUpdates =
          $v.globalSecondaryIndexUpdates?.toBuilder();
      _provisionedThroughput = $v.provisionedThroughput?.toBuilder();
      _replicaUpdates = $v.replicaUpdates?.toBuilder();
      _sseSpecification = $v.sseSpecification?.toBuilder();
      _streamSpecification = $v.streamSpecification?.toBuilder();
      _tableClass = $v.tableClass;
      _tableName = $v.tableName;
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
              billingMode: billingMode,
              globalSecondaryIndexUpdates:
                  _globalSecondaryIndexUpdates?.build(),
              provisionedThroughput: _provisionedThroughput?.build(),
              replicaUpdates: _replicaUpdates?.build(),
              sseSpecification: _sseSpecification?.build(),
              streamSpecification: _streamSpecification?.build(),
              tableClass: tableClass,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateTableInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDefinitions';
        _attributeDefinitions?.build();

        _$failedField = 'globalSecondaryIndexUpdates';
        _globalSecondaryIndexUpdates?.build();
        _$failedField = 'provisionedThroughput';
        _provisionedThroughput?.build();
        _$failedField = 'replicaUpdates';
        _replicaUpdates?.build();
        _$failedField = 'sseSpecification';
        _sseSpecification?.build();
        _$failedField = 'streamSpecification';
        _streamSpecification?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
