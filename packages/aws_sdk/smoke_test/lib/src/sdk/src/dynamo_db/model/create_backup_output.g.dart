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
    var _$hash = 0;
    _$hash = $jc(_$hash, backupDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
