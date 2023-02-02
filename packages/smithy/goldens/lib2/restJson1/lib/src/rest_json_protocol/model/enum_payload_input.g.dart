// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.enum_payload_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
