// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.enum_payload_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnumPayloadInput extends EnumPayloadInput {
  @override
  final _i2.StringEnum? payload;

  factory _$EnumPayloadInput(
          [void Function(EnumPayloadInputBuilder)? updates]) =>
      (new EnumPayloadInputBuilder()..update(updates))._build();

  _$EnumPayloadInput._({this.payload}) : super._();

  @override
  EnumPayloadInput rebuild(void Function(EnumPayloadInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumPayloadInputBuilder toBuilder() =>
      new EnumPayloadInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumPayloadInput && payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class EnumPayloadInputBuilder
    implements Builder<EnumPayloadInput, EnumPayloadInputBuilder> {
  _$EnumPayloadInput? _$v;

  _i2.StringEnum? _payload;
  _i2.StringEnum? get payload => _$this._payload;
  set payload(_i2.StringEnum? payload) => _$this._payload = payload;

  EnumPayloadInputBuilder() {
    EnumPayloadInput._init(this);
  }

  EnumPayloadInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnumPayloadInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumPayloadInput;
  }

  @override
  void update(void Function(EnumPayloadInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnumPayloadInput build() => _build();

  _$EnumPayloadInput _build() {
    final _$result = _$v ?? new _$EnumPayloadInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
