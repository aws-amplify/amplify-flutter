// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_documentation_part_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDocumentationPartRequest extends UpdateDocumentationPartRequest {
  @override
  final String documentationPartId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;

  factory _$UpdateDocumentationPartRequest(
          [void Function(UpdateDocumentationPartRequestBuilder)? updates]) =>
      (new UpdateDocumentationPartRequestBuilder()..update(updates))._build();

  _$UpdateDocumentationPartRequest._(
      {required this.documentationPartId,
      this.patchOperations,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentationPartId,
        r'UpdateDocumentationPartRequest', 'documentationPartId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateDocumentationPartRequest', 'restApiId');
  }

  @override
  UpdateDocumentationPartRequest rebuild(
          void Function(UpdateDocumentationPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDocumentationPartRequestBuilder toBuilder() =>
      new UpdateDocumentationPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDocumentationPartRequest &&
        documentationPartId == other.documentationPartId &&
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, documentationPartId.hashCode), patchOperations.hashCode),
        restApiId.hashCode));
  }
}

class UpdateDocumentationPartRequestBuilder
    implements
        Builder<UpdateDocumentationPartRequest,
            UpdateDocumentationPartRequestBuilder> {
  _$UpdateDocumentationPartRequest? _$v;

  String? _documentationPartId;
  String? get documentationPartId => _$this._documentationPartId;
  set documentationPartId(String? documentationPartId) =>
      _$this._documentationPartId = documentationPartId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateDocumentationPartRequestBuilder() {
    UpdateDocumentationPartRequest._init(this);
  }

  UpdateDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentationPartId = $v.documentationPartId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDocumentationPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDocumentationPartRequest;
  }

  @override
  void update(void Function(UpdateDocumentationPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDocumentationPartRequest build() => _build();

  _$UpdateDocumentationPartRequest _build() {
    _$UpdateDocumentationPartRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateDocumentationPartRequest._(
              documentationPartId: BuiltValueNullFieldError.checkNotNull(
                  documentationPartId,
                  r'UpdateDocumentationPartRequest',
                  'documentationPartId'),
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateDocumentationPartRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDocumentationPartRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateDocumentationPartRequestPayload
    extends UpdateDocumentationPartRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDocumentationPartRequestPayload(
          [void Function(UpdateDocumentationPartRequestPayloadBuilder)?
              updates]) =>
      (new UpdateDocumentationPartRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateDocumentationPartRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateDocumentationPartRequestPayload rebuild(
          void Function(UpdateDocumentationPartRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDocumentationPartRequestPayloadBuilder toBuilder() =>
      new UpdateDocumentationPartRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDocumentationPartRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateDocumentationPartRequestPayloadBuilder
    implements
        Builder<UpdateDocumentationPartRequestPayload,
            UpdateDocumentationPartRequestPayloadBuilder> {
  _$UpdateDocumentationPartRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDocumentationPartRequestPayloadBuilder() {
    UpdateDocumentationPartRequestPayload._init(this);
  }

  UpdateDocumentationPartRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDocumentationPartRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDocumentationPartRequestPayload;
  }

  @override
  void update(
      void Function(UpdateDocumentationPartRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDocumentationPartRequestPayload build() => _build();

  _$UpdateDocumentationPartRequestPayload _build() {
    _$UpdateDocumentationPartRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateDocumentationPartRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDocumentationPartRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
