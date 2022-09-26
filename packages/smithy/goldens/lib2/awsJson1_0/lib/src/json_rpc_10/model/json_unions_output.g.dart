// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0_v2.json_rpc_10.model.json_unions_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonUnionsOutput extends JsonUnionsOutput {
  @override
  final _i2.MyUnion? contents;

  factory _$JsonUnionsOutput(
          [void Function(JsonUnionsOutputBuilder)? updates]) =>
      (new JsonUnionsOutputBuilder()..update(updates))._build();

  _$JsonUnionsOutput._({this.contents}) : super._();

  @override
  JsonUnionsOutput rebuild(void Function(JsonUnionsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonUnionsOutputBuilder toBuilder() =>
      new JsonUnionsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonUnionsOutput && contents == other.contents;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contents.hashCode));
  }
}

class JsonUnionsOutputBuilder
    implements Builder<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  _$JsonUnionsOutput? _$v;

  _i2.MyUnion? _contents;
  _i2.MyUnion? get contents => _$this._contents;
  set contents(_i2.MyUnion? contents) => _$this._contents = contents;

  JsonUnionsOutputBuilder() {
    JsonUnionsOutput._init(this);
  }

  JsonUnionsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonUnionsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonUnionsOutput;
  }

  @override
  void update(void Function(JsonUnionsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonUnionsOutput build() => _build();

  _$JsonUnionsOutput _build() {
    final _$result = _$v ?? new _$JsonUnionsOutput._(contents: contents);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
