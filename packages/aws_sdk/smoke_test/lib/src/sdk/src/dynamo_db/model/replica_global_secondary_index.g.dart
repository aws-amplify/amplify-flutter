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
    return $jf($jc(
        $jc(0, indexName.hashCode), provisionedThroughputOverride.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
