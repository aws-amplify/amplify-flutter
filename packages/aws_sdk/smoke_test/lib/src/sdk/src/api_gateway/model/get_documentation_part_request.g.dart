// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_part_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationPartRequest extends GetDocumentationPartRequest {
  @override
  final String documentationPartId;
  @override
  final String restApiId;

  factory _$GetDocumentationPartRequest(
          [void Function(GetDocumentationPartRequestBuilder)? updates]) =>
      (new GetDocumentationPartRequestBuilder()..update(updates))._build();

  _$GetDocumentationPartRequest._(
      {required this.documentationPartId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationPartId,
        r'GetDocumentationPartRequest', 'documentationPartId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDocumentationPartRequest', 'restApiId');
  }

  @override
  GetDocumentationPartRequest rebuild(
          void Function(GetDocumentationPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationPartRequestBuilder toBuilder() =>
      new GetDocumentationPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationPartRequest &&
        documentationPartId == other.documentationPartId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, documentationPartId.hashCode), restApiId.hashCode));
  }
}

class GetDocumentationPartRequestBuilder
    implements
        Builder<GetDocumentationPartRequest,
            GetDocumentationPartRequestBuilder> {
  _$GetDocumentationPartRequest? _$v;

  String? _documentationPartId;
  String? get documentationPartId => _$this._documentationPartId;
  set documentationPartId(String? documentationPartId) =>
      _$this._documentationPartId = documentationPartId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetDocumentationPartRequestBuilder() {
    GetDocumentationPartRequest._init(this);
  }

  GetDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationPartId = $v.documentationPartId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDocumentationPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationPartRequest;
  }

  @override
  void update(void Function(GetDocumentationPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationPartRequest build() => _build();

  _$GetDocumentationPartRequest _build() {
    final _$result = _$v ??
        new _$GetDocumentationPartRequest._(
            documentationPartId: BuiltValueNullFieldError.checkNotNull(
                documentationPartId,
                r'GetDocumentationPartRequest',
                'documentationPartId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationPartRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetDocumentationPartRequestPayload
    extends GetDocumentationPartRequestPayload {
  factory _$GetDocumentationPartRequestPayload(
          [void Function(GetDocumentationPartRequestPayloadBuilder)?
              updates]) =>
      (new GetDocumentationPartRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetDocumentationPartRequestPayload._() : super._();

  @override
  GetDocumentationPartRequestPayload rebuild(
          void Function(GetDocumentationPartRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationPartRequestPayloadBuilder toBuilder() =>
      new GetDocumentationPartRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationPartRequestPayload;
  }

  @override
  int get hashCode {
    return 568479273;
  }
}

class GetDocumentationPartRequestPayloadBuilder
    implements
        Builder<GetDocumentationPartRequestPayload,
            GetDocumentationPartRequestPayloadBuilder> {
  _$GetDocumentationPartRequestPayload? _$v;

  GetDocumentationPartRequestPayloadBuilder() {
    GetDocumentationPartRequestPayload._init(this);
  }

  @override
  void replace(GetDocumentationPartRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationPartRequestPayload;
  }

  @override
  void update(
      void Function(GetDocumentationPartRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationPartRequestPayload build() => _build();

  _$GetDocumentationPartRequestPayload _build() {
    final _$result = _$v ?? new _$GetDocumentationPartRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
