// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc_10.model.simple_scalar_properties_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleScalarPropertiesInput extends SimpleScalarPropertiesInput {
  @override
  final double? doubleValue;
  @override
  final double? floatValue;

  factory _$SimpleScalarPropertiesInput(
          [void Function(SimpleScalarPropertiesInputBuilder)? updates]) =>
      (new SimpleScalarPropertiesInputBuilder()..update(updates))._build();

  _$SimpleScalarPropertiesInput._({this.doubleValue, this.floatValue})
      : super._();

  @override
  SimpleScalarPropertiesInput rebuild(
          void Function(SimpleScalarPropertiesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleScalarPropertiesInputBuilder toBuilder() =>
      new SimpleScalarPropertiesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleScalarPropertiesInput &&
        doubleValue == other.doubleValue &&
        floatValue == other.floatValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, doubleValue.hashCode), floatValue.hashCode));
  }
}

class SimpleScalarPropertiesInputBuilder
    implements
        Builder<SimpleScalarPropertiesInput,
            SimpleScalarPropertiesInputBuilder> {
  _$SimpleScalarPropertiesInput? _$v;

  double? _doubleValue;
  double? get doubleValue => _$this._doubleValue;
  set doubleValue(double? doubleValue) => _$this._doubleValue = doubleValue;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  SimpleScalarPropertiesInputBuilder() {
    SimpleScalarPropertiesInput._init(this);
  }

  SimpleScalarPropertiesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doubleValue = $v.doubleValue;
      _floatValue = $v.floatValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleScalarPropertiesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleScalarPropertiesInput;
  }

  @override
  void update(void Function(SimpleScalarPropertiesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleScalarPropertiesInput build() => _build();

  _$SimpleScalarPropertiesInput _build() {
    final _$result = _$v ??
        new _$SimpleScalarPropertiesInput._(
            doubleValue: doubleValue, floatValue: floatValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
