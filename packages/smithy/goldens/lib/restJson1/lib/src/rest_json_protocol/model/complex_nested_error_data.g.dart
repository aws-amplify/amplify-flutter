// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.complex_nested_error_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexNestedErrorData extends ComplexNestedErrorData {
  @override
  final String? foo;

  factory _$ComplexNestedErrorData(
          [void Function(ComplexNestedErrorDataBuilder)? updates]) =>
      (new ComplexNestedErrorDataBuilder()..update(updates))._build();

  _$ComplexNestedErrorData._({this.foo}) : super._();

  @override
  ComplexNestedErrorData rebuild(
          void Function(ComplexNestedErrorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplexNestedErrorDataBuilder toBuilder() =>
      new ComplexNestedErrorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexNestedErrorData && foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, foo.hashCode));
  }
}

class ComplexNestedErrorDataBuilder
    implements Builder<ComplexNestedErrorData, ComplexNestedErrorDataBuilder> {
  _$ComplexNestedErrorData? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  ComplexNestedErrorDataBuilder() {
    ComplexNestedErrorData._init(this);
  }

  ComplexNestedErrorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexNestedErrorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplexNestedErrorData;
  }

  @override
  void update(void Function(ComplexNestedErrorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexNestedErrorData build() => _build();

  _$ComplexNestedErrorData _build() {
    final _$result = _$v ?? new _$ComplexNestedErrorData._(foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
