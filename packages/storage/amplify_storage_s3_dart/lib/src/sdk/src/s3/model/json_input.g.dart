// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.json_input;

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
    return $jf($jc(0, type.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
