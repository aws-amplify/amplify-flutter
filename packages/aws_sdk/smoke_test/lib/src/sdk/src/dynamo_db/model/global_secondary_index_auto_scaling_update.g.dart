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
    return $jf($jc($jc(0, indexName.hashCode),
        provisionedWriteCapacityAutoScalingUpdate.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
