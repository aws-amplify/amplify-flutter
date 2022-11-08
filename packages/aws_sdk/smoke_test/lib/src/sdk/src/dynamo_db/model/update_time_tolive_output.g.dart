// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_time_tolive_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTimeToliveOutput extends UpdateTimeToliveOutput {
  @override
  final _i2.TimeToliveSpecification? timeToliveSpecification;

  factory _$UpdateTimeToliveOutput(
          [void Function(UpdateTimeToliveOutputBuilder)? updates]) =>
      (new UpdateTimeToliveOutputBuilder()..update(updates))._build();

  _$UpdateTimeToliveOutput._({this.timeToliveSpecification}) : super._();

  @override
  UpdateTimeToliveOutput rebuild(
          void Function(UpdateTimeToliveOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTimeToliveOutputBuilder toBuilder() =>
      new UpdateTimeToliveOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTimeToliveOutput &&
        timeToliveSpecification == other.timeToliveSpecification;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timeToliveSpecification.hashCode));
  }
}

class UpdateTimeToliveOutputBuilder
    implements Builder<UpdateTimeToliveOutput, UpdateTimeToliveOutputBuilder> {
  _$UpdateTimeToliveOutput? _$v;

  _i2.TimeToliveSpecificationBuilder? _timeToliveSpecification;
  _i2.TimeToliveSpecificationBuilder get timeToliveSpecification =>
      _$this._timeToliveSpecification ??=
          new _i2.TimeToliveSpecificationBuilder();
  set timeToliveSpecification(
          _i2.TimeToliveSpecificationBuilder? timeToliveSpecification) =>
      _$this._timeToliveSpecification = timeToliveSpecification;

  UpdateTimeToliveOutputBuilder() {
    UpdateTimeToliveOutput._init(this);
  }

  UpdateTimeToliveOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeToliveSpecification = $v.timeToliveSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTimeToliveOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTimeToliveOutput;
  }

  @override
  void update(void Function(UpdateTimeToliveOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTimeToliveOutput build() => _build();

  _$UpdateTimeToliveOutput _build() {
    _$UpdateTimeToliveOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTimeToliveOutput._(
              timeToliveSpecification: _timeToliveSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToliveSpecification';
        _timeToliveSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTimeToliveOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
