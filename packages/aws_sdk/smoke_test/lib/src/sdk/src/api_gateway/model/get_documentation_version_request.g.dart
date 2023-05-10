// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationVersionRequest extends GetDocumentationVersionRequest {
  @override
  final String restApiId;
  @override
  final String documentationVersion;

  factory _$GetDocumentationVersionRequest(
          [void Function(GetDocumentationVersionRequestBuilder)? updates]) =>
      (new GetDocumentationVersionRequestBuilder()..update(updates))._build();

  _$GetDocumentationVersionRequest._(
      {required this.restApiId, required this.documentationVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDocumentationVersionRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'GetDocumentationVersionRequest', 'documentationVersion');
  }

  @override
  GetDocumentationVersionRequest rebuild(
          void Function(GetDocumentationVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationVersionRequestBuilder toBuilder() =>
      new GetDocumentationVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationVersionRequest &&
        restApiId == other.restApiId &&
        documentationVersion == other.documentationVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDocumentationVersionRequestBuilder
    implements
        Builder<GetDocumentationVersionRequest,
            GetDocumentationVersionRequestBuilder> {
  _$GetDocumentationVersionRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  GetDocumentationVersionRequestBuilder() {
    GetDocumentationVersionRequest._init(this);
  }

  GetDocumentationVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _documentationVersion = $v.documentationVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDocumentationVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationVersionRequest;
  }

  @override
  void update(void Function(GetDocumentationVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationVersionRequest build() => _build();

  _$GetDocumentationVersionRequest _build() {
    final _$result = _$v ??
        new _$GetDocumentationVersionRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationVersionRequest', 'restApiId'),
            documentationVersion: BuiltValueNullFieldError.checkNotNull(
                documentationVersion,
                r'GetDocumentationVersionRequest',
                'documentationVersion'));
    replace(_$result);
    return _$result;
  }
}

class _$GetDocumentationVersionRequestPayload
    extends GetDocumentationVersionRequestPayload {
  factory _$GetDocumentationVersionRequestPayload(
          [void Function(GetDocumentationVersionRequestPayloadBuilder)?
              updates]) =>
      (new GetDocumentationVersionRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetDocumentationVersionRequestPayload._() : super._();

  @override
  GetDocumentationVersionRequestPayload rebuild(
          void Function(GetDocumentationVersionRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationVersionRequestPayloadBuilder toBuilder() =>
      new GetDocumentationVersionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationVersionRequestPayload;
  }

  @override
  int get hashCode {
    return 529930890;
  }
}

class GetDocumentationVersionRequestPayloadBuilder
    implements
        Builder<GetDocumentationVersionRequestPayload,
            GetDocumentationVersionRequestPayloadBuilder> {
  _$GetDocumentationVersionRequestPayload? _$v;

  GetDocumentationVersionRequestPayloadBuilder() {
    GetDocumentationVersionRequestPayload._init(this);
  }

  @override
  void replace(GetDocumentationVersionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationVersionRequestPayload;
  }

  @override
  void update(
      void Function(GetDocumentationVersionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationVersionRequestPayload build() => _build();

  _$GetDocumentationVersionRequestPayload _build() {
    final _$result = _$v ?? new _$GetDocumentationVersionRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
