// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_global_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGlobalTableOutput extends CreateGlobalTableOutput {
  @override
  final _i2.GlobalTableDescription? globalTableDescription;

  factory _$CreateGlobalTableOutput(
          [void Function(CreateGlobalTableOutputBuilder)? updates]) =>
      (new CreateGlobalTableOutputBuilder()..update(updates))._build();

  _$CreateGlobalTableOutput._({this.globalTableDescription}) : super._();

  @override
  CreateGlobalTableOutput rebuild(
          void Function(CreateGlobalTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGlobalTableOutputBuilder toBuilder() =>
      new CreateGlobalTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGlobalTableOutput &&
        globalTableDescription == other.globalTableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, globalTableDescription.hashCode));
  }
}

class CreateGlobalTableOutputBuilder
    implements
        Builder<CreateGlobalTableOutput, CreateGlobalTableOutputBuilder> {
  _$CreateGlobalTableOutput? _$v;

  _i2.GlobalTableDescriptionBuilder? _globalTableDescription;
  _i2.GlobalTableDescriptionBuilder get globalTableDescription =>
      _$this._globalTableDescription ??=
          new _i2.GlobalTableDescriptionBuilder();
  set globalTableDescription(
          _i2.GlobalTableDescriptionBuilder? globalTableDescription) =>
      _$this._globalTableDescription = globalTableDescription;

  CreateGlobalTableOutputBuilder() {
    CreateGlobalTableOutput._init(this);
  }

  CreateGlobalTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableDescription = $v.globalTableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGlobalTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGlobalTableOutput;
  }

  @override
  void update(void Function(CreateGlobalTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGlobalTableOutput build() => _build();

  _$CreateGlobalTableOutput _build() {
    _$CreateGlobalTableOutput _$result;
    try {
      _$result = _$v ??
          new _$CreateGlobalTableOutput._(
              globalTableDescription: _globalTableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableDescription';
        _globalTableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateGlobalTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
