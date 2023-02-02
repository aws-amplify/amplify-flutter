// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_documentation_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDocumentationVersionRequest
    extends CreateDocumentationVersionRequest {
  @override
  final String? description;
  @override
  final String documentationVersion;
  @override
  final String restApiId;
  @override
  final String? stageName;

  factory _$CreateDocumentationVersionRequest(
          [void Function(CreateDocumentationVersionRequestBuilder)? updates]) =>
      (new CreateDocumentationVersionRequestBuilder()..update(updates))
          ._build();

  _$CreateDocumentationVersionRequest._(
      {this.description,
      required this.documentationVersion,
      required this.restApiId,
      this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'CreateDocumentationVersionRequest', 'documentationVersion');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateDocumentationVersionRequest', 'restApiId');
  }

  @override
  CreateDocumentationVersionRequest rebuild(
          void Function(CreateDocumentationVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDocumentationVersionRequestBuilder toBuilder() =>
      new CreateDocumentationVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDocumentationVersionRequest &&
        description == other.description &&
        documentationVersion == other.documentationVersion &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDocumentationVersionRequestBuilder
    implements
        Builder<CreateDocumentationVersionRequest,
            CreateDocumentationVersionRequestBuilder> {
  _$CreateDocumentationVersionRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  CreateDocumentationVersionRequestBuilder() {
    CreateDocumentationVersionRequest._init(this);
  }

  CreateDocumentationVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _documentationVersion = $v.documentationVersion;
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDocumentationVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDocumentationVersionRequest;
  }

  @override
  void update(
      void Function(CreateDocumentationVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDocumentationVersionRequest build() => _build();

  _$CreateDocumentationVersionRequest _build() {
    final _$result = _$v ??
        new _$CreateDocumentationVersionRequest._(
            description: description,
            documentationVersion: BuiltValueNullFieldError.checkNotNull(
                documentationVersion,
                r'CreateDocumentationVersionRequest',
                'documentationVersion'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateDocumentationVersionRequest', 'restApiId'),
            stageName: stageName);
    replace(_$result);
    return _$result;
  }
}

class _$CreateDocumentationVersionRequestPayload
    extends CreateDocumentationVersionRequestPayload {
  @override
  final String? description;
  @override
  final String documentationVersion;
  @override
  final String? stageName;

  factory _$CreateDocumentationVersionRequestPayload(
          [void Function(CreateDocumentationVersionRequestPayloadBuilder)?
              updates]) =>
      (new CreateDocumentationVersionRequestPayloadBuilder()..update(updates))
          ._build();

  _$CreateDocumentationVersionRequestPayload._(
      {this.description, required this.documentationVersion, this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'CreateDocumentationVersionRequestPayload', 'documentationVersion');
  }

  @override
  CreateDocumentationVersionRequestPayload rebuild(
          void Function(CreateDocumentationVersionRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDocumentationVersionRequestPayloadBuilder toBuilder() =>
      new CreateDocumentationVersionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDocumentationVersionRequestPayload &&
        description == other.description &&
        documentationVersion == other.documentationVersion &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, documentationVersion.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDocumentationVersionRequestPayloadBuilder
    implements
        Builder<CreateDocumentationVersionRequestPayload,
            CreateDocumentationVersionRequestPayloadBuilder> {
  _$CreateDocumentationVersionRequestPayload? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  CreateDocumentationVersionRequestPayloadBuilder() {
    CreateDocumentationVersionRequestPayload._init(this);
  }

  CreateDocumentationVersionRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _documentationVersion = $v.documentationVersion;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDocumentationVersionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDocumentationVersionRequestPayload;
  }

  @override
  void update(
      void Function(CreateDocumentationVersionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDocumentationVersionRequestPayload build() => _build();

  _$CreateDocumentationVersionRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateDocumentationVersionRequestPayload._(
            description: description,
            documentationVersion: BuiltValueNullFieldError.checkNotNull(
                documentationVersion,
                r'CreateDocumentationVersionRequestPayload',
                'documentationVersion'),
            stageName: stageName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
