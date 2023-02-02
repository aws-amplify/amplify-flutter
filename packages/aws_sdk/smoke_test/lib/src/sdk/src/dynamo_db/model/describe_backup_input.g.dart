// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_backup_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeBackupInput extends DescribeBackupInput {
  @override
  final String backupArn;

  factory _$DescribeBackupInput(
          [void Function(DescribeBackupInputBuilder)? updates]) =>
      (new DescribeBackupInputBuilder()..update(updates))._build();

  _$DescribeBackupInput._({required this.backupArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backupArn, r'DescribeBackupInput', 'backupArn');
  }

  @override
  DescribeBackupInput rebuild(
          void Function(DescribeBackupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeBackupInputBuilder toBuilder() =>
      new DescribeBackupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeBackupInput && backupArn == other.backupArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backupArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeBackupInputBuilder
    implements Builder<DescribeBackupInput, DescribeBackupInputBuilder> {
  _$DescribeBackupInput? _$v;

  String? _backupArn;
  String? get backupArn => _$this._backupArn;
  set backupArn(String? backupArn) => _$this._backupArn = backupArn;

  DescribeBackupInputBuilder() {
    DescribeBackupInput._init(this);
  }

  DescribeBackupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupArn = $v.backupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeBackupInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeBackupInput;
  }

  @override
  void update(void Function(DescribeBackupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeBackupInput build() => _build();

  _$DescribeBackupInput _build() {
    final _$result = _$v ??
        new _$DescribeBackupInput._(
            backupArn: BuiltValueNullFieldError.checkNotNull(
                backupArn, r'DescribeBackupInput', 'backupArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
