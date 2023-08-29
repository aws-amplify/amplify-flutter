// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_unions_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonUnionsOutput extends JsonUnionsOutput {
  @override
  final MyUnion? contents;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonUnionsOutputBuilder
    implements Builder<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  _$JsonUnionsOutput? _$v;

  MyUnion? _contents;
  MyUnion? get contents => _$this._contents;
  set contents(MyUnion? contents) => _$this._contents = contents;

  JsonUnionsOutputBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
