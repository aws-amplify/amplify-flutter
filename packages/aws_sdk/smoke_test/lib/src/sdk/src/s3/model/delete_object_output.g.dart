// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectOutput extends DeleteObjectOutput {
  @override
  final bool? deleteMarker;
  @override
  final _i3.RequestCharged? requestCharged;
  @override
  final String? versionId;

  factory _$DeleteObjectOutput(
          [void Function(DeleteObjectOutputBuilder)? updates]) =>
      (new DeleteObjectOutputBuilder()..update(updates))._build();

  _$DeleteObjectOutput._(
      {this.deleteMarker, this.requestCharged, this.versionId})
      : super._();

  @override
  DeleteObjectOutput rebuild(
          void Function(DeleteObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectOutputBuilder toBuilder() =>
      new DeleteObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectOutput &&
        deleteMarker == other.deleteMarker &&
        requestCharged == other.requestCharged &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, deleteMarker.hashCode), requestCharged.hashCode),
        versionId.hashCode));
  }
}

class DeleteObjectOutputBuilder
    implements Builder<DeleteObjectOutput, DeleteObjectOutputBuilder> {
  _$DeleteObjectOutput? _$v;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeleteObjectOutputBuilder() {
    DeleteObjectOutput._init(this);
  }

  DeleteObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarker = $v.deleteMarker;
      _requestCharged = $v.requestCharged;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectOutput;
  }

  @override
  void update(void Function(DeleteObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectOutput build() => _build();

  _$DeleteObjectOutput _build() {
    final _$result = _$v ??
        new _$DeleteObjectOutput._(
            deleteMarker: deleteMarker,
            requestCharged: requestCharged,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectOutputPayload extends DeleteObjectOutputPayload {
  factory _$DeleteObjectOutputPayload(
          [void Function(DeleteObjectOutputPayloadBuilder)? updates]) =>
      (new DeleteObjectOutputPayloadBuilder()..update(updates))._build();

  _$DeleteObjectOutputPayload._() : super._();

  @override
  DeleteObjectOutputPayload rebuild(
          void Function(DeleteObjectOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectOutputPayloadBuilder toBuilder() =>
      new DeleteObjectOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectOutputPayload;
  }

  @override
  int get hashCode {
    return 503316919;
  }
}

class DeleteObjectOutputPayloadBuilder
    implements
        Builder<DeleteObjectOutputPayload, DeleteObjectOutputPayloadBuilder> {
  _$DeleteObjectOutputPayload? _$v;

  DeleteObjectOutputPayloadBuilder() {
    DeleteObjectOutputPayload._init(this);
  }

  @override
  void replace(DeleteObjectOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectOutputPayload;
  }

  @override
  void update(void Function(DeleteObjectOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectOutputPayload build() => _build();

  _$DeleteObjectOutputPayload _build() {
    final _$result = _$v ?? new _$DeleteObjectOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
