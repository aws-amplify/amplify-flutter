// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_backup_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeBackupOutput extends DescribeBackupOutput {
  @override
  final _i2.BackupDescription? backupDescription;

  factory _$DescribeBackupOutput(
          [void Function(DescribeBackupOutputBuilder)? updates]) =>
      (new DescribeBackupOutputBuilder()..update(updates))._build();

  _$DescribeBackupOutput._({this.backupDescription}) : super._();

  @override
  DescribeBackupOutput rebuild(
          void Function(DescribeBackupOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeBackupOutputBuilder toBuilder() =>
      new DescribeBackupOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeBackupOutput &&
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

class DescribeBackupOutputBuilder
    implements Builder<DescribeBackupOutput, DescribeBackupOutputBuilder> {
  _$DescribeBackupOutput? _$v;

  _i2.BackupDescriptionBuilder? _backupDescription;
  _i2.BackupDescriptionBuilder get backupDescription =>
      _$this._backupDescription ??= new _i2.BackupDescriptionBuilder();
  set backupDescription(_i2.BackupDescriptionBuilder? backupDescription) =>
      _$this._backupDescription = backupDescription;

  DescribeBackupOutputBuilder() {
    DescribeBackupOutput._init(this);
  }

  DescribeBackupOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupDescription = $v.backupDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeBackupOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeBackupOutput;
  }

  @override
  void update(void Function(DescribeBackupOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeBackupOutput build() => _build();

  _$DescribeBackupOutput _build() {
    _$DescribeBackupOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeBackupOutput._(
              backupDescription: _backupDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupDescription';
        _backupDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeBackupOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
