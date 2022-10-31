// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_version_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationVersionRequest extends GetDocumentationVersionRequest {
  @override
  final String documentationVersion;
  @override
  final String restApiId;

  factory _$GetDocumentationVersionRequest(
          [void Function(GetDocumentationVersionRequestBuilder)? updates]) =>
      (new GetDocumentationVersionRequestBuilder()..update(updates))._build();

  _$GetDocumentationVersionRequest._(
      {required this.documentationVersion, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationVersion,
        r'GetDocumentationVersionRequest', 'documentationVersion');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDocumentationVersionRequest', 'restApiId');
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
        documentationVersion == other.documentationVersion &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, documentationVersion.hashCode), restApiId.hashCode));
  }
}

class GetDocumentationVersionRequestBuilder
    implements
        Builder<GetDocumentationVersionRequest,
            GetDocumentationVersionRequestBuilder> {
  _$GetDocumentationVersionRequest? _$v;

  String? _documentationVersion;
  String? get documentationVersion => _$this._documentationVersion;
  set documentationVersion(String? documentationVersion) =>
      _$this._documentationVersion = documentationVersion;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetDocumentationVersionRequestBuilder() {
    GetDocumentationVersionRequest._init(this);
  }

  GetDocumentationVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationVersion = $v.documentationVersion;
      _restApiId = $v.restApiId;
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
            documentationVersion: BuiltValueNullFieldError.checkNotNull(
                documentationVersion,
                r'GetDocumentationVersionRequest',
                'documentationVersion'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationVersionRequest', 'restApiId'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
