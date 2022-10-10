// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_from_backup_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableFromBackupOutput extends RestoreTableFromBackupOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$RestoreTableFromBackupOutput(
          [void Function(RestoreTableFromBackupOutputBuilder)? updates]) =>
      (new RestoreTableFromBackupOutputBuilder()..update(updates))._build();

  _$RestoreTableFromBackupOutput._({this.tableDescription}) : super._();

  @override
  RestoreTableFromBackupOutput rebuild(
          void Function(RestoreTableFromBackupOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableFromBackupOutputBuilder toBuilder() =>
      new RestoreTableFromBackupOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableFromBackupOutput &&
        tableDescription == other.tableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableDescription.hashCode));
  }
}

class RestoreTableFromBackupOutputBuilder
    implements
        Builder<RestoreTableFromBackupOutput,
            RestoreTableFromBackupOutputBuilder> {
  _$RestoreTableFromBackupOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  RestoreTableFromBackupOutputBuilder() {
    RestoreTableFromBackupOutput._init(this);
  }

  RestoreTableFromBackupOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreTableFromBackupOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableFromBackupOutput;
  }

  @override
  void update(void Function(RestoreTableFromBackupOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableFromBackupOutput build() => _build();

  _$RestoreTableFromBackupOutput _build() {
    _$RestoreTableFromBackupOutput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableFromBackupOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreTableFromBackupOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
