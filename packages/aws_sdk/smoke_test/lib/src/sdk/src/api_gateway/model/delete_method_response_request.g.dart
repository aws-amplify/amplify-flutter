// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_method_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMethodResponseRequest extends DeleteMethodResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;

  factory _$DeleteMethodResponseRequest(
          [void Function(DeleteMethodResponseRequestBuilder)? updates]) =>
      (new DeleteMethodResponseRequestBuilder()..update(updates))._build();

  _$DeleteMethodResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteMethodResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteMethodResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteMethodResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'DeleteMethodResponseRequest', 'statusCode');
  }

  @override
  DeleteMethodResponseRequest rebuild(
          void Function(DeleteMethodResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodResponseRequestBuilder toBuilder() =>
      new DeleteMethodResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodResponseRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteMethodResponseRequestBuilder
    implements
        Builder<DeleteMethodResponseRequest,
            DeleteMethodResponseRequestBuilder> {
  _$DeleteMethodResponseRequest? _$v;

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

  DeleteMethodResponseRequestBuilder() {
    DeleteMethodResponseRequest._init(this);
  }

  DeleteMethodResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMethodResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodResponseRequest;
  }

  @override
  void update(void Function(DeleteMethodResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodResponseRequest build() => _build();

  _$DeleteMethodResponseRequest _build() {
    final _$result = _$v ??
        new _$DeleteMethodResponseRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteMethodResponseRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteMethodResponseRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteMethodResponseRequest', 'httpMethod'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'DeleteMethodResponseRequest', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteMethodResponseRequestPayload
    extends DeleteMethodResponseRequestPayload {
  factory _$DeleteMethodResponseRequestPayload(
          [void Function(DeleteMethodResponseRequestPayloadBuilder)?
              updates]) =>
      (new DeleteMethodResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteMethodResponseRequestPayload._() : super._();

  @override
  DeleteMethodResponseRequestPayload rebuild(
          void Function(DeleteMethodResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodResponseRequestPayloadBuilder toBuilder() =>
      new DeleteMethodResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 870332704;
  }
}

class DeleteMethodResponseRequestPayloadBuilder
    implements
        Builder<DeleteMethodResponseRequestPayload,
            DeleteMethodResponseRequestPayloadBuilder> {
  _$DeleteMethodResponseRequestPayload? _$v;

  DeleteMethodResponseRequestPayloadBuilder() {
    DeleteMethodResponseRequestPayload._init(this);
  }

  @override
  void replace(DeleteMethodResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodResponseRequestPayload;
  }

  @override
  void update(
      void Function(DeleteMethodResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodResponseRequestPayload build() => _build();

  _$DeleteMethodResponseRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteMethodResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
