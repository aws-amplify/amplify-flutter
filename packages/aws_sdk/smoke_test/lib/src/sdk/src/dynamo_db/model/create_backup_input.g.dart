// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_backup_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBackupInput extends CreateBackupInput {
  @override
  final String backupName;
  @override
  final String tableName;

  factory _$CreateBackupInput(
          [void Function(CreateBackupInputBuilder)? updates]) =>
      (new CreateBackupInputBuilder()..update(updates))._build();

  _$CreateBackupInput._({required this.backupName, required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backupName, r'CreateBackupInput', 'backupName');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'CreateBackupInput', 'tableName');
  }

  @override
  CreateBackupInput rebuild(void Function(CreateBackupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBackupInputBuilder toBuilder() =>
      new CreateBackupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBackupInput &&
        backupName == other.backupName &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, backupName.hashCode), tableName.hashCode));
  }
}

class CreateBackupInputBuilder
    implements Builder<CreateBackupInput, CreateBackupInputBuilder> {
  _$CreateBackupInput? _$v;

  String? _backupName;
  String? get backupName => _$this._backupName;
  set backupName(String? backupName) => _$this._backupName = backupName;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  CreateBackupInputBuilder() {
    CreateBackupInput._init(this);
  }

  CreateBackupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupName = $v.backupName;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBackupInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBackupInput;
  }

  @override
  void update(void Function(CreateBackupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBackupInput build() => _build();

  _$CreateBackupInput _build() {
    final _$result = _$v ??
        new _$CreateBackupInput._(
            backupName: BuiltValueNullFieldError.checkNotNull(
                backupName, r'CreateBackupInput', 'backupName'),
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'CreateBackupInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
