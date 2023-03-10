// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index_auto_scaling_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexAutoScalingUpdate
    extends GlobalSecondaryIndexAutoScalingUpdate {
  @override
  final String? indexName;
  @override
  final _i2.AutoScalingSettingsUpdate?
      provisionedWriteCapacityAutoScalingUpdate;

  factory _$GlobalSecondaryIndexAutoScalingUpdate(
          [void Function(GlobalSecondaryIndexAutoScalingUpdateBuilder)?
              updates]) =>
      (new GlobalSecondaryIndexAutoScalingUpdateBuilder()..update(updates))
          ._build();

  _$GlobalSecondaryIndexAutoScalingUpdate._(
      {this.indexName, this.provisionedWriteCapacityAutoScalingUpdate})
      : super._();

  @override
  GlobalSecondaryIndexAutoScalingUpdate rebuild(
          void Function(GlobalSecondaryIndexAutoScalingUpdateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexAutoScalingUpdateBuilder toBuilder() =>
      new GlobalSecondaryIndexAutoScalingUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndexAutoScalingUpdate &&
        indexName == other.indexName &&
        provisionedWriteCapacityAutoScalingUpdate ==
            other.provisionedWriteCapacityAutoScalingUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityAutoScalingUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalSecondaryIndexAutoScalingUpdateBuilder
    implements
        Builder<GlobalSecondaryIndexAutoScalingUpdate,
            GlobalSecondaryIndexAutoScalingUpdateBuilder> {
  _$GlobalSecondaryIndexAutoScalingUpdate? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.AutoScalingSettingsUpdateBuilder?
      _provisionedWriteCapacityAutoScalingUpdate;
  _i2.AutoScalingSettingsUpdateBuilder
      get provisionedWriteCapacityAutoScalingUpdate =>
          _$this._provisionedWriteCapacityAutoScalingUpdate ??=
              new _i2.AutoScalingSettingsUpdateBuilder();
  set provisionedWriteCapacityAutoScalingUpdate(
          _i2.AutoScalingSettingsUpdateBuilder?
              provisionedWriteCapacityAutoScalingUpdate) =>
      _$this._provisionedWriteCapacityAutoScalingUpdate =
          provisionedWriteCapacityAutoScalingUpdate;

  GlobalSecondaryIndexAutoScalingUpdateBuilder() {
    GlobalSecondaryIndexAutoScalingUpdate._init(this);
  }

  GlobalSecondaryIndexAutoScalingUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedWriteCapacityAutoScalingUpdate =
          $v.provisionedWriteCapacityAutoScalingUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndexAutoScalingUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndexAutoScalingUpdate;
  }

  @override
  void update(
      void Function(GlobalSecondaryIndexAutoScalingUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndexAutoScalingUpdate build() => _build();

  _$GlobalSecondaryIndexAutoScalingUpdate _build() {
    _$GlobalSecondaryIndexAutoScalingUpdate _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndexAutoScalingUpdate._(
              indexName: indexName,
              provisionedWriteCapacityAutoScalingUpdate:
                  _provisionedWriteCapacityAutoScalingUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedWriteCapacityAutoScalingUpdate';
        _provisionedWriteCapacityAutoScalingUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalSecondaryIndexAutoScalingUpdate',
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
