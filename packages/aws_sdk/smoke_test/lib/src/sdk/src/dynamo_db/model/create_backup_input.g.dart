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
    var _$hash = 0;
    _$hash = $jc(_$hash, backupName.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
