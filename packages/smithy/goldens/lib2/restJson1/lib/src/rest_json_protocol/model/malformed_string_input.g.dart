// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedStringInput extends MalformedStringInput {
  @override
  final _i3.JsonObject? blob;

  factory _$MalformedStringInput(
          [void Function(MalformedStringInputBuilder)? updates]) =>
      (new MalformedStringInputBuilder()..update(updates))._build();

  _$MalformedStringInput._({this.blob}) : super._();

  @override
  MalformedStringInput rebuild(
          void Function(MalformedStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedStringInputBuilder toBuilder() =>
      new MalformedStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedStringInput && blob == other.blob;
  }

  @override
  int get hashCode {
    return $jf($jc(0, blob.hashCode));
  }
}

class MalformedStringInputBuilder
    implements Builder<MalformedStringInput, MalformedStringInputBuilder> {
  _$MalformedStringInput? _$v;

  _i3.JsonObject? _blob;
  _i3.JsonObject? get blob => _$this._blob;
  set blob(_i3.JsonObject? blob) => _$this._blob = blob;

  MalformedStringInputBuilder() {
    MalformedStringInput._init(this);
  }

  MalformedStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedStringInput;
  }

  @override
  void update(void Function(MalformedStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedStringInput build() => _build();

  _$MalformedStringInput _build() {
    final _$result = _$v ?? new _$MalformedStringInput._(blob: blob);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedStringInputPayload extends MalformedStringInputPayload {
  factory _$MalformedStringInputPayload(
          [void Function(MalformedStringInputPayloadBuilder)? updates]) =>
      (new MalformedStringInputPayloadBuilder()..update(updates))._build();

  _$MalformedStringInputPayload._() : super._();

  @override
  MalformedStringInputPayload rebuild(
          void Function(MalformedStringInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedStringInputPayloadBuilder toBuilder() =>
      new MalformedStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedStringInputPayload;
  }

  @override
  int get hashCode {
    return 986643134;
  }
}

class MalformedStringInputPayloadBuilder
    implements
        Builder<MalformedStringInputPayload,
            MalformedStringInputPayloadBuilder> {
  _$MalformedStringInputPayload? _$v;

  MalformedStringInputPayloadBuilder() {
    MalformedStringInputPayload._init(this);
  }

  @override
  void replace(MalformedStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedStringInputPayload;
  }

  @override
  void update(void Function(MalformedStringInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedStringInputPayload build() => _build();

  _$MalformedStringInputPayload _build() {
    final _$result = _$v ?? new _$MalformedStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
