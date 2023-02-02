// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_table_replica_auto_scaling_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTableReplicaAutoScalingOutput
    extends UpdateTableReplicaAutoScalingOutput {
  @override
  final _i2.TableAutoScalingDescription? tableAutoScalingDescription;

  factory _$UpdateTableReplicaAutoScalingOutput(
          [void Function(UpdateTableReplicaAutoScalingOutputBuilder)?
              updates]) =>
      (new UpdateTableReplicaAutoScalingOutputBuilder()..update(updates))
          ._build();

  _$UpdateTableReplicaAutoScalingOutput._({this.tableAutoScalingDescription})
      : super._();

  @override
  UpdateTableReplicaAutoScalingOutput rebuild(
          void Function(UpdateTableReplicaAutoScalingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTableReplicaAutoScalingOutputBuilder toBuilder() =>
      new UpdateTableReplicaAutoScalingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTableReplicaAutoScalingOutput &&
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

class UpdateTableReplicaAutoScalingOutputBuilder
    implements
        Builder<UpdateTableReplicaAutoScalingOutput,
            UpdateTableReplicaAutoScalingOutputBuilder> {
  _$UpdateTableReplicaAutoScalingOutput? _$v;

  _i2.TableAutoScalingDescriptionBuilder? _tableAutoScalingDescription;
  _i2.TableAutoScalingDescriptionBuilder get tableAutoScalingDescription =>
      _$this._tableAutoScalingDescription ??=
          new _i2.TableAutoScalingDescriptionBuilder();
  set tableAutoScalingDescription(
          _i2.TableAutoScalingDescriptionBuilder?
              tableAutoScalingDescription) =>
      _$this._tableAutoScalingDescription = tableAutoScalingDescription;

  UpdateTableReplicaAutoScalingOutputBuilder() {
    UpdateTableReplicaAutoScalingOutput._init(this);
  }

  UpdateTableReplicaAutoScalingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableAutoScalingDescription =
          $v.tableAutoScalingDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTableReplicaAutoScalingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTableReplicaAutoScalingOutput;
  }

  @override
  void update(
      void Function(UpdateTableReplicaAutoScalingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTableReplicaAutoScalingOutput build() => _build();

  _$UpdateTableReplicaAutoScalingOutput _build() {
    _$UpdateTableReplicaAutoScalingOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTableReplicaAutoScalingOutput._(
              tableAutoScalingDescription:
                  _tableAutoScalingDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableAutoScalingDescription';
        _tableAutoScalingDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTableReplicaAutoScalingOutput',
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
