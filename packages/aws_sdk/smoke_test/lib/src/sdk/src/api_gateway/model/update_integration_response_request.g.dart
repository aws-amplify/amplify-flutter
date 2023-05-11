// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateIntegrationResponseRequest
    extends UpdateIntegrationResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateIntegrationResponseRequest(
          [void Function(UpdateIntegrationResponseRequestBuilder)? updates]) =>
      (new UpdateIntegrationResponseRequestBuilder()..update(updates))._build();

  _$UpdateIntegrationResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'UpdateIntegrationResponseRequest', 'httpMethod');
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
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        statusCode == other.statusCode &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateIntegrationResponseRequestBuilder
    implements
        Builder<UpdateIntegrationResponseRequest,
            UpdateIntegrationResponseRequestBuilder> {
  _$UpdateIntegrationResponseRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateIntegrationResponseRequestBuilder() {
    UpdateIntegrationResponseRequest._init(this);
  }

  UpdateIntegrationResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _statusCode = $v.statusCode;
      _patchOperations = $v.patchOperations?.toBuilder();
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
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateIntegrationResponseRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(resourceId,
                  r'UpdateIntegrationResponseRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(httpMethod,
                  r'UpdateIntegrationResponseRequest', 'httpMethod'),
              statusCode: BuiltValueNullFieldError.checkNotNull(statusCode,
                  r'UpdateIntegrationResponseRequest', 'statusCode'),
              patchOperations: _patchOperations?.build());
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
