// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_backup_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBackupOutput extends DeleteBackupOutput {
  @override
  final _i2.BackupDescription? backupDescription;

  factory _$DeleteBackupOutput(
          [void Function(DeleteBackupOutputBuilder)? updates]) =>
      (new DeleteBackupOutputBuilder()..update(updates))._build();

  _$DeleteBackupOutput._({this.backupDescription}) : super._();

  @override
  DeleteBackupOutput rebuild(
          void Function(DeleteBackupOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBackupOutputBuilder toBuilder() =>
      new DeleteBackupOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBackupOutput &&
        backupDescription == other.backupDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, backupDescription.hashCode));
  }
}

class DeleteBackupOutputBuilder
    implements Builder<DeleteBackupOutput, DeleteBackupOutputBuilder> {
  _$DeleteBackupOutput? _$v;

  _i2.BackupDescriptionBuilder? _backupDescription;
  _i2.BackupDescriptionBuilder get backupDescription =>
      _$this._backupDescription ??= new _i2.BackupDescriptionBuilder();
  set backupDescription(_i2.BackupDescriptionBuilder? backupDescription) =>
      _$this._backupDescription = backupDescription;

  DeleteBackupOutputBuilder() {
    DeleteBackupOutput._init(this);
  }

  DeleteBackupOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupDescription = $v.backupDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBackupOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBackupOutput;
  }

  @override
  void update(void Function(DeleteBackupOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBackupOutput build() => _build();

  _$DeleteBackupOutput _build() {
    _$DeleteBackupOutput _$result;
    try {
      _$result = _$v ??
          new _$DeleteBackupOutput._(
              backupDescription: _backupDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupDescription';
        _backupDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteBackupOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
