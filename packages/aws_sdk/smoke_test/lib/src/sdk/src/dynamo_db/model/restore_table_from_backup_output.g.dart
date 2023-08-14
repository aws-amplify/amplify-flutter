// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_table_from_backup_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableFromBackupOutput extends RestoreTableFromBackupOutput {
  @override
  final TableDescription? tableDescription;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, tableDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreTableFromBackupOutputBuilder
    implements
        Builder<RestoreTableFromBackupOutput,
            RestoreTableFromBackupOutputBuilder> {
  _$RestoreTableFromBackupOutput? _$v;

  TableDescriptionBuilder? _tableDescription;
  TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new TableDescriptionBuilder();
  set tableDescription(TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  RestoreTableFromBackupOutputBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
