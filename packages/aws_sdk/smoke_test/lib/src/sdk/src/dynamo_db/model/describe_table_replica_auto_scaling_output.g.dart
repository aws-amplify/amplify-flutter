// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_table_replica_auto_scaling_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTableReplicaAutoScalingOutput
    extends DescribeTableReplicaAutoScalingOutput {
  @override
  final _i2.TableAutoScalingDescription? tableAutoScalingDescription;

  factory _$DescribeTableReplicaAutoScalingOutput(
          [void Function(DescribeTableReplicaAutoScalingOutputBuilder)?
              updates]) =>
      (new DescribeTableReplicaAutoScalingOutputBuilder()..update(updates))
          ._build();

  _$DescribeTableReplicaAutoScalingOutput._({this.tableAutoScalingDescription})
      : super._();

  @override
  DescribeTableReplicaAutoScalingOutput rebuild(
          void Function(DescribeTableReplicaAutoScalingOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTableReplicaAutoScalingOutputBuilder toBuilder() =>
      new DescribeTableReplicaAutoScalingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTableReplicaAutoScalingOutput &&
        tableAutoScalingDescription == other.tableAutoScalingDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableAutoScalingDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTableReplicaAutoScalingOutputBuilder
    implements
        Builder<DescribeTableReplicaAutoScalingOutput,
            DescribeTableReplicaAutoScalingOutputBuilder> {
  _$DescribeTableReplicaAutoScalingOutput? _$v;

  _i2.TableAutoScalingDescriptionBuilder? _tableAutoScalingDescription;
  _i2.TableAutoScalingDescriptionBuilder get tableAutoScalingDescription =>
      _$this._tableAutoScalingDescription ??=
          new _i2.TableAutoScalingDescriptionBuilder();
  set tableAutoScalingDescription(
          _i2.TableAutoScalingDescriptionBuilder?
              tableAutoScalingDescription) =>
      _$this._tableAutoScalingDescription = tableAutoScalingDescription;

  DescribeTableReplicaAutoScalingOutputBuilder() {
    DescribeTableReplicaAutoScalingOutput._init(this);
  }

  DescribeTableReplicaAutoScalingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableAutoScalingDescription =
          $v.tableAutoScalingDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTableReplicaAutoScalingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTableReplicaAutoScalingOutput;
  }

  @override
  void update(
      void Function(DescribeTableReplicaAutoScalingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTableReplicaAutoScalingOutput build() => _build();

  _$DescribeTableReplicaAutoScalingOutput _build() {
    _$DescribeTableReplicaAutoScalingOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeTableReplicaAutoScalingOutput._(
              tableAutoScalingDescription:
                  _tableAutoScalingDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableAutoScalingDescription';
        _tableAutoScalingDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTableReplicaAutoScalingOutput',
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
