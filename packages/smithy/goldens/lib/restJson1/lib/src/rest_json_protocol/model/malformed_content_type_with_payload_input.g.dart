// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_content_type_with_payload_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedContentTypeWithPayloadInput
    extends MalformedContentTypeWithPayloadInput {
  @override
  final _i2.Uint8List? payload;

  factory _$MalformedContentTypeWithPayloadInput(
          [void Function(MalformedContentTypeWithPayloadInputBuilder)?
              updates]) =>
      (new MalformedContentTypeWithPayloadInputBuilder()..update(updates))
          ._build();

  _$MalformedContentTypeWithPayloadInput._({this.payload}) : super._();

  @override
  MalformedContentTypeWithPayloadInput rebuild(
          void Function(MalformedContentTypeWithPayloadInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedContentTypeWithPayloadInputBuilder toBuilder() =>
      new MalformedContentTypeWithPayloadInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedContentTypeWithPayloadInput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class MalformedContentTypeWithPayloadInputBuilder
    implements
        Builder<MalformedContentTypeWithPayloadInput,
            MalformedContentTypeWithPayloadInputBuilder> {
  _$MalformedContentTypeWithPayloadInput? _$v;

  _i2.Uint8List? _payload;
  _i2.Uint8List? get payload => _$this._payload;
  set payload(_i2.Uint8List? payload) => _$this._payload = payload;

  MalformedContentTypeWithPayloadInputBuilder() {
    MalformedContentTypeWithPayloadInput._init(this);
  }

  MalformedContentTypeWithPayloadInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedContentTypeWithPayloadInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedContentTypeWithPayloadInput;
  }

  @override
  void update(
      void Function(MalformedContentTypeWithPayloadInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedContentTypeWithPayloadInput build() => _build();

  _$MalformedContentTypeWithPayloadInput _build() {
    final _$result =
        _$v ?? new _$MalformedContentTypeWithPayloadInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
