// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.post_union_with_json_name_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostUnionWithJsonNameOutput extends PostUnionWithJsonNameOutput {
  @override
  final _i2.UnionWithJsonName value;

  factory _$PostUnionWithJsonNameOutput(
          [void Function(PostUnionWithJsonNameOutputBuilder)? updates]) =>
      (new PostUnionWithJsonNameOutputBuilder()..update(updates))._build();

  _$PostUnionWithJsonNameOutput._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        value, r'PostUnionWithJsonNameOutput', 'value');
  }

  @override
  PostUnionWithJsonNameOutput rebuild(
          void Function(PostUnionWithJsonNameOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostUnionWithJsonNameOutputBuilder toBuilder() =>
      new PostUnionWithJsonNameOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostUnionWithJsonNameOutput && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class PostUnionWithJsonNameOutputBuilder
    implements
        Builder<PostUnionWithJsonNameOutput,
            PostUnionWithJsonNameOutputBuilder> {
  _$PostUnionWithJsonNameOutput? _$v;

  _i2.UnionWithJsonName? _value;
  _i2.UnionWithJsonName? get value => _$this._value;
  set value(_i2.UnionWithJsonName? value) => _$this._value = value;

  PostUnionWithJsonNameOutputBuilder() {
    PostUnionWithJsonNameOutput._init(this);
  }

  PostUnionWithJsonNameOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostUnionWithJsonNameOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostUnionWithJsonNameOutput;
  }

  @override
  void update(void Function(PostUnionWithJsonNameOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostUnionWithJsonNameOutput build() => _build();

  _$PostUnionWithJsonNameOutput _build() {
    final _$result = _$v ??
        new _$PostUnionWithJsonNameOutput._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'PostUnionWithJsonNameOutput', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
