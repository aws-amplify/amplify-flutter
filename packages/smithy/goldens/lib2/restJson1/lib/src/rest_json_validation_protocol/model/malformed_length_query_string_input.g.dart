// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_length_query_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedLengthQueryStringInput
    extends MalformedLengthQueryStringInput {
  @override
  final String? string;

  factory _$MalformedLengthQueryStringInput(
          [void Function(MalformedLengthQueryStringInputBuilder)? updates]) =>
      (new MalformedLengthQueryStringInputBuilder()..update(updates))._build();

  _$MalformedLengthQueryStringInput._({this.string}) : super._();

  @override
  MalformedLengthQueryStringInput rebuild(
          void Function(MalformedLengthQueryStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLengthQueryStringInputBuilder toBuilder() =>
      new MalformedLengthQueryStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLengthQueryStringInput && string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc(0, string.hashCode));
  }
}

class MalformedLengthQueryStringInputBuilder
    implements
        Builder<MalformedLengthQueryStringInput,
            MalformedLengthQueryStringInputBuilder> {
  _$MalformedLengthQueryStringInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  MalformedLengthQueryStringInputBuilder() {
    MalformedLengthQueryStringInput._init(this);
  }

  MalformedLengthQueryStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLengthQueryStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLengthQueryStringInput;
  }

  @override
  void update(void Function(MalformedLengthQueryStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedLengthQueryStringInput build() => _build();

  _$MalformedLengthQueryStringInput _build() {
    final _$result =
        _$v ?? new _$MalformedLengthQueryStringInput._(string: string);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedLengthQueryStringInputPayload
    extends MalformedLengthQueryStringInputPayload {
  factory _$MalformedLengthQueryStringInputPayload(
          [void Function(MalformedLengthQueryStringInputPayloadBuilder)?
              updates]) =>
      (new MalformedLengthQueryStringInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedLengthQueryStringInputPayload._() : super._();

  @override
  MalformedLengthQueryStringInputPayload rebuild(
          void Function(MalformedLengthQueryStringInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLengthQueryStringInputPayloadBuilder toBuilder() =>
      new MalformedLengthQueryStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLengthQueryStringInputPayload;
  }

  @override
  int get hashCode {
    return 1004402986;
  }
}

class MalformedLengthQueryStringInputPayloadBuilder
    implements
        Builder<MalformedLengthQueryStringInputPayload,
            MalformedLengthQueryStringInputPayloadBuilder> {
  _$MalformedLengthQueryStringInputPayload? _$v;

  MalformedLengthQueryStringInputPayloadBuilder() {
    MalformedLengthQueryStringInputPayload._init(this);
  }

  @override
  void replace(MalformedLengthQueryStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLengthQueryStringInputPayload;
  }

  @override
  void update(
      void Function(MalformedLengthQueryStringInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedLengthQueryStringInputPayload build() => _build();

  _$MalformedLengthQueryStringInputPayload _build() {
    final _$result = _$v ?? new _$MalformedLengthQueryStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
