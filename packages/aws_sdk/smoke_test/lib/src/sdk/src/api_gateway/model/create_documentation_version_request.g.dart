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
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), documentationVersion.hashCode),
            restApiId.hashCode),
        stageName.hashCode));
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
    return $jf($jc(
        $jc($jc(0, description.hashCode), documentationVersion.hashCode),
        stageName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
