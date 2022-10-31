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
    return $jf($jc(0, backupArn.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
