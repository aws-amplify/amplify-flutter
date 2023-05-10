// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIntegrationResponseRequest extends GetIntegrationResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;

  factory _$GetIntegrationResponseRequest(
          [void Function(GetIntegrationResponseRequestBuilder)? updates]) =>
      (new GetIntegrationResponseRequestBuilder()..update(updates))._build();

  _$GetIntegrationResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'GetIntegrationResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GetIntegrationResponseRequest', 'statusCode');
  }

  @override
  GetIntegrationResponseRequest rebuild(
          void Function(GetIntegrationResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIntegrationResponseRequestBuilder toBuilder() =>
      new GetIntegrationResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIntegrationResponseRequest &&
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

class GetIntegrationResponseRequestBuilder
    implements
        Builder<GetIntegrationResponseRequest,
            GetIntegrationResponseRequestBuilder> {
  _$GetIntegrationResponseRequest? _$v;

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

  GetIntegrationResponseRequestBuilder() {
    GetIntegrationResponseRequest._init(this);
  }

  GetIntegrationResponseRequestBuilder get _$this {
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
  void replace(GetIntegrationResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIntegrationResponseRequest;
  }

  @override
  void update(void Function(GetIntegrationResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIntegrationResponseRequest build() => _build();

  _$GetIntegrationResponseRequest _build() {
    final _$result = _$v ??
        new _$GetIntegrationResponseRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetIntegrationResponseRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetIntegrationResponseRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'GetIntegrationResponseRequest', 'httpMethod'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'GetIntegrationResponseRequest', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

class _$GetIntegrationResponseRequestPayload
    extends GetIntegrationResponseRequestPayload {
  factory _$GetIntegrationResponseRequestPayload(
          [void Function(GetIntegrationResponseRequestPayloadBuilder)?
              updates]) =>
      (new GetIntegrationResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetIntegrationResponseRequestPayload._() : super._();

  @override
  GetIntegrationResponseRequestPayload rebuild(
          void Function(GetIntegrationResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIntegrationResponseRequestPayloadBuilder toBuilder() =>
      new GetIntegrationResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIntegrationResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 790333548;
  }
}

class GetIntegrationResponseRequestPayloadBuilder
    implements
        Builder<GetIntegrationResponseRequestPayload,
            GetIntegrationResponseRequestPayloadBuilder> {
  _$GetIntegrationResponseRequestPayload? _$v;

  GetIntegrationResponseRequestPayloadBuilder() {
    GetIntegrationResponseRequestPayload._init(this);
  }

  @override
  void replace(GetIntegrationResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIntegrationResponseRequestPayload;
  }

  @override
  void update(
      void Function(GetIntegrationResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIntegrationResponseRequestPayload build() => _build();

  _$GetIntegrationResponseRequestPayload _build() {
    final _$result = _$v ?? new _$GetIntegrationResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
