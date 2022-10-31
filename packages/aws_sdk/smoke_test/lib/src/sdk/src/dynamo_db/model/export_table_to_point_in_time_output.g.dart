// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_table_to_point_in_time_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTableToPointInTimeOutput extends ExportTableToPointInTimeOutput {
  @override
  final _i2.ExportDescription? exportDescription;

  factory _$ExportTableToPointInTimeOutput(
          [void Function(ExportTableToPointInTimeOutputBuilder)? updates]) =>
      (new ExportTableToPointInTimeOutputBuilder()..update(updates))._build();

  _$ExportTableToPointInTimeOutput._({this.exportDescription}) : super._();

  @override
  ExportTableToPointInTimeOutput rebuild(
          void Function(ExportTableToPointInTimeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTableToPointInTimeOutputBuilder toBuilder() =>
      new ExportTableToPointInTimeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTableToPointInTimeOutput &&
        exportDescription == other.exportDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, exportDescription.hashCode));
  }
}

class ExportTableToPointInTimeOutputBuilder
    implements
        Builder<ExportTableToPointInTimeOutput,
            ExportTableToPointInTimeOutputBuilder> {
  _$ExportTableToPointInTimeOutput? _$v;

  _i2.ExportDescriptionBuilder? _exportDescription;
  _i2.ExportDescriptionBuilder get exportDescription =>
      _$this._exportDescription ??= new _i2.ExportDescriptionBuilder();
  set exportDescription(_i2.ExportDescriptionBuilder? exportDescription) =>
      _$this._exportDescription = exportDescription;

  ExportTableToPointInTimeOutputBuilder() {
    ExportTableToPointInTimeOutput._init(this);
  }

  ExportTableToPointInTimeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportDescription = $v.exportDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTableToPointInTimeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTableToPointInTimeOutput;
  }

  @override
  void update(void Function(ExportTableToPointInTimeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTableToPointInTimeOutput build() => _build();

  _$ExportTableToPointInTimeOutput _build() {
    _$ExportTableToPointInTimeOutput _$result;
    try {
      _$result = _$v ??
          new _$ExportTableToPointInTimeOutput._(
              exportDescription: _exportDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportDescription';
        _exportDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportTableToPointInTimeOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
