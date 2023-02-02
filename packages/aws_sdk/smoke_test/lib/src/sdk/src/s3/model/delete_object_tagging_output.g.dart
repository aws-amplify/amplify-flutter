// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_object_tagging_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectTaggingOutput extends DeleteObjectTaggingOutput {
  @override
  final String? versionId;

  factory _$DeleteObjectTaggingOutput(
          [void Function(DeleteObjectTaggingOutputBuilder)? updates]) =>
      (new DeleteObjectTaggingOutputBuilder()..update(updates))._build();

  _$DeleteObjectTaggingOutput._({this.versionId}) : super._();

  @override
  DeleteObjectTaggingOutput rebuild(
          void Function(DeleteObjectTaggingOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectTaggingOutputBuilder toBuilder() =>
      new DeleteObjectTaggingOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectTaggingOutput && versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectTaggingOutputBuilder
    implements
        Builder<DeleteObjectTaggingOutput, DeleteObjectTaggingOutputBuilder> {
  _$DeleteObjectTaggingOutput? _$v;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeleteObjectTaggingOutputBuilder() {
    DeleteObjectTaggingOutput._init(this);
  }

  DeleteObjectTaggingOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectTaggingOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectTaggingOutput;
  }

  @override
  void update(void Function(DeleteObjectTaggingOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectTaggingOutput build() => _build();

  _$DeleteObjectTaggingOutput _build() {
    final _$result =
        _$v ?? new _$DeleteObjectTaggingOutput._(versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectTaggingOutputPayload
    extends DeleteObjectTaggingOutputPayload {
  factory _$DeleteObjectTaggingOutputPayload(
          [void Function(DeleteObjectTaggingOutputPayloadBuilder)? updates]) =>
      (new DeleteObjectTaggingOutputPayloadBuilder()..update(updates))._build();

  _$DeleteObjectTaggingOutputPayload._() : super._();

  @override
  DeleteObjectTaggingOutputPayload rebuild(
          void Function(DeleteObjectTaggingOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectTaggingOutputPayloadBuilder toBuilder() =>
      new DeleteObjectTaggingOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectTaggingOutputPayload;
  }

  @override
  int get hashCode {
    return 254689563;
  }
}

class DeleteObjectTaggingOutputPayloadBuilder
    implements
        Builder<DeleteObjectTaggingOutputPayload,
            DeleteObjectTaggingOutputPayloadBuilder> {
  _$DeleteObjectTaggingOutputPayload? _$v;

  DeleteObjectTaggingOutputPayloadBuilder() {
    DeleteObjectTaggingOutputPayload._init(this);
  }

  @override
  void replace(DeleteObjectTaggingOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectTaggingOutputPayload;
  }

  @override
  void update(void Function(DeleteObjectTaggingOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectTaggingOutputPayload build() => _build();

  _$DeleteObjectTaggingOutputPayload _build() {
    final _$result = _$v ?? new _$DeleteObjectTaggingOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
