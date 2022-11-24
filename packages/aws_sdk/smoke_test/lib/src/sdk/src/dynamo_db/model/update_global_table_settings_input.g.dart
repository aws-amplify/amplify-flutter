// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_global_table_settings_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableSettingsInput extends UpdateGlobalTableSettingsInput {
  @override
  final _i3.BillingMode? globalTableBillingMode;
  @override
  final _i8.BuiltList<_i4.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
      globalTableGlobalSecondaryIndexSettingsUpdate;
  @override
  final String globalTableName;
  @override
  final _i5.AutoScalingSettingsUpdate?
      globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;
  @override
  final _i6.Int64? globalTableProvisionedWriteCapacityUnits;
  @override
  final _i8.BuiltList<_i7.ReplicaSettingsUpdate>? replicaSettingsUpdate;

  factory _$UpdateGlobalTableSettingsInput(
          [void Function(UpdateGlobalTableSettingsInputBuilder)? updates]) =>
      (new UpdateGlobalTableSettingsInputBuilder()..update(updates))._build();

  _$UpdateGlobalTableSettingsInput._(
      {this.globalTableBillingMode,
      this.globalTableGlobalSecondaryIndexSettingsUpdate,
      required this.globalTableName,
      this.globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
      this.globalTableProvisionedWriteCapacityUnits,
      this.replicaSettingsUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalTableName, r'UpdateGlobalTableSettingsInput', 'globalTableName');
  }

  @override
  UpdateGlobalTableSettingsInput rebuild(
          void Function(UpdateGlobalTableSettingsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableSettingsInputBuilder toBuilder() =>
      new UpdateGlobalTableSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableSettingsInput &&
        globalTableBillingMode == other.globalTableBillingMode &&
        globalTableGlobalSecondaryIndexSettingsUpdate ==
            other.globalTableGlobalSecondaryIndexSettingsUpdate &&
        globalTableName == other.globalTableName &&
        globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate ==
            other
                .globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate &&
        globalTableProvisionedWriteCapacityUnits ==
            other.globalTableProvisionedWriteCapacityUnits &&
        replicaSettingsUpdate == other.replicaSettingsUpdate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, globalTableBillingMode.hashCode),
                        globalTableGlobalSecondaryIndexSettingsUpdate.hashCode),
                    globalTableName.hashCode),
                globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
                    .hashCode),
            globalTableProvisionedWriteCapacityUnits.hashCode),
        replicaSettingsUpdate.hashCode));
  }
}

class UpdateGlobalTableSettingsInputBuilder
    implements
        Builder<UpdateGlobalTableSettingsInput,
            UpdateGlobalTableSettingsInputBuilder> {
  _$UpdateGlobalTableSettingsInput? _$v;

  _i3.BillingMode? _globalTableBillingMode;
  _i3.BillingMode? get globalTableBillingMode => _$this._globalTableBillingMode;
  set globalTableBillingMode(_i3.BillingMode? globalTableBillingMode) =>
      _$this._globalTableBillingMode = globalTableBillingMode;

  _i8.ListBuilder<_i4.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
      _globalTableGlobalSecondaryIndexSettingsUpdate;
  _i8.ListBuilder<_i4.GlobalTableGlobalSecondaryIndexSettingsUpdate>
      get globalTableGlobalSecondaryIndexSettingsUpdate =>
          _$this._globalTableGlobalSecondaryIndexSettingsUpdate ??= new _i8
              .ListBuilder<_i4.GlobalTableGlobalSecondaryIndexSettingsUpdate>();
  set globalTableGlobalSecondaryIndexSettingsUpdate(
          _i8.ListBuilder<_i4.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
              globalTableGlobalSecondaryIndexSettingsUpdate) =>
      _$this._globalTableGlobalSecondaryIndexSettingsUpdate =
          globalTableGlobalSecondaryIndexSettingsUpdate;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i5.AutoScalingSettingsUpdateBuilder?
      _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;
  _i5.AutoScalingSettingsUpdateBuilder
      get globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => _$this
              ._globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate ??=
          new _i5.AutoScalingSettingsUpdateBuilder();
  set globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate(
          _i5.AutoScalingSettingsUpdateBuilder?
              globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate) =>
      _$this._globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate =
          globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;

  _i6.Int64? _globalTableProvisionedWriteCapacityUnits;
  _i6.Int64? get globalTableProvisionedWriteCapacityUnits =>
      _$this._globalTableProvisionedWriteCapacityUnits;
  set globalTableProvisionedWriteCapacityUnits(
          _i6.Int64? globalTableProvisionedWriteCapacityUnits) =>
      _$this._globalTableProvisionedWriteCapacityUnits =
          globalTableProvisionedWriteCapacityUnits;

  _i8.ListBuilder<_i7.ReplicaSettingsUpdate>? _replicaSettingsUpdate;
  _i8.ListBuilder<_i7.ReplicaSettingsUpdate> get replicaSettingsUpdate =>
      _$this._replicaSettingsUpdate ??=
          new _i8.ListBuilder<_i7.ReplicaSettingsUpdate>();
  set replicaSettingsUpdate(
          _i8.ListBuilder<_i7.ReplicaSettingsUpdate>? replicaSettingsUpdate) =>
      _$this._replicaSettingsUpdate = replicaSettingsUpdate;

  UpdateGlobalTableSettingsInputBuilder() {
    UpdateGlobalTableSettingsInput._init(this);
  }

  UpdateGlobalTableSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableBillingMode = $v.globalTableBillingMode;
      _globalTableGlobalSecondaryIndexSettingsUpdate =
          $v.globalTableGlobalSecondaryIndexSettingsUpdate?.toBuilder();
      _globalTableName = $v.globalTableName;
      _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = $v
          .globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
          ?.toBuilder();
      _globalTableProvisionedWriteCapacityUnits =
          $v.globalTableProvisionedWriteCapacityUnits;
      _replicaSettingsUpdate = $v.replicaSettingsUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableSettingsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableSettingsInput;
  }

  @override
  void update(void Function(UpdateGlobalTableSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableSettingsInput build() => _build();

  _$UpdateGlobalTableSettingsInput _build() {
    _$UpdateGlobalTableSettingsInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableSettingsInput._(
              globalTableBillingMode: globalTableBillingMode,
              globalTableGlobalSecondaryIndexSettingsUpdate:
                  _globalTableGlobalSecondaryIndexSettingsUpdate?.build(),
              globalTableName: BuiltValueNullFieldError.checkNotNull(
                  globalTableName,
                  r'UpdateGlobalTableSettingsInput',
                  'globalTableName'),
              globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate:
                  _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
                      ?.build(),
              globalTableProvisionedWriteCapacityUnits:
                  globalTableProvisionedWriteCapacityUnits,
              replicaSettingsUpdate: _replicaSettingsUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableGlobalSecondaryIndexSettingsUpdate';
        _globalTableGlobalSecondaryIndexSettingsUpdate?.build();

        _$failedField =
            'globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate';
        _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate?.build();

        _$failedField = 'replicaSettingsUpdate';
        _replicaSettingsUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableSettingsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
