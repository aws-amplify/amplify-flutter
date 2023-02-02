// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.string_payload_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
