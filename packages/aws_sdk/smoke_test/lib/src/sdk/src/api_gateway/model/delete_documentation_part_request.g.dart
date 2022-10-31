// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_documentation_part_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDocumentationPartRequest extends DeleteDocumentationPartRequest {
  @override
  final String documentationPartId;
  @override
  final String restApiId;

  factory _$DeleteDocumentationPartRequest(
          [void Function(DeleteDocumentationPartRequestBuilder)? updates]) =>
      (new DeleteDocumentationPartRequestBuilder()..update(updates))._build();

  _$DeleteDocumentationPartRequest._(
      {required this.documentationPartId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationPartId,
        r'DeleteDocumentationPartRequest', 'documentationPartId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteDocumentationPartRequest', 'restApiId');
  }

  @override
  DeleteDocumentationPartRequest rebuild(
          void Function(DeleteDocumentationPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationPartRequestBuilder toBuilder() =>
      new DeleteDocumentationPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationPartRequest &&
        documentationPartId == other.documentationPartId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, documentationPartId.hashCode), restApiId.hashCode));
  }
}

class DeleteDocumentationPartRequestBuilder
    implements
        Builder<DeleteDocumentationPartRequest,
            DeleteDocumentationPartRequestBuilder> {
  _$DeleteDocumentationPartRequest? _$v;

  String? _documentationPartId;
  String? get documentationPartId => _$this._documentationPartId;
  set documentationPartId(String? documentationPartId) =>
      _$this._documentationPartId = documentationPartId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteDocumentationPartRequestBuilder() {
    DeleteDocumentationPartRequest._init(this);
  }

  DeleteDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationPartId = $v.documentationPartId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDocumentationPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationPartRequest;
  }

  @override
  void update(void Function(DeleteDocumentationPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationPartRequest build() => _build();

  _$DeleteDocumentationPartRequest _build() {
    final _$result = _$v ??
        new _$DeleteDocumentationPartRequest._(
            documentationPartId: BuiltValueNullFieldError.checkNotNull(
                documentationPartId,
                r'DeleteDocumentationPartRequest',
                'documentationPartId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteDocumentationPartRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteDocumentationPartRequestPayload
    extends DeleteDocumentationPartRequestPayload {
  factory _$DeleteDocumentationPartRequestPayload(
          [void Function(DeleteDocumentationPartRequestPayloadBuilder)?
              updates]) =>
      (new DeleteDocumentationPartRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteDocumentationPartRequestPayload._() : super._();

  @override
  DeleteDocumentationPartRequestPayload rebuild(
          void Function(DeleteDocumentationPartRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationPartRequestPayloadBuilder toBuilder() =>
      new DeleteDocumentationPartRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationPartRequestPayload;
  }

  @override
  int get hashCode {
    return 104351289;
  }
}

class DeleteDocumentationPartRequestPayloadBuilder
    implements
        Builder<DeleteDocumentationPartRequestPayload,
            DeleteDocumentationPartRequestPayloadBuilder> {
  _$DeleteDocumentationPartRequestPayload? _$v;

  DeleteDocumentationPartRequestPayloadBuilder() {
    DeleteDocumentationPartRequestPayload._init(this);
  }

  @override
  void replace(DeleteDocumentationPartRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationPartRequestPayload;
  }

  @override
  void update(
      void Function(DeleteDocumentationPartRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationPartRequestPayload build() => _build();

  _$DeleteDocumentationPartRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteDocumentationPartRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
