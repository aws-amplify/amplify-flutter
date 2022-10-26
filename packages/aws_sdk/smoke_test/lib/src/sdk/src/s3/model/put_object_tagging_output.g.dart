// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_tagging_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectTaggingOutput extends PutObjectTaggingOutput {
  @override
  final String? versionId;

  factory _$PutObjectTaggingOutput(
          [void Function(PutObjectTaggingOutputBuilder)? updates]) =>
      (new PutObjectTaggingOutputBuilder()..update(updates))._build();

  _$PutObjectTaggingOutput._({this.versionId}) : super._();

  @override
  PutObjectTaggingOutput rebuild(
          void Function(PutObjectTaggingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectTaggingOutputBuilder toBuilder() =>
      new PutObjectTaggingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectTaggingOutput && versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, versionId.hashCode));
  }
}

class PutObjectTaggingOutputBuilder
    implements Builder<PutObjectTaggingOutput, PutObjectTaggingOutputBuilder> {
  _$PutObjectTaggingOutput? _$v;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectTaggingOutputBuilder() {
    PutObjectTaggingOutput._init(this);
  }

  PutObjectTaggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectTaggingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectTaggingOutput;
  }

  @override
  void update(void Function(PutObjectTaggingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectTaggingOutput build() => _build();

  _$PutObjectTaggingOutput _build() {
    final _$result =
        _$v ?? new _$PutObjectTaggingOutput._(versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectTaggingOutputPayload extends PutObjectTaggingOutputPayload {
  factory _$PutObjectTaggingOutputPayload(
          [void Function(PutObjectTaggingOutputPayloadBuilder)? updates]) =>
      (new PutObjectTaggingOutputPayloadBuilder()..update(updates))._build();

  _$PutObjectTaggingOutputPayload._() : super._();

  @override
  PutObjectTaggingOutputPayload rebuild(
          void Function(PutObjectTaggingOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectTaggingOutputPayloadBuilder toBuilder() =>
      new PutObjectTaggingOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectTaggingOutputPayload;
  }

  @override
  int get hashCode {
    return 983039364;
  }
}

class PutObjectTaggingOutputPayloadBuilder
    implements
        Builder<PutObjectTaggingOutputPayload,
            PutObjectTaggingOutputPayloadBuilder> {
  _$PutObjectTaggingOutputPayload? _$v;

  PutObjectTaggingOutputPayloadBuilder() {
    PutObjectTaggingOutputPayload._init(this);
  }

  @override
  void replace(PutObjectTaggingOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectTaggingOutputPayload;
  }

  @override
  void update(void Function(PutObjectTaggingOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectTaggingOutputPayload build() => _build();

  _$PutObjectTaggingOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectTaggingOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
