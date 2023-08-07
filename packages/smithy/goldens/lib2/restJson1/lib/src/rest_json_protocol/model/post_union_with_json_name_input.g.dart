// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_union_with_json_name_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostUnionWithJsonNameInput extends PostUnionWithJsonNameInput {
  @override
  final UnionWithJsonName? value;

  factory _$PostUnionWithJsonNameInput(
          [void Function(PostUnionWithJsonNameInputBuilder)? updates]) =>
      (new PostUnionWithJsonNameInputBuilder()..update(updates))._build();

  _$PostUnionWithJsonNameInput._({this.value}) : super._();

  @override
  PostUnionWithJsonNameInput rebuild(
          void Function(PostUnionWithJsonNameInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostUnionWithJsonNameInputBuilder toBuilder() =>
      new PostUnionWithJsonNameInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostUnionWithJsonNameInput && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PostUnionWithJsonNameInputBuilder
    implements
        Builder<PostUnionWithJsonNameInput, PostUnionWithJsonNameInputBuilder> {
  _$PostUnionWithJsonNameInput? _$v;

  UnionWithJsonName? _value;
  UnionWithJsonName? get value => _$this._value;
  set value(UnionWithJsonName? value) => _$this._value = value;

  PostUnionWithJsonNameInputBuilder();

  PostUnionWithJsonNameInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostUnionWithJsonNameInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostUnionWithJsonNameInput;
  }

  @override
  void update(void Function(PostUnionWithJsonNameInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostUnionWithJsonNameInput build() => _build();

  _$PostUnionWithJsonNameInput _build() {
    final _$result = _$v ?? new _$PostUnionWithJsonNameInput._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
