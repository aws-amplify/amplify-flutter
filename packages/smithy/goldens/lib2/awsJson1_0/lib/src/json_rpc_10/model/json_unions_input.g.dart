// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0_v2.json_rpc_10.model.json_unions_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonUnionsInput extends JsonUnionsInput {
  @override
  final _i3.MyUnion? contents;

  factory _$JsonUnionsInput([void Function(JsonUnionsInputBuilder)? updates]) =>
      (new JsonUnionsInputBuilder()..update(updates))._build();

  _$JsonUnionsInput._({this.contents}) : super._();

  @override
  JsonUnionsInput rebuild(void Function(JsonUnionsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonUnionsInputBuilder toBuilder() =>
      new JsonUnionsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonUnionsInput && contents == other.contents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonUnionsInputBuilder
    implements Builder<JsonUnionsInput, JsonUnionsInputBuilder> {
  _$JsonUnionsInput? _$v;

  _i3.MyUnion? _contents;
  _i3.MyUnion? get contents => _$this._contents;
  set contents(_i3.MyUnion? contents) => _$this._contents = contents;

  JsonUnionsInputBuilder() {
    JsonUnionsInput._init(this);
  }

  JsonUnionsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonUnionsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonUnionsInput;
  }

  @override
  void update(void Function(JsonUnionsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonUnionsInput build() => _build();

  _$JsonUnionsInput _build() {
    final _$result = _$v ?? new _$JsonUnionsInput._(contents: contents);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
