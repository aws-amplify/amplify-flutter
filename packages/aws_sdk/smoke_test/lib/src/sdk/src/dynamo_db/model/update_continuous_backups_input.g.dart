// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_continuous_backups_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateContinuousBackupsInput extends UpdateContinuousBackupsInput {
  @override
  final _i3.PointInTimeRecoverySpecification pointInTimeRecoverySpecification;
  @override
  final String tableName;

  factory _$UpdateContinuousBackupsInput(
          [void Function(UpdateContinuousBackupsInputBuilder)? updates]) =>
      (new UpdateContinuousBackupsInputBuilder()..update(updates))._build();

  _$UpdateContinuousBackupsInput._(
      {required this.pointInTimeRecoverySpecification, required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(pointInTimeRecoverySpecification,
        r'UpdateContinuousBackupsInput', 'pointInTimeRecoverySpecification');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateContinuousBackupsInput', 'tableName');
  }

  @override
  UpdateContinuousBackupsInput rebuild(
          void Function(UpdateContinuousBackupsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateContinuousBackupsInputBuilder toBuilder() =>
      new UpdateContinuousBackupsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateContinuousBackupsInput &&
        pointInTimeRecoverySpecification ==
            other.pointInTimeRecoverySpecification &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, pointInTimeRecoverySpecification.hashCode), tableName.hashCode));
  }
}

class UpdateContinuousBackupsInputBuilder
    implements
        Builder<UpdateContinuousBackupsInput,
            UpdateContinuousBackupsInputBuilder> {
  _$UpdateContinuousBackupsInput? _$v;

  _i3.PointInTimeRecoverySpecificationBuilder?
      _pointInTimeRecoverySpecification;
  _i3.PointInTimeRecoverySpecificationBuilder
      get pointInTimeRecoverySpecification =>
          _$this._pointInTimeRecoverySpecification ??=
              new _i3.PointInTimeRecoverySpecificationBuilder();
  set pointInTimeRecoverySpecification(
          _i3.PointInTimeRecoverySpecificationBuilder?
              pointInTimeRecoverySpecification) =>
      _$this._pointInTimeRecoverySpecification =
          pointInTimeRecoverySpecification;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  UpdateContinuousBackupsInputBuilder() {
    UpdateContinuousBackupsInput._init(this);
  }

  UpdateContinuousBackupsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pointInTimeRecoverySpecification =
          $v.pointInTimeRecoverySpecification.toBuilder();
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateContinuousBackupsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateContinuousBackupsInput;
  }

  @override
  void update(void Function(UpdateContinuousBackupsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateContinuousBackupsInput build() => _build();

  _$UpdateContinuousBackupsInput _build() {
    _$UpdateContinuousBackupsInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateContinuousBackupsInput._(
              pointInTimeRecoverySpecification:
                  pointInTimeRecoverySpecification.build(),
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateContinuousBackupsInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pointInTimeRecoverySpecification';
        pointInTimeRecoverySpecification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateContinuousBackupsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
