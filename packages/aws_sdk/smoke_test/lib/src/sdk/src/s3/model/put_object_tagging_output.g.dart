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
    var _$hash = 0;
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
