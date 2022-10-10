// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_backup_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBackupOutput extends CreateBackupOutput {
  @override
  final _i2.BackupDetails? backupDetails;

  factory _$CreateBackupOutput(
          [void Function(CreateBackupOutputBuilder)? updates]) =>
      (new CreateBackupOutputBuilder()..update(updates))._build();

  _$CreateBackupOutput._({this.backupDetails}) : super._();

  @override
  CreateBackupOutput rebuild(
          void Function(CreateBackupOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBackupOutputBuilder toBuilder() =>
      new CreateBackupOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBackupOutput && backupDetails == other.backupDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(0, backupDetails.hashCode));
  }
}

class CreateBackupOutputBuilder
    implements Builder<CreateBackupOutput, CreateBackupOutputBuilder> {
  _$CreateBackupOutput? _$v;

  _i2.BackupDetailsBuilder? _backupDetails;
  _i2.BackupDetailsBuilder get backupDetails =>
      _$this._backupDetails ??= new _i2.BackupDetailsBuilder();
  set backupDetails(_i2.BackupDetailsBuilder? backupDetails) =>
      _$this._backupDetails = backupDetails;

  CreateBackupOutputBuilder() {
    CreateBackupOutput._init(this);
  }

  CreateBackupOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupDetails = $v.backupDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBackupOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBackupOutput;
  }

  @override
  void update(void Function(CreateBackupOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBackupOutput build() => _build();

  _$CreateBackupOutput _build() {
    _$CreateBackupOutput _$result;
    try {
      _$result = _$v ??
          new _$CreateBackupOutput._(backupDetails: _backupDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupDetails';
        _backupDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateBackupOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
