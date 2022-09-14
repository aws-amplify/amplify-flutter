// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.media_type_header_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaTypeHeaderOutput extends MediaTypeHeaderOutput {
  @override
  final _i3.JsonObject? json;

  factory _$MediaTypeHeaderOutput(
          [void Function(MediaTypeHeaderOutputBuilder)? updates]) =>
      (new MediaTypeHeaderOutputBuilder()..update(updates))._build();

  _$MediaTypeHeaderOutput._({this.json}) : super._();

  @override
  MediaTypeHeaderOutput rebuild(
          void Function(MediaTypeHeaderOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderOutputBuilder toBuilder() =>
      new MediaTypeHeaderOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderOutput && json == other.json;
  }

  @override
  int get hashCode {
    return $jf($jc(0, json.hashCode));
  }
}

class MediaTypeHeaderOutputBuilder
    implements Builder<MediaTypeHeaderOutput, MediaTypeHeaderOutputBuilder> {
  _$MediaTypeHeaderOutput? _$v;

  _i3.JsonObject? _json;
  _i3.JsonObject? get json => _$this._json;
  set json(_i3.JsonObject? json) => _$this._json = json;

  MediaTypeHeaderOutputBuilder() {
    MediaTypeHeaderOutput._init(this);
  }

  MediaTypeHeaderOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _json = $v.json;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaTypeHeaderOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaTypeHeaderOutput;
  }

  @override
  void update(void Function(MediaTypeHeaderOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderOutput build() => _build();

  _$MediaTypeHeaderOutput _build() {
    final _$result = _$v ?? new _$MediaTypeHeaderOutput._(json: json);
    replace(_$result);
    return _$result;
  }
}

class _$MediaTypeHeaderOutputPayload extends MediaTypeHeaderOutputPayload {
  factory _$MediaTypeHeaderOutputPayload(
          [void Function(MediaTypeHeaderOutputPayloadBuilder)? updates]) =>
      (new MediaTypeHeaderOutputPayloadBuilder()..update(updates))._build();

  _$MediaTypeHeaderOutputPayload._() : super._();

  @override
  MediaTypeHeaderOutputPayload rebuild(
          void Function(MediaTypeHeaderOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaTypeHeaderOutputPayloadBuilder toBuilder() =>
      new MediaTypeHeaderOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaTypeHeaderOutputPayload;
  }

  @override
  int get hashCode {
    return 1046285147;
  }
}

class MediaTypeHeaderOutputPayloadBuilder
    implements
        Builder<MediaTypeHeaderOutputPayload,
            MediaTypeHeaderOutputPayloadBuilder> {
  _$MediaTypeHeaderOutputPayload? _$v;

  MediaTypeHeaderOutputPayloadBuilder() {
    MediaTypeHeaderOutputPayload._init(this);
  }

  @override
  void replace(MediaTypeHeaderOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaTypeHeaderOutputPayload;
  }

  @override
  void update(void Function(MediaTypeHeaderOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaTypeHeaderOutputPayload build() => _build();

  _$MediaTypeHeaderOutputPayload _build() {
    final _$result = _$v ?? new _$MediaTypeHeaderOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
