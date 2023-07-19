// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_integration_response_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIntegrationResponseRequest
    extends DeleteIntegrationResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;

  factory _$DeleteIntegrationResponseRequest(
          [void Function(DeleteIntegrationResponseRequestBuilder)? updates]) =>
      (new DeleteIntegrationResponseRequestBuilder()..update(updates))._build();

  _$DeleteIntegrationResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteIntegrationResponseRequest', 'httpMethod');
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

class DeleteIntegrationResponseRequestBuilder
    implements
        Builder<DeleteIntegrationResponseRequest,
            DeleteIntegrationResponseRequestBuilder> {
  _$DeleteIntegrationResponseRequest? _$v;

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

  DeleteIntegrationResponseRequestBuilder();

  DeleteIntegrationResponseRequestBuilder get _$this {
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
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteIntegrationResponseRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteIntegrationResponseRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteIntegrationResponseRequest', 'httpMethod'),
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

  DeleteIntegrationResponseRequestPayloadBuilder();

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
