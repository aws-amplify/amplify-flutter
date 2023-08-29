// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_xml_shapes_output_nested1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveXmlShapesOutputNested1
    extends RecursiveXmlShapesOutputNested1 {
  @override
  final String? foo;
  @override
  final RecursiveXmlShapesOutputNested2? nested;

  factory _$RecursiveXmlShapesOutputNested1(
          [void Function(RecursiveXmlShapesOutputNested1Builder)? updates]) =>
      (new RecursiveXmlShapesOutputNested1Builder()..update(updates))._build();

  _$RecursiveXmlShapesOutputNested1._({this.foo, this.nested}) : super._();

  @override
  RecursiveXmlShapesOutputNested1 rebuild(
          void Function(RecursiveXmlShapesOutputNested1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveXmlShapesOutputNested1Builder toBuilder() =>
      new RecursiveXmlShapesOutputNested1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveXmlShapesOutputNested1 &&
        foo == other.foo &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveXmlShapesOutputNested1Builder
    implements
        Builder<RecursiveXmlShapesOutputNested1,
            RecursiveXmlShapesOutputNested1Builder> {
  _$RecursiveXmlShapesOutputNested1? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  RecursiveXmlShapesOutputNested2Builder? _nested;
  RecursiveXmlShapesOutputNested2Builder get nested =>
      _$this._nested ??= new RecursiveXmlShapesOutputNested2Builder();
  set nested(RecursiveXmlShapesOutputNested2Builder? nested) =>
      _$this._nested = nested;

  RecursiveXmlShapesOutputNested1Builder();

  RecursiveXmlShapesOutputNested1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveXmlShapesOutputNested1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveXmlShapesOutputNested1;
  }

  @override
  void update(void Function(RecursiveXmlShapesOutputNested1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveXmlShapesOutputNested1 build() => _build();

  _$RecursiveXmlShapesOutputNested1 _build() {
    _$RecursiveXmlShapesOutputNested1 _$result;
    try {
      _$result = _$v ??
          new _$RecursiveXmlShapesOutputNested1._(
              foo: foo, nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecursiveXmlShapesOutputNested1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
