// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateIntegrationResponseRequest
    extends UpdateIntegrationResponseRequest {
  @override
  final String httpMethod;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final String statusCode;

  factory _$UpdateIntegrationResponseRequest(
          [void Function(UpdateIntegrationResponseRequestBuilder)? updates]) =>
      (new UpdateIntegrationResponseRequestBuilder()..update(updates))._build();

  _$UpdateIntegrationResponseRequest._(
      {required this.httpMethod,
      this.patchOperations,
      required this.resourceId,
      required this.restApiId,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'UpdateIntegrationResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'UpdateIntegrationResponseRequest', 'statusCode');
  }

  @override
  UpdateIntegrationResponseRequest rebuild(
          void Function(UpdateIntegrationResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateIntegrationResponseRequestBuilder toBuilder() =>
      new UpdateIntegrationResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateIntegrationResponseRequest &&
        httpMethod == other.httpMethod &&
        patchOperations == other.patchOperations &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateIntegrationResponseRequestBuilder
    implements
        Builder<UpdateIntegrationResponseRequest,
            UpdateIntegrationResponseRequestBuilder> {
  _$UpdateIntegrationResponseRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  UpdateIntegrationResponseRequestBuilder() {
    UpdateIntegrationResponseRequest._init(this);
  }

  UpdateIntegrationResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _patchOperations = $v.patchOperations?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateIntegrationResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateIntegrationResponseRequest;
  }

  @override
  void update(void Function(UpdateIntegrationResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateIntegrationResponseRequest build() => _build();

  _$UpdateIntegrationResponseRequest _build() {
    _$UpdateIntegrationResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateIntegrationResponseRequest._(
              httpMethod: BuiltValueNullFieldError.checkNotNull(httpMethod,
                  r'UpdateIntegrationResponseRequest', 'httpMethod'),
              patchOperations: _patchOperations?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(resourceId,
                  r'UpdateIntegrationResponseRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateIntegrationResponseRequest', 'restApiId'),
              statusCode: BuiltValueNullFieldError.checkNotNull(statusCode,
                  r'UpdateIntegrationResponseRequest', 'statusCode'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateIntegrationResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateIntegrationResponseRequestPayload
    extends UpdateIntegrationResponseRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateIntegrationResponseRequestPayload(
          [void Function(UpdateIntegrationResponseRequestPayloadBuilder)?
              updates]) =>
      (new UpdateIntegrationResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateIntegrationResponseRequestPayload._({this.patchOperations})
      : super._();

  @override
  UpdateIntegrationResponseRequestPayload rebuild(
          void Function(UpdateIntegrationResponseRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateIntegrationResponseRequestPayloadBuilder toBuilder() =>
      new UpdateIntegrationResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateIntegrationResponseRequestPayload &&
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

class UpdateIntegrationResponseRequestPayloadBuilder
    implements
        Builder<UpdateIntegrationResponseRequestPayload,
            UpdateIntegrationResponseRequestPayloadBuilder> {
  _$UpdateIntegrationResponseRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateIntegrationResponseRequestPayloadBuilder() {
    UpdateIntegrationResponseRequestPayload._init(this);
  }

  UpdateIntegrationResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateIntegrationResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateIntegrationResponseRequestPayload;
  }

  @override
  void update(
      void Function(UpdateIntegrationResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateIntegrationResponseRequestPayload build() => _build();

  _$UpdateIntegrationResponseRequestPayload _build() {
    _$UpdateIntegrationResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateIntegrationResponseRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateIntegrationResponseRequestPayload',
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
