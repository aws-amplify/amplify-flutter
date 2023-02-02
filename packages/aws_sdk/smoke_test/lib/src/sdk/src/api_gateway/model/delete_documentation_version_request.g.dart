// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_documentation_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDocumentationVersionRequest
    extends DeleteDocumentationVersionRequest {
  @override
  final String documentationVersion;
  @override
  final String restApiId;

  factory _$DeleteDocumentationVersionRequest(
          [void Function(DeleteDocumentationVersionRequestBuilder)? updates]) =>
      (new DeleteDocumentationVersionRequestBuilder()..update(updates))
          ._build();

  _$DeleteDocumentationVersionRequest._(
      {required this.documentationVersion, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'DeleteDocumentationVersionRequest', 'documentationVersion');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteDocumentationVersionRequest', 'restApiId');
  }

  @override
  DeleteDocumentationVersionRequest rebuild(
          void Function(DeleteDocumentationVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationVersionRequestBuilder toBuilder() =>
      new DeleteDocumentationVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationVersionRequest &&
        documentationVersion == other.documentationVersion &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteDocumentationVersionRequestBuilder
    implements
        Builder<DeleteDocumentationVersionRequest,
            DeleteDocumentationVersionRequestBuilder> {
  _$DeleteDocumentationVersionRequest? _$v;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteDocumentationVersionRequestBuilder() {
    DeleteDocumentationVersionRequest._init(this);
  }

  DeleteDocumentationVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationVersion = $v.documentationVersion;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDocumentationVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationVersionRequest;
  }

  @override
  void update(
      void Function(DeleteDocumentationVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationVersionRequest build() => _build();

  _$DeleteDocumentationVersionRequest _build() {
    final _$result = _$v ??
        new _$DeleteDocumentationVersionRequest._(
            documentationVersion: BuiltValueNullFieldError.checkNotNull(
                documentationVersion,
                r'DeleteDocumentationVersionRequest',
                'documentationVersion'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteDocumentationVersionRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteDocumentationVersionRequestPayload
    extends DeleteDocumentationVersionRequestPayload {
  factory _$DeleteDocumentationVersionRequestPayload(
          [void Function(DeleteDocumentationVersionRequestPayloadBuilder)?
              updates]) =>
      (new DeleteDocumentationVersionRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteDocumentationVersionRequestPayload._() : super._();

  @override
  DeleteDocumentationVersionRequestPayload rebuild(
          void Function(DeleteDocumentationVersionRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationVersionRequestPayloadBuilder toBuilder() =>
      new DeleteDocumentationVersionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationVersionRequestPayload;
  }

  @override
  int get hashCode {
    return 852857734;
  }
}

class DeleteDocumentationVersionRequestPayloadBuilder
    implements
        Builder<DeleteDocumentationVersionRequestPayload,
            DeleteDocumentationVersionRequestPayloadBuilder> {
  _$DeleteDocumentationVersionRequestPayload? _$v;

  DeleteDocumentationVersionRequestPayloadBuilder() {
    DeleteDocumentationVersionRequestPayload._init(this);
  }

  @override
  void replace(DeleteDocumentationVersionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationVersionRequestPayload;
  }

  @override
  void update(
      void Function(DeleteDocumentationVersionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationVersionRequestPayload build() => _build();

  _$DeleteDocumentationVersionRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteDocumentationVersionRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
