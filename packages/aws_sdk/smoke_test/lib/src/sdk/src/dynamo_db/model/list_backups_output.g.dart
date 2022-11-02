// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_backups_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBackupsOutput extends ListBackupsOutput {
  @override
  final _i3.BuiltList<_i2.BackupSummary>? backupSummaries;
  @override
  final String? lastEvaluatedBackupArn;

  factory _$ListBackupsOutput(
          [void Function(ListBackupsOutputBuilder)? updates]) =>
      (new ListBackupsOutputBuilder()..update(updates))._build();

  _$ListBackupsOutput._({this.backupSummaries, this.lastEvaluatedBackupArn})
      : super._();

  @override
  ListBackupsOutput rebuild(void Function(ListBackupsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBackupsOutputBuilder toBuilder() =>
      new ListBackupsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBackupsOutput &&
        backupSummaries == other.backupSummaries &&
        lastEvaluatedBackupArn == other.lastEvaluatedBackupArn;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, backupSummaries.hashCode), lastEvaluatedBackupArn.hashCode));
  }
}

class ListBackupsOutputBuilder
    implements Builder<ListBackupsOutput, ListBackupsOutputBuilder> {
  _$ListBackupsOutput? _$v;

  _i3.ListBuilder<_i2.BackupSummary>? _backupSummaries;
  _i3.ListBuilder<_i2.BackupSummary> get backupSummaries =>
      _$this._backupSummaries ??= new _i3.ListBuilder<_i2.BackupSummary>();
  set backupSummaries(_i3.ListBuilder<_i2.BackupSummary>? backupSummaries) =>
      _$this._backupSummaries = backupSummaries;

  String? _lastEvaluatedBackupArn;
  String? get lastEvaluatedBackupArn => _$this._lastEvaluatedBackupArn;
  set lastEvaluatedBackupArn(String? lastEvaluatedBackupArn) =>
      _$this._lastEvaluatedBackupArn = lastEvaluatedBackupArn;

  ListBackupsOutputBuilder() {
    ListBackupsOutput._init(this);
  }

  ListBackupsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupSummaries = $v.backupSummaries?.toBuilder();
      _lastEvaluatedBackupArn = $v.lastEvaluatedBackupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBackupsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBackupsOutput;
  }

  @override
  void update(void Function(ListBackupsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBackupsOutput build() => _build();

  _$ListBackupsOutput _build() {
    _$ListBackupsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBackupsOutput._(
              backupSummaries: _backupSummaries?.build(),
              lastEvaluatedBackupArn: lastEvaluatedBackupArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupSummaries';
        _backupSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBackupsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
