// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_integration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIntegrationRequest extends GetIntegrationRequest {
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$GetIntegrationRequest(
          [void Function(GetIntegrationRequestBuilder)? updates]) =>
      (new GetIntegrationRequestBuilder()..update(updates))._build();

  _$GetIntegrationRequest._(
      {required this.httpMethod,
      required this.resourceId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'GetIntegrationRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetIntegrationRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetIntegrationRequest', 'restApiId');
  }

  @override
  GetIntegrationRequest rebuild(
          void Function(GetIntegrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIntegrationRequestBuilder toBuilder() =>
      new GetIntegrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIntegrationRequest &&
        httpMethod == other.httpMethod &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIntegrationRequestBuilder
    implements Builder<GetIntegrationRequest, GetIntegrationRequestBuilder> {
  _$GetIntegrationRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetIntegrationRequestBuilder() {
    GetIntegrationRequest._init(this);
  }

  GetIntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIntegrationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIntegrationRequest;
  }

  @override
  void update(void Function(GetIntegrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIntegrationRequest build() => _build();

  _$GetIntegrationRequest _build() {
    final _$result = _$v ??
        new _$GetIntegrationRequest._(
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'GetIntegrationRequest', 'httpMethod'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetIntegrationRequest', 'resourceId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetIntegrationRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetIntegrationRequestPayload extends GetIntegrationRequestPayload {
  factory _$GetIntegrationRequestPayload(
          [void Function(GetIntegrationRequestPayloadBuilder)? updates]) =>
      (new GetIntegrationRequestPayloadBuilder()..update(updates))._build();

  _$GetIntegrationRequestPayload._() : super._();

  @override
  GetIntegrationRequestPayload rebuild(
          void Function(GetIntegrationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIntegrationRequestPayloadBuilder toBuilder() =>
      new GetIntegrationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIntegrationRequestPayload;
  }

  @override
  int get hashCode {
    return 728447479;
  }
}

class GetIntegrationRequestPayloadBuilder
    implements
        Builder<GetIntegrationRequestPayload,
            GetIntegrationRequestPayloadBuilder> {
  _$GetIntegrationRequestPayload? _$v;

  GetIntegrationRequestPayloadBuilder() {
    GetIntegrationRequestPayload._init(this);
  }

  @override
  void replace(GetIntegrationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIntegrationRequestPayload;
  }

  @override
  void update(void Function(GetIntegrationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIntegrationRequestPayload build() => _build();

  _$GetIntegrationRequestPayload _build() {
    final _$result = _$v ?? new _$GetIntegrationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
