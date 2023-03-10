// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_table_replica_auto_scaling_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableReplicaAutoScalingInput
    extends UpdateTableReplicaAutoScalingInput {
  @override
  final _i6.BuiltList<_i3.GlobalSecondaryIndexAutoScalingUpdate>?
      globalSecondaryIndexUpdates;
  @override
  final _i4.AutoScalingSettingsUpdate?
      provisionedWriteCapacityAutoScalingUpdate;
  @override
  final _i6.BuiltList<_i5.ReplicaAutoScalingUpdate>? replicaUpdates;
  @override
  final String tableName;

  factory _$UpdateTableReplicaAutoScalingInput(
          [void Function(UpdateTableReplicaAutoScalingInputBuilder)?
              updates]) =>
      (new UpdateTableReplicaAutoScalingInputBuilder()..update(updates))
          ._build();

  _$UpdateTableReplicaAutoScalingInput._(
      {this.globalSecondaryIndexUpdates,
      this.provisionedWriteCapacityAutoScalingUpdate,
      this.replicaUpdates,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateTableReplicaAutoScalingInput', 'tableName');
  }

  @override
  UpdateTableReplicaAutoScalingInput rebuild(
          void Function(UpdateTableReplicaAutoScalingInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTableReplicaAutoScalingInputBuilder toBuilder() =>
      new UpdateTableReplicaAutoScalingInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTableReplicaAutoScalingInput &&
        globalSecondaryIndexUpdates == other.globalSecondaryIndexUpdates &&
        provisionedWriteCapacityAutoScalingUpdate ==
            other.provisionedWriteCapacityAutoScalingUpdate &&
        replicaUpdates == other.replicaUpdates &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalSecondaryIndexUpdates.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityAutoScalingUpdate.hashCode);
    _$hash = $jc(_$hash, replicaUpdates.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTableReplicaAutoScalingInputBuilder
    implements
        Builder<UpdateTableReplicaAutoScalingInput,
            UpdateTableReplicaAutoScalingInputBuilder> {
  _$UpdateTableReplicaAutoScalingInput? _$v;

  _i6.ListBuilder<_i3.GlobalSecondaryIndexAutoScalingUpdate>?
      _globalSecondaryIndexUpdates;
  _i6.ListBuilder<_i3.GlobalSecondaryIndexAutoScalingUpdate>
      get globalSecondaryIndexUpdates => _$this._globalSecondaryIndexUpdates ??=
          new _i6.ListBuilder<_i3.GlobalSecondaryIndexAutoScalingUpdate>();
  set globalSecondaryIndexUpdates(
          _i6.ListBuilder<_i3.GlobalSecondaryIndexAutoScalingUpdate>?
              globalSecondaryIndexUpdates) =>
      _$this._globalSecondaryIndexUpdates = globalSecondaryIndexUpdates;

  _i4.AutoScalingSettingsUpdateBuilder?
      _provisionedWriteCapacityAutoScalingUpdate;
  _i4.AutoScalingSettingsUpdateBuilder
      get provisionedWriteCapacityAutoScalingUpdate =>
          _$this._provisionedWriteCapacityAutoScalingUpdate ??=
              new _i4.AutoScalingSettingsUpdateBuilder();
  set provisionedWriteCapacityAutoScalingUpdate(
          _i4.AutoScalingSettingsUpdateBuilder?
              provisionedWriteCapacityAutoScalingUpdate) =>
      _$this._provisionedWriteCapacityAutoScalingUpdate =
          provisionedWriteCapacityAutoScalingUpdate;

  _i6.ListBuilder<_i5.ReplicaAutoScalingUpdate>? _replicaUpdates;
  _i6.ListBuilder<_i5.ReplicaAutoScalingUpdate> get replicaUpdates =>
      _$this._replicaUpdates ??=
          new _i6.ListBuilder<_i5.ReplicaAutoScalingUpdate>();
  set replicaUpdates(
          _i6.ListBuilder<_i5.ReplicaAutoScalingUpdate>? replicaUpdates) =>
      _$this._replicaUpdates = replicaUpdates;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  UpdateTableReplicaAutoScalingInputBuilder() {
    UpdateTableReplicaAutoScalingInput._init(this);
  }

  UpdateTableReplicaAutoScalingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexUpdates =
          $v.globalSecondaryIndexUpdates?.toBuilder();
      _provisionedWriteCapacityAutoScalingUpdate =
          $v.provisionedWriteCapacityAutoScalingUpdate?.toBuilder();
      _replicaUpdates = $v.replicaUpdates?.toBuilder();
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTableReplicaAutoScalingInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTableReplicaAutoScalingInput;
  }

  @override
  void update(
      void Function(UpdateTableReplicaAutoScalingInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTableReplicaAutoScalingInput build() => _build();

  _$UpdateTableReplicaAutoScalingInput _build() {
    _$UpdateTableReplicaAutoScalingInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTableReplicaAutoScalingInput._(
              globalSecondaryIndexUpdates:
                  _globalSecondaryIndexUpdates?.build(),
              provisionedWriteCapacityAutoScalingUpdate:
                  _provisionedWriteCapacityAutoScalingUpdate?.build(),
              replicaUpdates: _replicaUpdates?.build(),
              tableName: BuiltValueNullFieldError.checkNotNull(tableName,
                  r'UpdateTableReplicaAutoScalingInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexUpdates';
        _globalSecondaryIndexUpdates?.build();
        _$failedField = 'provisionedWriteCapacityAutoScalingUpdate';
        _provisionedWriteCapacityAutoScalingUpdate?.build();
        _$failedField = 'replicaUpdates';
        _replicaUpdates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTableReplicaAutoScalingInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
