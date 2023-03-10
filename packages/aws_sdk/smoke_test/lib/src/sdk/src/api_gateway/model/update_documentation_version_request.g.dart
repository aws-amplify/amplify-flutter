// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_documentation_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDocumentationVersionRequest
    extends UpdateDocumentationVersionRequest {
  @override
  final String documentationVersion;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;

  factory _$UpdateDocumentationVersionRequest(
          [void Function(UpdateDocumentationVersionRequestBuilder)? updates]) =>
      (new UpdateDocumentationVersionRequestBuilder()..update(updates))
          ._build();

  _$UpdateDocumentationVersionRequest._(
      {required this.documentationVersion,
      this.patchOperations,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'UpdateDocumentationVersionRequest', 'documentationVersion');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateDocumentationVersionRequest', 'restApiId');
  }

  @override
  UpdateDocumentationVersionRequest rebuild(
          void Function(UpdateDocumentationVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDocumentationVersionRequestBuilder toBuilder() =>
      new UpdateDocumentationVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDocumentationVersionRequest &&
        documentationVersion == other.documentationVersion &&
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDocumentationVersionRequestBuilder
    implements
        Builder<UpdateDocumentationVersionRequest,
            UpdateDocumentationVersionRequestBuilder> {
  _$UpdateDocumentationVersionRequest? _$v;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateDocumentationVersionRequestBuilder() {
    UpdateDocumentationVersionRequest._init(this);
  }

  UpdateDocumentationVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationVersion = $v.documentationVersion;
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDocumentationVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDocumentationVersionRequest;
  }

  @override
  void update(
      void Function(UpdateDocumentationVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDocumentationVersionRequest build() => _build();

  _$UpdateDocumentationVersionRequest _build() {
    _$UpdateDocumentationVersionRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateDocumentationVersionRequest._(
              documentationVersion: BuiltValueNullFieldError.checkNotNull(
                  documentationVersion,
                  r'UpdateDocumentationVersionRequest',
                  'documentationVersion'),
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(restApiId,
                  r'UpdateDocumentationVersionRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDocumentationVersionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateDocumentationVersionRequestPayload
    extends UpdateDocumentationVersionRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDocumentationVersionRequestPayload(
          [void Function(UpdateDocumentationVersionRequestPayloadBuilder)?
              updates]) =>
      (new UpdateDocumentationVersionRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateDocumentationVersionRequestPayload._({this.patchOperations})
      : super._();

  @override
  UpdateDocumentationVersionRequestPayload rebuild(
          void Function(UpdateDocumentationVersionRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDocumentationVersionRequestPayloadBuilder toBuilder() =>
      new UpdateDocumentationVersionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDocumentationVersionRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDocumentationVersionRequestPayloadBuilder
    implements
        Builder<UpdateDocumentationVersionRequestPayload,
            UpdateDocumentationVersionRequestPayloadBuilder> {
  _$UpdateDocumentationVersionRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDocumentationVersionRequestPayloadBuilder() {
    UpdateDocumentationVersionRequestPayload._init(this);
  }

  UpdateDocumentationVersionRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDocumentationVersionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDocumentationVersionRequestPayload;
  }

  @override
  void update(
      void Function(UpdateDocumentationVersionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDocumentationVersionRequestPayload build() => _build();

  _$UpdateDocumentationVersionRequestPayload _build() {
    _$UpdateDocumentationVersionRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateDocumentationVersionRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDocumentationVersionRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
