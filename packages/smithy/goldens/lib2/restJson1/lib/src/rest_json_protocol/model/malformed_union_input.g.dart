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
    return $jf($jc(0, union.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
