// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recursive_structures_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveStructuresInput extends RecursiveStructuresInput {
  @override
  final RecursiveUnionOne? union;

  factory _$RecursiveStructuresInput(
          [void Function(RecursiveStructuresInputBuilder)? updates]) =>
      (new RecursiveStructuresInputBuilder()..update(updates))._build();

  _$RecursiveStructuresInput._({this.union}) : super._();

  @override
  RecursiveStructuresInput rebuild(
          void Function(RecursiveStructuresInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveStructuresInputBuilder toBuilder() =>
      new RecursiveStructuresInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveStructuresInput && union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveStructuresInputBuilder
    implements
        Builder<RecursiveStructuresInput, RecursiveStructuresInputBuilder> {
  _$RecursiveStructuresInput? _$v;

  RecursiveUnionOne? _union;
  RecursiveUnionOne? get union => _$this._union;
  set union(RecursiveUnionOne? union) => _$this._union = union;

  RecursiveStructuresInputBuilder();

  RecursiveStructuresInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveStructuresInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveStructuresInput;
  }

  @override
  void update(void Function(RecursiveStructuresInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveStructuresInput build() => _build();

  _$RecursiveStructuresInput _build() {
    final _$result = _$v ?? new _$RecursiveStructuresInput._(union: union);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
