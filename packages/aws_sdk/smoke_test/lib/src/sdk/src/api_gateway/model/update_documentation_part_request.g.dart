// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_documentation_part_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDocumentationPartRequest extends UpdateDocumentationPartRequest {
  @override
  final String restApiId;
  @override
  final String documentationPartId;
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateDocumentationPartRequest(
          [void Function(UpdateDocumentationPartRequestBuilder)? updates]) =>
      (new UpdateDocumentationPartRequestBuilder()..update(updates))._build();

  _$UpdateDocumentationPartRequest._(
      {required this.restApiId,
      required this.documentationPartId,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateDocumentationPartRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(documentationPartId,
        r'UpdateDocumentationPartRequest', 'documentationPartId');
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
        restApiId == other.restApiId &&
        documentationPartId == other.documentationPartId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, documentationPartId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDocumentationPartRequestBuilder
    implements
        Builder<UpdateDocumentationPartRequest,
            UpdateDocumentationPartRequestBuilder> {
  _$UpdateDocumentationPartRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _documentationPartId;
  String? get documentationPartId => _$this._documentationPartId;
  set documentationPartId(String? documentationPartId) =>
      _$this._documentationPartId = documentationPartId;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDocumentationPartRequestBuilder();

  UpdateDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _documentationPartId = $v.documentationPartId;
      _patchOperations = $v.patchOperations?.toBuilder();
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
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateDocumentationPartRequest', 'restApiId'),
              documentationPartId: BuiltValueNullFieldError.checkNotNull(
                  documentationPartId,
                  r'UpdateDocumentationPartRequest',
                  'documentationPartId'),
              patchOperations: _patchOperations?.build());
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
  final _i3.BuiltList<PatchOperation>? patchOperations;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDocumentationPartRequestPayloadBuilder
    implements
        Builder<UpdateDocumentationPartRequestPayload,
            UpdateDocumentationPartRequestPayloadBuilder> {
  _$UpdateDocumentationPartRequestPayload? _$v;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDocumentationPartRequestPayloadBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
