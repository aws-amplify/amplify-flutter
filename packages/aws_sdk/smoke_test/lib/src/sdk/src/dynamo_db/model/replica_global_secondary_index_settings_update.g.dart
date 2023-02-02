// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_global_secondary_index_settings_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaGlobalSecondaryIndexSettingsUpdate
    extends ReplicaGlobalSecondaryIndexSettingsUpdate {
  @override
  final String indexName;
  @override
  final _i2.AutoScalingSettingsUpdate?
      provisionedReadCapacityAutoScalingSettingsUpdate;
  @override
  final _i3.Int64? provisionedReadCapacityUnits;

  factory _$ReplicaGlobalSecondaryIndexSettingsUpdate(
          [void Function(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder)?
              updates]) =>
      (new ReplicaGlobalSecondaryIndexSettingsUpdateBuilder()..update(updates))
          ._build();

  _$ReplicaGlobalSecondaryIndexSettingsUpdate._(
      {required this.indexName,
      this.provisionedReadCapacityAutoScalingSettingsUpdate,
      this.provisionedReadCapacityUnits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'ReplicaGlobalSecondaryIndexSettingsUpdate', 'indexName');
  }

  @override
  ReplicaGlobalSecondaryIndexSettingsUpdate rebuild(
          void Function(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaGlobalSecondaryIndexSettingsUpdateBuilder toBuilder() =>
      new ReplicaGlobalSecondaryIndexSettingsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaGlobalSecondaryIndexSettingsUpdate &&
        indexName == other.indexName &&
        provisionedReadCapacityAutoScalingSettingsUpdate ==
            other.provisionedReadCapacityAutoScalingSettingsUpdate &&
        provisionedReadCapacityUnits == other.provisionedReadCapacityUnits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash =
        $jc(_$hash, provisionedReadCapacityAutoScalingSettingsUpdate.hashCode);
    _$hash = $jc(_$hash, provisionedReadCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaGlobalSecondaryIndexSettingsUpdateBuilder
    implements
        Builder<ReplicaGlobalSecondaryIndexSettingsUpdate,
            ReplicaGlobalSecondaryIndexSettingsUpdateBuilder> {
  _$ReplicaGlobalSecondaryIndexSettingsUpdate? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.AutoScalingSettingsUpdateBuilder?
      _provisionedReadCapacityAutoScalingSettingsUpdate;
  _i2.AutoScalingSettingsUpdateBuilder
      get provisionedReadCapacityAutoScalingSettingsUpdate =>
          _$this._provisionedReadCapacityAutoScalingSettingsUpdate ??=
              new _i2.AutoScalingSettingsUpdateBuilder();
  set provisionedReadCapacityAutoScalingSettingsUpdate(
          _i2.AutoScalingSettingsUpdateBuilder?
              provisionedReadCapacityAutoScalingSettingsUpdate) =>
      _$this._provisionedReadCapacityAutoScalingSettingsUpdate =
          provisionedReadCapacityAutoScalingSettingsUpdate;

  _i3.Int64? _provisionedReadCapacityUnits;
  _i3.Int64? get provisionedReadCapacityUnits =>
      _$this._provisionedReadCapacityUnits;
  set provisionedReadCapacityUnits(_i3.Int64? provisionedReadCapacityUnits) =>
      _$this._provisionedReadCapacityUnits = provisionedReadCapacityUnits;

  ReplicaGlobalSecondaryIndexSettingsUpdateBuilder() {
    ReplicaGlobalSecondaryIndexSettingsUpdate._init(this);
  }

  ReplicaGlobalSecondaryIndexSettingsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedReadCapacityAutoScalingSettingsUpdate =
          $v.provisionedReadCapacityAutoScalingSettingsUpdate?.toBuilder();
      _provisionedReadCapacityUnits = $v.provisionedReadCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaGlobalSecondaryIndexSettingsUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaGlobalSecondaryIndexSettingsUpdate;
  }

  @override
  void update(
      void Function(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaGlobalSecondaryIndexSettingsUpdate build() => _build();

  _$ReplicaGlobalSecondaryIndexSettingsUpdate _build() {
    _$ReplicaGlobalSecondaryIndexSettingsUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicaGlobalSecondaryIndexSettingsUpdate._(
              indexName: BuiltValueNullFieldError.checkNotNull(indexName,
                  r'ReplicaGlobalSecondaryIndexSettingsUpdate', 'indexName'),
              provisionedReadCapacityAutoScalingSettingsUpdate:
                  _provisionedReadCapacityAutoScalingSettingsUpdate?.build(),
              provisionedReadCapacityUnits: provisionedReadCapacityUnits);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedReadCapacityAutoScalingSettingsUpdate';
        _provisionedReadCapacityAutoScalingSettingsUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaGlobalSecondaryIndexSettingsUpdate',
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
