// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.recursive_structures_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveStructuresInput extends RecursiveStructuresInput {
  @override
  final _i3.RecursiveUnionOne? union;

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
    return $jf($jc(0, union.hashCode));
  }
}

class RecursiveStructuresInputBuilder
    implements
        Builder<RecursiveStructuresInput, RecursiveStructuresInputBuilder> {
  _$RecursiveStructuresInput? _$v;

  _i3.RecursiveUnionOne? _union;
  _i3.RecursiveUnionOne? get union => _$this._union;
  set union(_i3.RecursiveUnionOne? union) => _$this._union = union;

  RecursiveStructuresInputBuilder() {
    RecursiveStructuresInput._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
