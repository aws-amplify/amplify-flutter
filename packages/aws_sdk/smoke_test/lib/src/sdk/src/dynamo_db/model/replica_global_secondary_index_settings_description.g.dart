// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_global_secondary_index_settings_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaGlobalSecondaryIndexSettingsDescription
    extends ReplicaGlobalSecondaryIndexSettingsDescription {
  @override
  final String indexName;
  @override
  final _i2.IndexStatus? indexStatus;
  @override
  final _i3.AutoScalingSettingsDescription?
      provisionedReadCapacityAutoScalingSettings;
  @override
  final _i4.Int64? provisionedReadCapacityUnits;
  @override
  final _i3.AutoScalingSettingsDescription?
      provisionedWriteCapacityAutoScalingSettings;
  @override
  final _i4.Int64? provisionedWriteCapacityUnits;

  factory _$ReplicaGlobalSecondaryIndexSettingsDescription(
          [void Function(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder)?
              updates]) =>
      (new ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder()
            ..update(updates))
          ._build();

  _$ReplicaGlobalSecondaryIndexSettingsDescription._(
      {required this.indexName,
      this.indexStatus,
      this.provisionedReadCapacityAutoScalingSettings,
      this.provisionedReadCapacityUnits,
      this.provisionedWriteCapacityAutoScalingSettings,
      this.provisionedWriteCapacityUnits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(indexName,
        r'ReplicaGlobalSecondaryIndexSettingsDescription', 'indexName');
  }

  @override
  ReplicaGlobalSecondaryIndexSettingsDescription rebuild(
          void Function(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder toBuilder() =>
      new ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaGlobalSecondaryIndexSettingsDescription &&
        indexName == other.indexName &&
        indexStatus == other.indexStatus &&
        provisionedReadCapacityAutoScalingSettings ==
            other.provisionedReadCapacityAutoScalingSettings &&
        provisionedReadCapacityUnits == other.provisionedReadCapacityUnits &&
        provisionedWriteCapacityAutoScalingSettings ==
            other.provisionedWriteCapacityAutoScalingSettings &&
        provisionedWriteCapacityUnits == other.provisionedWriteCapacityUnits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, indexStatus.hashCode);
    _$hash = $jc(_$hash, provisionedReadCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, provisionedReadCapacityUnits.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder
    implements
        Builder<ReplicaGlobalSecondaryIndexSettingsDescription,
            ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder> {
  _$ReplicaGlobalSecondaryIndexSettingsDescription? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.IndexStatus? _indexStatus;
  _i2.IndexStatus? get indexStatus => _$this._indexStatus;
  set indexStatus(_i2.IndexStatus? indexStatus) =>
      _$this._indexStatus = indexStatus;

  _i3.AutoScalingSettingsDescriptionBuilder?
      _provisionedReadCapacityAutoScalingSettings;
  _i3.AutoScalingSettingsDescriptionBuilder
      get provisionedReadCapacityAutoScalingSettings =>
          _$this._provisionedReadCapacityAutoScalingSettings ??=
              new _i3.AutoScalingSettingsDescriptionBuilder();
  set provisionedReadCapacityAutoScalingSettings(
          _i3.AutoScalingSettingsDescriptionBuilder?
              provisionedReadCapacityAutoScalingSettings) =>
      _$this._provisionedReadCapacityAutoScalingSettings =
          provisionedReadCapacityAutoScalingSettings;

  _i4.Int64? _provisionedReadCapacityUnits;
  _i4.Int64? get provisionedReadCapacityUnits =>
      _$this._provisionedReadCapacityUnits;
  set provisionedReadCapacityUnits(_i4.Int64? provisionedReadCapacityUnits) =>
      _$this._provisionedReadCapacityUnits = provisionedReadCapacityUnits;

  _i3.AutoScalingSettingsDescriptionBuilder?
      _provisionedWriteCapacityAutoScalingSettings;
  _i3.AutoScalingSettingsDescriptionBuilder
      get provisionedWriteCapacityAutoScalingSettings =>
          _$this._provisionedWriteCapacityAutoScalingSettings ??=
              new _i3.AutoScalingSettingsDescriptionBuilder();
  set provisionedWriteCapacityAutoScalingSettings(
          _i3.AutoScalingSettingsDescriptionBuilder?
              provisionedWriteCapacityAutoScalingSettings) =>
      _$this._provisionedWriteCapacityAutoScalingSettings =
          provisionedWriteCapacityAutoScalingSettings;

  _i4.Int64? _provisionedWriteCapacityUnits;
  _i4.Int64? get provisionedWriteCapacityUnits =>
      _$this._provisionedWriteCapacityUnits;
  set provisionedWriteCapacityUnits(_i4.Int64? provisionedWriteCapacityUnits) =>
      _$this._provisionedWriteCapacityUnits = provisionedWriteCapacityUnits;

  ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder() {
    ReplicaGlobalSecondaryIndexSettingsDescription._init(this);
  }

  ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _indexStatus = $v.indexStatus;
      _provisionedReadCapacityAutoScalingSettings =
          $v.provisionedReadCapacityAutoScalingSettings?.toBuilder();
      _provisionedReadCapacityUnits = $v.provisionedReadCapacityUnits;
      _provisionedWriteCapacityAutoScalingSettings =
          $v.provisionedWriteCapacityAutoScalingSettings?.toBuilder();
      _provisionedWriteCapacityUnits = $v.provisionedWriteCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaGlobalSecondaryIndexSettingsDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaGlobalSecondaryIndexSettingsDescription;
  }

  @override
  void update(
      void Function(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaGlobalSecondaryIndexSettingsDescription build() => _build();

  _$ReplicaGlobalSecondaryIndexSettingsDescription _build() {
    _$ReplicaGlobalSecondaryIndexSettingsDescription _$result;
    try {
      _$result = _$v ??
          new _$ReplicaGlobalSecondaryIndexSettingsDescription._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName,
                  r'ReplicaGlobalSecondaryIndexSettingsDescription',
                  'indexName'),
              indexStatus: indexStatus,
              provisionedReadCapacityAutoScalingSettings:
                  _provisionedReadCapacityAutoScalingSettings?.build(),
              provisionedReadCapacityUnits: provisionedReadCapacityUnits,
              provisionedWriteCapacityAutoScalingSettings:
                  _provisionedWriteCapacityAutoScalingSettings?.build(),
              provisionedWriteCapacityUnits: provisionedWriteCapacityUnits);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedReadCapacityAutoScalingSettings';
        _provisionedReadCapacityAutoScalingSettings?.build();

        _$failedField = 'provisionedWriteCapacityAutoScalingSettings';
        _provisionedWriteCapacityAutoScalingSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaGlobalSecondaryIndexSettingsDescription',
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
