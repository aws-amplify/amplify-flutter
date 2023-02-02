// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.json_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonInput extends JsonInput {
  @override
  final _i2.JsonType? type;

  factory _$JsonInput([void Function(JsonInputBuilder)? updates]) =>
      (new JsonInputBuilder()..update(updates))._build();

  _$JsonInput._({this.type}) : super._();

  @override
  JsonInput rebuild(void Function(JsonInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonInputBuilder toBuilder() => new JsonInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonInput && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonInputBuilder implements Builder<JsonInput, JsonInputBuilder> {
  _$JsonInput? _$v;

  _i2.JsonType? _type;
  _i2.JsonType? get type => _$this._type;
  set type(_i2.JsonType? type) => _$this._type = type;

  JsonInputBuilder() {
    JsonInput._init(this);
  }

  JsonInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonInput;
  }

  @override
  void update(void Function(JsonInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonInput build() => _build();

  _$JsonInput _build() {
    final _$result = _$v ?? new _$JsonInput._(type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
