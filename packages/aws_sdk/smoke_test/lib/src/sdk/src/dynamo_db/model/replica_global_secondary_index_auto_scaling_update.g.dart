// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_global_secondary_index_auto_scaling_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaGlobalSecondaryIndexAutoScalingUpdate
    extends ReplicaGlobalSecondaryIndexAutoScalingUpdate {
  @override
  final String? indexName;
  @override
  final _i2.AutoScalingSettingsUpdate? provisionedReadCapacityAutoScalingUpdate;

  factory _$ReplicaGlobalSecondaryIndexAutoScalingUpdate(
          [void Function(ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder)?
              updates]) =>
      (new ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder()
            ..update(updates))
          ._build();

  _$ReplicaGlobalSecondaryIndexAutoScalingUpdate._(
      {this.indexName, this.provisionedReadCapacityAutoScalingUpdate})
      : super._();

  @override
  ReplicaGlobalSecondaryIndexAutoScalingUpdate rebuild(
          void Function(ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder toBuilder() =>
      new ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaGlobalSecondaryIndexAutoScalingUpdate &&
        indexName == other.indexName &&
        provisionedReadCapacityAutoScalingUpdate ==
            other.provisionedReadCapacityAutoScalingUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, provisionedReadCapacityAutoScalingUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder
    implements
        Builder<ReplicaGlobalSecondaryIndexAutoScalingUpdate,
            ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder> {
  _$ReplicaGlobalSecondaryIndexAutoScalingUpdate? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.AutoScalingSettingsUpdateBuilder?
      _provisionedReadCapacityAutoScalingUpdate;
  _i2.AutoScalingSettingsUpdateBuilder
      get provisionedReadCapacityAutoScalingUpdate =>
          _$this._provisionedReadCapacityAutoScalingUpdate ??=
              new _i2.AutoScalingSettingsUpdateBuilder();
  set provisionedReadCapacityAutoScalingUpdate(
          _i2.AutoScalingSettingsUpdateBuilder?
              provisionedReadCapacityAutoScalingUpdate) =>
      _$this._provisionedReadCapacityAutoScalingUpdate =
          provisionedReadCapacityAutoScalingUpdate;

  ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder() {
    ReplicaGlobalSecondaryIndexAutoScalingUpdate._init(this);
  }

  ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedReadCapacityAutoScalingUpdate =
          $v.provisionedReadCapacityAutoScalingUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaGlobalSecondaryIndexAutoScalingUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaGlobalSecondaryIndexAutoScalingUpdate;
  }

  @override
  void update(
      void Function(ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaGlobalSecondaryIndexAutoScalingUpdate build() => _build();

  _$ReplicaGlobalSecondaryIndexAutoScalingUpdate _build() {
    _$ReplicaGlobalSecondaryIndexAutoScalingUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicaGlobalSecondaryIndexAutoScalingUpdate._(
              indexName: indexName,
              provisionedReadCapacityAutoScalingUpdate:
                  _provisionedReadCapacityAutoScalingUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedReadCapacityAutoScalingUpdate';
        _provisionedReadCapacityAutoScalingUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaGlobalSecondaryIndexAutoScalingUpdate',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
