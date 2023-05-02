// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_integration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateIntegrationRequest extends UpdateIntegrationRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateIntegrationRequest(
          [void Function(UpdateIntegrationRequestBuilder)? updates]) =>
      (new UpdateIntegrationRequestBuilder()..update(updates))._build();

  _$UpdateIntegrationRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateIntegrationRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateIntegrationRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'UpdateIntegrationRequest', 'httpMethod');
  }

  @override
  UpdateIntegrationRequest rebuild(
          void Function(UpdateIntegrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateIntegrationRequestBuilder toBuilder() =>
      new UpdateIntegrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateIntegrationRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateIntegrationRequestBuilder
    implements
        Builder<UpdateIntegrationRequest, UpdateIntegrationRequestBuilder> {
  _$UpdateIntegrationRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateIntegrationRequestBuilder() {
    UpdateIntegrationRequest._init(this);
  }

  UpdateIntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateIntegrationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateIntegrationRequest;
  }

  @override
  void update(void Function(UpdateIntegrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateIntegrationRequest build() => _build();

  _$UpdateIntegrationRequest _build() {
    _$UpdateIntegrationRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateIntegrationRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateIntegrationRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'UpdateIntegrationRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'UpdateIntegrationRequest', 'httpMethod'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateIntegrationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateIntegrationRequestPayload
    extends UpdateIntegrationRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateIntegrationRequestPayload(
          [void Function(UpdateIntegrationRequestPayloadBuilder)? updates]) =>
      (new UpdateIntegrationRequestPayloadBuilder()..update(updates))._build();

  _$UpdateIntegrationRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateIntegrationRequestPayload rebuild(
          void Function(UpdateIntegrationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateIntegrationRequestPayloadBuilder toBuilder() =>
      new UpdateIntegrationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateIntegrationRequestPayload &&
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

class UpdateIntegrationRequestPayloadBuilder
    implements
        Builder<UpdateIntegrationRequestPayload,
            UpdateIntegrationRequestPayloadBuilder> {
  _$UpdateIntegrationRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateIntegrationRequestPayloadBuilder() {
    UpdateIntegrationRequestPayload._init(this);
  }

  UpdateIntegrationRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateIntegrationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateIntegrationRequestPayload;
  }

  @override
  void update(void Function(UpdateIntegrationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateIntegrationRequestPayload build() => _build();

  _$UpdateIntegrationRequestPayload _build() {
    _$UpdateIntegrationRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateIntegrationRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateIntegrationRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
