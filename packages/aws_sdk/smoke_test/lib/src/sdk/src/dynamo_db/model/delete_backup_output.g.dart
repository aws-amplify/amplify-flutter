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
    var _$hash = 0;
    _$hash = $jc(_$hash, backupDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
