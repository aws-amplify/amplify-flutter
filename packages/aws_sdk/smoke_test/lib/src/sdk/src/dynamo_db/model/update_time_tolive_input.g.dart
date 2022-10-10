// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_time_tolive_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTimeToliveInput extends UpdateTimeToliveInput {
  @override
  final String tableName;
  @override
  final _i3.TimeToliveSpecification timeToliveSpecification;

  factory _$UpdateTimeToliveInput(
          [void Function(UpdateTimeToliveInputBuilder)? updates]) =>
      (new UpdateTimeToliveInputBuilder()..update(updates))._build();

  _$UpdateTimeToliveInput._(
      {required this.tableName, required this.timeToliveSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateTimeToliveInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(timeToliveSpecification,
        r'UpdateTimeToliveInput', 'timeToliveSpecification');
  }

  @override
  UpdateTimeToliveInput rebuild(
          void Function(UpdateTimeToliveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTimeToliveInputBuilder toBuilder() =>
      new UpdateTimeToliveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTimeToliveInput &&
        tableName == other.tableName &&
        timeToliveSpecification == other.timeToliveSpecification;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, tableName.hashCode), timeToliveSpecification.hashCode));
  }
}

class UpdateTimeToliveInputBuilder
    implements Builder<UpdateTimeToliveInput, UpdateTimeToliveInputBuilder> {
  _$UpdateTimeToliveInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.TimeToliveSpecificationBuilder? _timeToliveSpecification;
  _i3.TimeToliveSpecificationBuilder get timeToliveSpecification =>
      _$this._timeToliveSpecification ??=
          new _i3.TimeToliveSpecificationBuilder();
  set timeToliveSpecification(
          _i3.TimeToliveSpecificationBuilder? timeToliveSpecification) =>
      _$this._timeToliveSpecification = timeToliveSpecification;

  UpdateTimeToliveInputBuilder() {
    UpdateTimeToliveInput._init(this);
  }

  UpdateTimeToliveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _timeToliveSpecification = $v.timeToliveSpecification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTimeToliveInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTimeToliveInput;
  }

  @override
  void update(void Function(UpdateTimeToliveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTimeToliveInput build() => _build();

  _$UpdateTimeToliveInput _build() {
    _$UpdateTimeToliveInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTimeToliveInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateTimeToliveInput', 'tableName'),
              timeToliveSpecification: timeToliveSpecification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToliveSpecification';
        timeToliveSpecification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTimeToliveInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
