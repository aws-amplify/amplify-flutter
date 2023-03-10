// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_table_replica_auto_scaling_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTableReplicaAutoScalingInput
    extends DescribeTableReplicaAutoScalingInput {
  @override
  final String tableName;

  factory _$DescribeTableReplicaAutoScalingInput(
          [void Function(DescribeTableReplicaAutoScalingInputBuilder)?
              updates]) =>
      (new DescribeTableReplicaAutoScalingInputBuilder()..update(updates))
          ._build();

  _$DescribeTableReplicaAutoScalingInput._({required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeTableReplicaAutoScalingInput', 'tableName');
  }

  @override
  DescribeTableReplicaAutoScalingInput rebuild(
          void Function(DescribeTableReplicaAutoScalingInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTableReplicaAutoScalingInputBuilder toBuilder() =>
      new DescribeTableReplicaAutoScalingInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTableReplicaAutoScalingInput &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTableReplicaAutoScalingInputBuilder
    implements
        Builder<DescribeTableReplicaAutoScalingInput,
            DescribeTableReplicaAutoScalingInputBuilder> {
  _$DescribeTableReplicaAutoScalingInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeTableReplicaAutoScalingInputBuilder() {
    DescribeTableReplicaAutoScalingInput._init(this);
  }

  DescribeTableReplicaAutoScalingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTableReplicaAutoScalingInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTableReplicaAutoScalingInput;
  }

  @override
  void update(
      void Function(DescribeTableReplicaAutoScalingInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTableReplicaAutoScalingInput build() => _build();

  _$DescribeTableReplicaAutoScalingInput _build() {
    final _$result = _$v ??
        new _$DescribeTableReplicaAutoScalingInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(tableName,
                r'DescribeTableReplicaAutoScalingInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
