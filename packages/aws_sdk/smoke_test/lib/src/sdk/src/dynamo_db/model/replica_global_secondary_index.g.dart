// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_global_secondary_index;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaGlobalSecondaryIndex extends ReplicaGlobalSecondaryIndex {
  @override
  final String indexName;
  @override
  final _i2.ProvisionedThroughputOverride? provisionedThroughputOverride;

  factory _$ReplicaGlobalSecondaryIndex(
          [void Function(ReplicaGlobalSecondaryIndexBuilder)? updates]) =>
      (new ReplicaGlobalSecondaryIndexBuilder()..update(updates))._build();

  _$ReplicaGlobalSecondaryIndex._(
      {required this.indexName, this.provisionedThroughputOverride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'ReplicaGlobalSecondaryIndex', 'indexName');
  }

  @override
  ReplicaGlobalSecondaryIndex rebuild(
          void Function(ReplicaGlobalSecondaryIndexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaGlobalSecondaryIndexBuilder toBuilder() =>
      new ReplicaGlobalSecondaryIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaGlobalSecondaryIndex &&
        indexName == other.indexName &&
        provisionedThroughputOverride == other.provisionedThroughputOverride;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, provisionedThroughputOverride.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaGlobalSecondaryIndexBuilder
    implements
        Builder<ReplicaGlobalSecondaryIndex,
            ReplicaGlobalSecondaryIndexBuilder> {
  _$ReplicaGlobalSecondaryIndex? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  _i2.ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i2.ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          _i2.ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  ReplicaGlobalSecondaryIndexBuilder() {
    ReplicaGlobalSecondaryIndex._init(this);
  }

  ReplicaGlobalSecondaryIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaGlobalSecondaryIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaGlobalSecondaryIndex;
  }

  @override
  void update(void Function(ReplicaGlobalSecondaryIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaGlobalSecondaryIndex build() => _build();

  _$ReplicaGlobalSecondaryIndex _build() {
    _$ReplicaGlobalSecondaryIndex _$result;
    try {
      _$result = _$v ??
          new _$ReplicaGlobalSecondaryIndex._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName, r'ReplicaGlobalSecondaryIndex', 'indexName'),
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaGlobalSecondaryIndex', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
