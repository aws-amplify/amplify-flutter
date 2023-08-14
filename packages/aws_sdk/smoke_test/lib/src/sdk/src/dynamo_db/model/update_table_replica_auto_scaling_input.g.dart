// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_table_replica_auto_scaling_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableReplicaAutoScalingInput
    extends UpdateTableReplicaAutoScalingInput {
  @override
  final _i3.BuiltList<GlobalSecondaryIndexAutoScalingUpdate>?
      globalSecondaryIndexUpdates;
  @override
  final String tableName;
  @override
  final AutoScalingSettingsUpdate? provisionedWriteCapacityAutoScalingUpdate;
  @override
  final _i3.BuiltList<ReplicaAutoScalingUpdate>? replicaUpdates;

  factory _$UpdateTableReplicaAutoScalingInput(
          [void Function(UpdateTableReplicaAutoScalingInputBuilder)?
              updates]) =>
      (new UpdateTableReplicaAutoScalingInputBuilder()..update(updates))
          ._build();

  _$UpdateTableReplicaAutoScalingInput._(
      {this.globalSecondaryIndexUpdates,
      required this.tableName,
      this.provisionedWriteCapacityAutoScalingUpdate,
      this.replicaUpdates})
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
        tableName == other.tableName &&
        provisionedWriteCapacityAutoScalingUpdate ==
            other.provisionedWriteCapacityAutoScalingUpdate &&
        replicaUpdates == other.replicaUpdates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalSecondaryIndexUpdates.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityAutoScalingUpdate.hashCode);
    _$hash = $jc(_$hash, replicaUpdates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTableReplicaAutoScalingInputBuilder
    implements
        Builder<UpdateTableReplicaAutoScalingInput,
            UpdateTableReplicaAutoScalingInputBuilder> {
  _$UpdateTableReplicaAutoScalingInput? _$v;

  _i3.ListBuilder<GlobalSecondaryIndexAutoScalingUpdate>?
      _globalSecondaryIndexUpdates;
  _i3.ListBuilder<GlobalSecondaryIndexAutoScalingUpdate>
      get globalSecondaryIndexUpdates => _$this._globalSecondaryIndexUpdates ??=
          new _i3.ListBuilder<GlobalSecondaryIndexAutoScalingUpdate>();
  set globalSecondaryIndexUpdates(
          _i3.ListBuilder<GlobalSecondaryIndexAutoScalingUpdate>?
              globalSecondaryIndexUpdates) =>
      _$this._globalSecondaryIndexUpdates = globalSecondaryIndexUpdates;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  AutoScalingSettingsUpdateBuilder? _provisionedWriteCapacityAutoScalingUpdate;
  AutoScalingSettingsUpdateBuilder
      get provisionedWriteCapacityAutoScalingUpdate =>
          _$this._provisionedWriteCapacityAutoScalingUpdate ??=
              new AutoScalingSettingsUpdateBuilder();
  set provisionedWriteCapacityAutoScalingUpdate(
          AutoScalingSettingsUpdateBuilder?
              provisionedWriteCapacityAutoScalingUpdate) =>
      _$this._provisionedWriteCapacityAutoScalingUpdate =
          provisionedWriteCapacityAutoScalingUpdate;

  _i3.ListBuilder<ReplicaAutoScalingUpdate>? _replicaUpdates;
  _i3.ListBuilder<ReplicaAutoScalingUpdate> get replicaUpdates =>
      _$this._replicaUpdates ??=
          new _i3.ListBuilder<ReplicaAutoScalingUpdate>();
  set replicaUpdates(
          _i3.ListBuilder<ReplicaAutoScalingUpdate>? replicaUpdates) =>
      _$this._replicaUpdates = replicaUpdates;

  UpdateTableReplicaAutoScalingInputBuilder();

  UpdateTableReplicaAutoScalingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexUpdates =
          $v.globalSecondaryIndexUpdates?.toBuilder();
      _tableName = $v.tableName;
      _provisionedWriteCapacityAutoScalingUpdate =
          $v.provisionedWriteCapacityAutoScalingUpdate?.toBuilder();
      _replicaUpdates = $v.replicaUpdates?.toBuilder();
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
              tableName: BuiltValueNullFieldError.checkNotNull(tableName,
                  r'UpdateTableReplicaAutoScalingInput', 'tableName'),
              provisionedWriteCapacityAutoScalingUpdate:
                  _provisionedWriteCapacityAutoScalingUpdate?.build(),
              replicaUpdates: _replicaUpdates?.build());
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
