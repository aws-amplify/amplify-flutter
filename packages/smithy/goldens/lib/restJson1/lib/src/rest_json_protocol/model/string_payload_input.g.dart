// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.string_payload_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringPayloadInput extends StringPayloadInput {
  @override
  final String? payload;

  factory _$StringPayloadInput(
          [void Function(StringPayloadInputBuilder)? updates]) =>
      (new StringPayloadInputBuilder()..update(updates))._build();

  _$StringPayloadInput._({this.payload}) : super._();

  @override
  StringPayloadInput rebuild(
          void Function(StringPayloadInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringPayloadInputBuilder toBuilder() =>
      new StringPayloadInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringPayloadInput && payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class StringPayloadInputBuilder
    implements Builder<StringPayloadInput, StringPayloadInputBuilder> {
  _$StringPayloadInput? _$v;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  StringPayloadInputBuilder() {
    StringPayloadInput._init(this);
  }

  StringPayloadInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringPayloadInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StringPayloadInput;
  }

  @override
  void update(void Function(StringPayloadInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringPayloadInput build() => _build();

  _$StringPayloadInput _build() {
    final _$result = _$v ?? new _$StringPayloadInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
