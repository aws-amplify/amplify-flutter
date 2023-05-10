// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_integration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIntegrationRequest extends DeleteIntegrationRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;

  factory _$DeleteIntegrationRequest(
          [void Function(DeleteIntegrationRequestBuilder)? updates]) =>
      (new DeleteIntegrationRequestBuilder()..update(updates))._build();

  _$DeleteIntegrationRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteIntegrationRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteIntegrationRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteIntegrationRequest', 'httpMethod');
  }

  @override
  DeleteIntegrationRequest rebuild(
          void Function(DeleteIntegrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIntegrationRequestBuilder toBuilder() =>
      new DeleteIntegrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIntegrationRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIntegrationRequestBuilder
    implements
        Builder<DeleteIntegrationRequest, DeleteIntegrationRequestBuilder> {
  _$DeleteIntegrationRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  DeleteIntegrationRequestBuilder() {
    DeleteIntegrationRequest._init(this);
  }

  DeleteIntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIntegrationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIntegrationRequest;
  }

  @override
  void update(void Function(DeleteIntegrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIntegrationRequest build() => _build();

  _$DeleteIntegrationRequest _build() {
    final _$result = _$v ??
        new _$DeleteIntegrationRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteIntegrationRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteIntegrationRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteIntegrationRequest', 'httpMethod'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteIntegrationRequestPayload
    extends DeleteIntegrationRequestPayload {
  factory _$DeleteIntegrationRequestPayload(
          [void Function(DeleteIntegrationRequestPayloadBuilder)? updates]) =>
      (new DeleteIntegrationRequestPayloadBuilder()..update(updates))._build();

  _$DeleteIntegrationRequestPayload._() : super._();

  @override
  DeleteIntegrationRequestPayload rebuild(
          void Function(DeleteIntegrationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIntegrationRequestPayloadBuilder toBuilder() =>
      new DeleteIntegrationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIntegrationRequestPayload;
  }

  @override
  int get hashCode {
    return 824318389;
  }
}

class DeleteIntegrationRequestPayloadBuilder
    implements
        Builder<DeleteIntegrationRequestPayload,
            DeleteIntegrationRequestPayloadBuilder> {
  _$DeleteIntegrationRequestPayload? _$v;

  DeleteIntegrationRequestPayloadBuilder() {
    DeleteIntegrationRequestPayload._init(this);
  }

  @override
  void replace(DeleteIntegrationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIntegrationRequestPayload;
  }

  @override
  void update(void Function(DeleteIntegrationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIntegrationRequestPayload build() => _build();

  _$DeleteIntegrationRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteIntegrationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
