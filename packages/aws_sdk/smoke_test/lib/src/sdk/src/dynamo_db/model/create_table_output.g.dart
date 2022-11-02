// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTableOutput extends CreateTableOutput {
  @override
  final _i2.TableDescription? tableDescription;

  factory _$CreateTableOutput(
          [void Function(CreateTableOutputBuilder)? updates]) =>
      (new CreateTableOutputBuilder()..update(updates))._build();

  _$CreateTableOutput._({this.tableDescription}) : super._();

  @override
  CreateTableOutput rebuild(void Function(CreateTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTableOutputBuilder toBuilder() =>
      new CreateTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTableOutput &&
        tableDescription == other.tableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tableDescription.hashCode));
  }
}

class CreateTableOutputBuilder
    implements Builder<CreateTableOutput, CreateTableOutputBuilder> {
  _$CreateTableOutput? _$v;

  _i2.TableDescriptionBuilder? _tableDescription;
  _i2.TableDescriptionBuilder get tableDescription =>
      _$this._tableDescription ??= new _i2.TableDescriptionBuilder();
  set tableDescription(_i2.TableDescriptionBuilder? tableDescription) =>
      _$this._tableDescription = tableDescription;

  CreateTableOutputBuilder() {
    CreateTableOutput._init(this);
  }

  CreateTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableDescription = $v.tableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTableOutput;
  }

  @override
  void update(void Function(CreateTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTableOutput build() => _build();

  _$CreateTableOutput _build() {
    _$CreateTableOutput _$result;
    try {
      _$result = _$v ??
          new _$CreateTableOutput._(
              tableDescription: _tableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableDescription';
        _tableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
