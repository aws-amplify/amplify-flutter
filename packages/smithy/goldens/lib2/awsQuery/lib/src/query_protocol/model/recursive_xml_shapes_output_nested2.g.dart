// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_xml_shapes_output_nested2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveXmlShapesOutputNested2
    extends RecursiveXmlShapesOutputNested2 {
  @override
  final String? bar;
  @override
  final RecursiveXmlShapesOutputNested1? recursiveMember;

  factory _$RecursiveXmlShapesOutputNested2(
          [void Function(RecursiveXmlShapesOutputNested2Builder)? updates]) =>
      (new RecursiveXmlShapesOutputNested2Builder()..update(updates))._build();

  _$RecursiveXmlShapesOutputNested2._({this.bar, this.recursiveMember})
      : super._();

  @override
  RecursiveXmlShapesOutputNested2 rebuild(
          void Function(RecursiveXmlShapesOutputNested2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveXmlShapesOutputNested2Builder toBuilder() =>
      new RecursiveXmlShapesOutputNested2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveXmlShapesOutputNested2 &&
        bar == other.bar &&
        recursiveMember == other.recursiveMember;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bar.hashCode);
    _$hash = $jc(_$hash, recursiveMember.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveXmlShapesOutputNested2Builder
    implements
        Builder<RecursiveXmlShapesOutputNested2,
            RecursiveXmlShapesOutputNested2Builder> {
  _$RecursiveXmlShapesOutputNested2? _$v;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  RecursiveXmlShapesOutputNested1Builder? _recursiveMember;
  RecursiveXmlShapesOutputNested1Builder get recursiveMember =>
      _$this._recursiveMember ??= new RecursiveXmlShapesOutputNested1Builder();
  set recursiveMember(
          RecursiveXmlShapesOutputNested1Builder? recursiveMember) =>
      _$this._recursiveMember = recursiveMember;

  RecursiveXmlShapesOutputNested2Builder();

  RecursiveXmlShapesOutputNested2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _recursiveMember = $v.recursiveMember?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveXmlShapesOutputNested2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveXmlShapesOutputNested2;
  }

  @override
  void update(void Function(RecursiveXmlShapesOutputNested2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveXmlShapesOutputNested2 build() => _build();

  _$RecursiveXmlShapesOutputNested2 _build() {
    _$RecursiveXmlShapesOutputNested2 _$result;
    try {
      _$result = _$v ??
          new _$RecursiveXmlShapesOutputNested2._(
              bar: bar, recursiveMember: _recursiveMember?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recursiveMember';
        _recursiveMember?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecursiveXmlShapesOutputNested2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
