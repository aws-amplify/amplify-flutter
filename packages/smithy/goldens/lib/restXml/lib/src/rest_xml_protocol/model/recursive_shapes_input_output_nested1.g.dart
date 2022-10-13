// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.recursive_shapes_input_output_nested1;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveShapesInputOutputNested1
    extends RecursiveShapesInputOutputNested1 {
  @override
  final String? foo;
  @override
  final _i2.RecursiveShapesInputOutputNested2? nested;

  factory _$RecursiveShapesInputOutputNested1(
          [void Function(RecursiveShapesInputOutputNested1Builder)? updates]) =>
      (new RecursiveShapesInputOutputNested1Builder()..update(updates))
          ._build();

  _$RecursiveShapesInputOutputNested1._({this.foo, this.nested}) : super._();

  @override
  RecursiveShapesInputOutputNested1 rebuild(
          void Function(RecursiveShapesInputOutputNested1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputNested1Builder toBuilder() =>
      new RecursiveShapesInputOutputNested1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutputNested1 &&
        foo == other.foo &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foo.hashCode), nested.hashCode));
  }
}

class RecursiveShapesInputOutputNested1Builder
    implements
        Builder<RecursiveShapesInputOutputNested1,
            RecursiveShapesInputOutputNested1Builder> {
  _$RecursiveShapesInputOutputNested1? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.RecursiveShapesInputOutputNested2Builder? _nested;
  _i2.RecursiveShapesInputOutputNested2Builder get nested =>
      _$this._nested ??= new _i2.RecursiveShapesInputOutputNested2Builder();
  set nested(_i2.RecursiveShapesInputOutputNested2Builder? nested) =>
      _$this._nested = nested;

  RecursiveShapesInputOutputNested1Builder() {
    RecursiveShapesInputOutputNested1._init(this);
  }

  RecursiveShapesInputOutputNested1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutputNested1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveShapesInputOutputNested1;
  }

  @override
  void update(
      void Function(RecursiveShapesInputOutputNested1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveShapesInputOutputNested1 build() => _build();

  _$RecursiveShapesInputOutputNested1 _build() {
    _$RecursiveShapesInputOutputNested1 _$result;
    try {
      _$result = _$v ??
          new _$RecursiveShapesInputOutputNested1._(
              foo: foo, nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecursiveShapesInputOutputNested1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
