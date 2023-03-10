// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIntegrationResponseRequest
    extends DeleteIntegrationResponseRequest {
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final String statusCode;

  factory _$DeleteIntegrationResponseRequest(
          [void Function(DeleteIntegrationResponseRequestBuilder)? updates]) =>
      (new DeleteIntegrationResponseRequestBuilder()..update(updates))._build();

  _$DeleteIntegrationResponseRequest._(
      {required this.httpMethod,
      required this.resourceId,
      required this.restApiId,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteIntegrationResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'DeleteIntegrationResponseRequest', 'statusCode');
  }

  @override
  DeleteIntegrationResponseRequest rebuild(
          void Function(DeleteIntegrationResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIntegrationResponseRequestBuilder toBuilder() =>
      new DeleteIntegrationResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIntegrationResponseRequest &&
        httpMethod == other.httpMethod &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIntegrationResponseRequestBuilder
    implements
        Builder<DeleteIntegrationResponseRequest,
            DeleteIntegrationResponseRequestBuilder> {
  _$DeleteIntegrationResponseRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  DeleteIntegrationResponseRequestBuilder() {
    DeleteIntegrationResponseRequest._init(this);
  }

  DeleteIntegrationResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIntegrationResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIntegrationResponseRequest;
  }

  @override
  void update(void Function(DeleteIntegrationResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIntegrationResponseRequest build() => _build();

  _$DeleteIntegrationResponseRequest _build() {
    final _$result = _$v ??
        new _$DeleteIntegrationResponseRequest._(
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteIntegrationResponseRequest', 'httpMethod'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteIntegrationResponseRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteIntegrationResponseRequest', 'restApiId'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'DeleteIntegrationResponseRequest', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteIntegrationResponseRequestPayload
    extends DeleteIntegrationResponseRequestPayload {
  factory _$DeleteIntegrationResponseRequestPayload(
          [void Function(DeleteIntegrationResponseRequestPayloadBuilder)?
              updates]) =>
      (new DeleteIntegrationResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteIntegrationResponseRequestPayload._() : super._();

  @override
  DeleteIntegrationResponseRequestPayload rebuild(
          void Function(DeleteIntegrationResponseRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIntegrationResponseRequestPayloadBuilder toBuilder() =>
      new DeleteIntegrationResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIntegrationResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 13665502;
  }
}

class DeleteIntegrationResponseRequestPayloadBuilder
    implements
        Builder<DeleteIntegrationResponseRequestPayload,
            DeleteIntegrationResponseRequestPayloadBuilder> {
  _$DeleteIntegrationResponseRequestPayload? _$v;

  DeleteIntegrationResponseRequestPayloadBuilder() {
    DeleteIntegrationResponseRequestPayload._init(this);
  }

  @override
  void replace(DeleteIntegrationResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIntegrationResponseRequestPayload;
  }

  @override
  void update(
      void Function(DeleteIntegrationResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIntegrationResponseRequestPayload build() => _build();

  _$DeleteIntegrationResponseRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteIntegrationResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
