// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_table_global_secondary_index_settings_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalTableGlobalSecondaryIndexSettingsUpdate
    extends GlobalTableGlobalSecondaryIndexSettingsUpdate {
  @override
  final String indexName;
  @override
  final _i2.AutoScalingSettingsUpdate?
      provisionedWriteCapacityAutoScalingSettingsUpdate;
  @override
  final _i3.Int64? provisionedWriteCapacityUnits;

  factory _$GlobalTableGlobalSecondaryIndexSettingsUpdate(
          [void Function(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder)?
              updates]) =>
      (new GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder()
            ..update(updates))
          ._build();

  _$GlobalTableGlobalSecondaryIndexSettingsUpdate._(
      {required this.indexName,
      this.provisionedWriteCapacityAutoScalingSettingsUpdate,
      this.provisionedWriteCapacityUnits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(indexName,
        r'GlobalTableGlobalSecondaryIndexSettingsUpdate', 'indexName');
  }

  @override
  GlobalTableGlobalSecondaryIndexSettingsUpdate rebuild(
          void Function(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder toBuilder() =>
      new GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalTableGlobalSecondaryIndexSettingsUpdate &&
        indexName == other.indexName &&
        provisionedWriteCapacityAutoScalingSettingsUpdate ==
            other.provisionedWriteCapacityAutoScalingSettingsUpdate &&
        provisionedWriteCapacityUnits == other.provisionedWriteCapacityUnits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash =
        $jc(_$hash, provisionedWriteCapacityAutoScalingSettingsUpdate.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder
    implements
        Builder<GlobalTableGlobalSecondaryIndexSettingsUpdate,
            GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder> {
  _$GlobalTableGlobalSecondaryIndexSettingsUpdate? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.AutoScalingSettingsUpdateBuilder?
      _provisionedWriteCapacityAutoScalingSettingsUpdate;
  _i2.AutoScalingSettingsUpdateBuilder
      get provisionedWriteCapacityAutoScalingSettingsUpdate =>
          _$this._provisionedWriteCapacityAutoScalingSettingsUpdate ??=
              new _i2.AutoScalingSettingsUpdateBuilder();
  set provisionedWriteCapacityAutoScalingSettingsUpdate(
          _i2.AutoScalingSettingsUpdateBuilder?
              provisionedWriteCapacityAutoScalingSettingsUpdate) =>
      _$this._provisionedWriteCapacityAutoScalingSettingsUpdate =
          provisionedWriteCapacityAutoScalingSettingsUpdate;

  _i3.Int64? _provisionedWriteCapacityUnits;
  _i3.Int64? get provisionedWriteCapacityUnits =>
      _$this._provisionedWriteCapacityUnits;
  set provisionedWriteCapacityUnits(_i3.Int64? provisionedWriteCapacityUnits) =>
      _$this._provisionedWriteCapacityUnits = provisionedWriteCapacityUnits;

  GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder() {
    GlobalTableGlobalSecondaryIndexSettingsUpdate._init(this);
  }

  GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedWriteCapacityAutoScalingSettingsUpdate =
          $v.provisionedWriteCapacityAutoScalingSettingsUpdate?.toBuilder();
      _provisionedWriteCapacityUnits = $v.provisionedWriteCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalTableGlobalSecondaryIndexSettingsUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalTableGlobalSecondaryIndexSettingsUpdate;
  }

  @override
  void update(
      void Function(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalTableGlobalSecondaryIndexSettingsUpdate build() => _build();

  _$GlobalTableGlobalSecondaryIndexSettingsUpdate _build() {
    _$GlobalTableGlobalSecondaryIndexSettingsUpdate _$result;
    try {
      _$result = _$v ??
          new _$GlobalTableGlobalSecondaryIndexSettingsUpdate._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName,
                  r'GlobalTableGlobalSecondaryIndexSettingsUpdate',
                  'indexName'),
              provisionedWriteCapacityAutoScalingSettingsUpdate:
                  _provisionedWriteCapacityAutoScalingSettingsUpdate?.build(),
              provisionedWriteCapacityUnits: provisionedWriteCapacityUnits);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedWriteCapacityAutoScalingSettingsUpdate';
        _provisionedWriteCapacityAutoScalingSettingsUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalTableGlobalSecondaryIndexSettingsUpdate',
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
