// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_backup_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBackupInput extends DeleteBackupInput {
  @override
  final String backupArn;

  factory _$DeleteBackupInput(
          [void Function(DeleteBackupInputBuilder)? updates]) =>
      (new DeleteBackupInputBuilder()..update(updates))._build();

  _$DeleteBackupInput._({required this.backupArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backupArn, r'DeleteBackupInput', 'backupArn');
  }

  @override
  DeleteBackupInput rebuild(void Function(DeleteBackupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBackupInputBuilder toBuilder() =>
      new DeleteBackupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBackupInput && backupArn == other.backupArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backupArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBackupInputBuilder
    implements Builder<DeleteBackupInput, DeleteBackupInputBuilder> {
  _$DeleteBackupInput? _$v;

  String? _backupArn;
  String? get backupArn => _$this._backupArn;
  set backupArn(String? backupArn) => _$this._backupArn = backupArn;

  DeleteBackupInputBuilder() {
    DeleteBackupInput._init(this);
  }

  DeleteBackupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupArn = $v.backupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBackupInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBackupInput;
  }

  @override
  void update(void Function(DeleteBackupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBackupInput build() => _build();

  _$DeleteBackupInput _build() {
    final _$result = _$v ??
        new _$DeleteBackupInput._(
            backupArn: BuiltValueNullFieldError.checkNotNull(
                backupArn, r'DeleteBackupInput', 'backupArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
