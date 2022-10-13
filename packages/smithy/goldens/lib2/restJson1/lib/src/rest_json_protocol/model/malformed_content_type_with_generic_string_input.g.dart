// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_content_type_with_generic_string_input;

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
    return $jf($jc(0, payload.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
