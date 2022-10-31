// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.restore_table_topoint_intime_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreTableTopointIntimeOutput
    extends RestoreTableTopointIntimeOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$RestoreTableTopointIntimeOutput(
          [void Function(RestoreTableTopointIntimeOutputBuilder)? updates]) =>
      (new RestoreTableTopointIntimeOutputBuilder()..update(updates))._build();

  _$RestoreTableTopointIntimeOutput._({this.tableDescription}) : super._();

  @override
  RestoreTableTopointIntimeOutput rebuild(
          void Function(RestoreTableTopointIntimeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreTableTopointIntimeOutputBuilder toBuilder() =>
      new RestoreTableTopointIntimeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreTableTopointIntimeOutput &&
        tableDescription == other.tableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableDescription.hashCode));
  }
}

class RestoreTableTopointIntimeOutputBuilder
    implements
        Builder<RestoreTableTopointIntimeOutput,
            RestoreTableTopointIntimeOutputBuilder> {
  _$RestoreTableTopointIntimeOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  RestoreTableTopointIntimeOutputBuilder() {
    RestoreTableTopointIntimeOutput._init(this);
  }

  RestoreTableTopointIntimeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreTableTopointIntimeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreTableTopointIntimeOutput;
  }

  @override
  void update(void Function(RestoreTableTopointIntimeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreTableTopointIntimeOutput build() => _build();

  _$RestoreTableTopointIntimeOutput _build() {
    _$RestoreTableTopointIntimeOutput _$result;
    try {
      _$result = _$v ??
          new _$RestoreTableTopointIntimeOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreTableTopointIntimeOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
