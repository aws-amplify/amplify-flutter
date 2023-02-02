// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_content_type_with_generic_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedContentTypeWithGenericStringInput
    extends MalformedContentTypeWithGenericStringInput {
  @override
  final String? payload;

  factory _$MalformedContentTypeWithGenericStringInput(
          [void Function(MalformedContentTypeWithGenericStringInputBuilder)?
              updates]) =>
      (new MalformedContentTypeWithGenericStringInputBuilder()..update(updates))
          ._build();

  _$MalformedContentTypeWithGenericStringInput._({this.payload}) : super._();

  @override
  MalformedContentTypeWithGenericStringInput rebuild(
          void Function(MalformedContentTypeWithGenericStringInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedContentTypeWithGenericStringInputBuilder toBuilder() =>
      new MalformedContentTypeWithGenericStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedContentTypeWithGenericStringInput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedContentTypeWithGenericStringInputBuilder
    implements
        Builder<MalformedContentTypeWithGenericStringInput,
            MalformedContentTypeWithGenericStringInputBuilder> {
  _$MalformedContentTypeWithGenericStringInput? _$v;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  MalformedContentTypeWithGenericStringInputBuilder() {
    MalformedContentTypeWithGenericStringInput._init(this);
  }

  MalformedContentTypeWithGenericStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedContentTypeWithGenericStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedContentTypeWithGenericStringInput;
  }

  @override
  void update(
      void Function(MalformedContentTypeWithGenericStringInputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedContentTypeWithGenericStringInput build() => _build();

  _$MalformedContentTypeWithGenericStringInput _build() {
    final _$result = _$v ??
        new _$MalformedContentTypeWithGenericStringInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
