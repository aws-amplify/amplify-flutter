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
    return $jf($jc(0, tableAutoScalingDescription.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
