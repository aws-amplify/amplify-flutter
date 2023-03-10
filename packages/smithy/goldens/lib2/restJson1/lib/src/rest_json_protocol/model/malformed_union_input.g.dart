// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_union_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedUnionInput extends MalformedUnionInput {
  @override
  final _i3.SimpleUnion? union;

  factory _$MalformedUnionInput(
          [void Function(MalformedUnionInputBuilder)? updates]) =>
      (new MalformedUnionInputBuilder()..update(updates))._build();

  _$MalformedUnionInput._({this.union}) : super._();

  @override
  MalformedUnionInput rebuild(
          void Function(MalformedUnionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedUnionInputBuilder toBuilder() =>
      new MalformedUnionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedUnionInput && union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedUnionInputBuilder
    implements Builder<MalformedUnionInput, MalformedUnionInputBuilder> {
  _$MalformedUnionInput? _$v;

  _i3.SimpleUnion? _union;
  _i3.SimpleUnion? get union => _$this._union;
  set union(_i3.SimpleUnion? union) => _$this._union = union;

  MalformedUnionInputBuilder() {
    MalformedUnionInput._init(this);
  }

  MalformedUnionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedUnionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedUnionInput;
  }

  @override
  void update(void Function(MalformedUnionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedUnionInput build() => _build();

  _$MalformedUnionInput _build() {
    final _$result = _$v ?? new _$MalformedUnionInput._(union: union);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
