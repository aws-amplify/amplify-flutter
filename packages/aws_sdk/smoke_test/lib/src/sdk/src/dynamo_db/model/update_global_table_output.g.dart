// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_global_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableOutput extends UpdateGlobalTableOutput {
  @override
  final _i2.GlobalTableDescription? globalTableDescription;

  factory _$UpdateGlobalTableOutput(
          [void Function(UpdateGlobalTableOutputBuilder)? updates]) =>
      (new UpdateGlobalTableOutputBuilder()..update(updates))._build();

  _$UpdateGlobalTableOutput._({this.globalTableDescription}) : super._();

  @override
  UpdateGlobalTableOutput rebuild(
          void Function(UpdateGlobalTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableOutputBuilder toBuilder() =>
      new UpdateGlobalTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableOutput &&
        globalTableDescription == other.globalTableDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(0, globalTableDescription.hashCode));
  }
}

class UpdateGlobalTableOutputBuilder
    implements
        Builder<UpdateGlobalTableOutput, UpdateGlobalTableOutputBuilder> {
  _$UpdateGlobalTableOutput? _$v;

  _i2.GlobalTableDescriptionBuilder? _globalTableDescription;
  _i2.GlobalTableDescriptionBuilder get globalTableDescription =>
      _$this._globalTableDescription ??=
          new _i2.GlobalTableDescriptionBuilder();
  set globalTableDescription(
          _i2.GlobalTableDescriptionBuilder? globalTableDescription) =>
      _$this._globalTableDescription = globalTableDescription;

  UpdateGlobalTableOutputBuilder() {
    UpdateGlobalTableOutput._init(this);
  }

  UpdateGlobalTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableDescription = $v.globalTableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableOutput;
  }

  @override
  void update(void Function(UpdateGlobalTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableOutput build() => _build();

  _$UpdateGlobalTableOutput _build() {
    _$UpdateGlobalTableOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableOutput._(
              globalTableDescription: _globalTableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableDescription';
        _globalTableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
