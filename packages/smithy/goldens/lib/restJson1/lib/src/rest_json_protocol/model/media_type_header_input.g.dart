// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.media_type_header_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaTypeHeaderInput extends MediaTypeHeaderInput {
  @override
  final _i3.JsonObject? json;

  factory _$MediaTypeHeaderInput(
          [void Function(MediaTypeHeaderInputBuilder)? updates]) =>
      (new MediaTypeHeaderInputBuilder()..update(updates))._build();

  _$MediaTypeHeaderInput._({this.json}) : super._();

  @override
  MediaTypeHeaderInput rebuild(
          void Function(MediaTypeHeaderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderInputBuilder toBuilder() =>
      new MediaTypeHeaderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderInput && json == other.json;
  }

  @override
  int get hashCode {
    return $jf($jc(0, json.hashCode));
  }
}

class MediaTypeHeaderInputBuilder
    implements Builder<MediaTypeHeaderInput, MediaTypeHeaderInputBuilder> {
  _$MediaTypeHeaderInput? _$v;

  _i3.JsonObject? _json;
  _i3.JsonObject? get json => _$this._json;
  set json(_i3.JsonObject? json) => _$this._json = json;

  MediaTypeHeaderInputBuilder() {
    MediaTypeHeaderInput._init(this);
  }

  MediaTypeHeaderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _json = $v.json;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaTypeHeaderInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaTypeHeaderInput;
  }

  @override
  void update(void Function(MediaTypeHeaderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderInput build() => _build();

  _$MediaTypeHeaderInput _build() {
    final _$result = _$v ?? new _$MediaTypeHeaderInput._(json: json);
    replace(_$result);
    return _$result;
  }
}

class _$MediaTypeHeaderInputPayload extends MediaTypeHeaderInputPayload {
  factory _$MediaTypeHeaderInputPayload(
          [void Function(MediaTypeHeaderInputPayloadBuilder)? updates]) =>
      (new MediaTypeHeaderInputPayloadBuilder()..update(updates))._build();

  _$MediaTypeHeaderInputPayload._() : super._();

  @override
  MediaTypeHeaderInputPayload rebuild(
          void Function(MediaTypeHeaderInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderInputPayloadBuilder toBuilder() =>
      new MediaTypeHeaderInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderInputPayload;
  }

  @override
  int get hashCode {
    return 800959639;
  }
}

class MediaTypeHeaderInputPayloadBuilder
    implements
        Builder<MediaTypeHeaderInputPayload,
            MediaTypeHeaderInputPayloadBuilder> {
  _$MediaTypeHeaderInputPayload? _$v;

  MediaTypeHeaderInputPayloadBuilder() {
    MediaTypeHeaderInputPayload._init(this);
  }

  @override
  void replace(MediaTypeHeaderInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaTypeHeaderInputPayload;
  }

  @override
  void update(void Function(MediaTypeHeaderInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderInputPayload build() => _build();

  _$MediaTypeHeaderInputPayload _build() {
    final _$result = _$v ?? new _$MediaTypeHeaderInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
