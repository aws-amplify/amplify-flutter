// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.omits_null_serializes_empty_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OmitsNullSerializesEmptyStringInput
    extends OmitsNullSerializesEmptyStringInput {
  @override
  final String? emptyString;
  @override
  final String? nullValue;

  factory _$OmitsNullSerializesEmptyStringInput(
          [void Function(OmitsNullSerializesEmptyStringInputBuilder)?
              updates]) =>
      (new OmitsNullSerializesEmptyStringInputBuilder()..update(updates))
          ._build();

  _$OmitsNullSerializesEmptyStringInput._({this.emptyString, this.nullValue})
      : super._();

  @override
  OmitsNullSerializesEmptyStringInput rebuild(
          void Function(OmitsNullSerializesEmptyStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsNullSerializesEmptyStringInputBuilder toBuilder() =>
      new OmitsNullSerializesEmptyStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsNullSerializesEmptyStringInput &&
        emptyString == other.emptyString &&
        nullValue == other.nullValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, emptyString.hashCode), nullValue.hashCode));
  }
}

class OmitsNullSerializesEmptyStringInputBuilder
    implements
        Builder<OmitsNullSerializesEmptyStringInput,
            OmitsNullSerializesEmptyStringInputBuilder> {
  _$OmitsNullSerializesEmptyStringInput? _$v;

  String? _emptyString;
  String? get emptyString => _$this._emptyString;
  set emptyString(String? emptyString) => _$this._emptyString = emptyString;

  String? _nullValue;
  String? get nullValue => _$this._nullValue;
  set nullValue(String? nullValue) => _$this._nullValue = nullValue;

  OmitsNullSerializesEmptyStringInputBuilder() {
    OmitsNullSerializesEmptyStringInput._init(this);
  }

  OmitsNullSerializesEmptyStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emptyString = $v.emptyString;
      _nullValue = $v.nullValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OmitsNullSerializesEmptyStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsNullSerializesEmptyStringInput;
  }

  @override
  void update(
      void Function(OmitsNullSerializesEmptyStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsNullSerializesEmptyStringInput build() => _build();

  _$OmitsNullSerializesEmptyStringInput _build() {
    final _$result = _$v ??
        new _$OmitsNullSerializesEmptyStringInput._(
            emptyString: emptyString, nullValue: nullValue);
    replace(_$result);
    return _$result;
  }
}

class _$OmitsNullSerializesEmptyStringInputPayload
    extends OmitsNullSerializesEmptyStringInputPayload {
  factory _$OmitsNullSerializesEmptyStringInputPayload(
          [void Function(OmitsNullSerializesEmptyStringInputPayloadBuilder)?
              updates]) =>
      (new OmitsNullSerializesEmptyStringInputPayloadBuilder()..update(updates))
          ._build();

  _$OmitsNullSerializesEmptyStringInputPayload._() : super._();

  @override
  OmitsNullSerializesEmptyStringInputPayload rebuild(
          void Function(OmitsNullSerializesEmptyStringInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsNullSerializesEmptyStringInputPayloadBuilder toBuilder() =>
      new OmitsNullSerializesEmptyStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsNullSerializesEmptyStringInputPayload;
  }

  @override
  int get hashCode {
    return 237196111;
  }
}

class OmitsNullSerializesEmptyStringInputPayloadBuilder
    implements
        Builder<OmitsNullSerializesEmptyStringInputPayload,
            OmitsNullSerializesEmptyStringInputPayloadBuilder> {
  _$OmitsNullSerializesEmptyStringInputPayload? _$v;

  OmitsNullSerializesEmptyStringInputPayloadBuilder() {
    OmitsNullSerializesEmptyStringInputPayload._init(this);
  }

  @override
  void replace(OmitsNullSerializesEmptyStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsNullSerializesEmptyStringInputPayload;
  }

  @override
  void update(
      void Function(OmitsNullSerializesEmptyStringInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsNullSerializesEmptyStringInputPayload build() => _build();

  _$OmitsNullSerializesEmptyStringInputPayload _build() {
    final _$result =
        _$v ?? new _$OmitsNullSerializesEmptyStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
