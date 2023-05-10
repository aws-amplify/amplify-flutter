// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_method_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMethodResponseRequest extends GetMethodResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;

  factory _$GetMethodResponseRequest(
          [void Function(GetMethodResponseRequestBuilder)? updates]) =>
      (new GetMethodResponseRequestBuilder()..update(updates))._build();

  _$GetMethodResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetMethodResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetMethodResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'GetMethodResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'GetMethodResponseRequest', 'statusCode');
  }

  @override
  GetMethodResponseRequest rebuild(
          void Function(GetMethodResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodResponseRequestBuilder toBuilder() =>
      new GetMethodResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodResponseRequest &&
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

class GetMethodResponseRequestBuilder
    implements
        Builder<GetMethodResponseRequest, GetMethodResponseRequestBuilder> {
  _$GetMethodResponseRequest? _$v;

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

  GetMethodResponseRequestBuilder() {
    GetMethodResponseRequest._init(this);
  }

  GetMethodResponseRequestBuilder get _$this {
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
  void replace(GetMethodResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodResponseRequest;
  }

  @override
  void update(void Function(GetMethodResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodResponseRequest build() => _build();

  _$GetMethodResponseRequest _build() {
    final _$result = _$v ??
        new _$GetMethodResponseRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetMethodResponseRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetMethodResponseRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'GetMethodResponseRequest', 'httpMethod'),
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'GetMethodResponseRequest', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

class _$GetMethodResponseRequestPayload
    extends GetMethodResponseRequestPayload {
  factory _$GetMethodResponseRequestPayload(
          [void Function(GetMethodResponseRequestPayloadBuilder)? updates]) =>
      (new GetMethodResponseRequestPayloadBuilder()..update(updates))._build();

  _$GetMethodResponseRequestPayload._() : super._();

  @override
  GetMethodResponseRequestPayload rebuild(
          void Function(GetMethodResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodResponseRequestPayloadBuilder toBuilder() =>
      new GetMethodResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 547092290;
  }
}

class GetMethodResponseRequestPayloadBuilder
    implements
        Builder<GetMethodResponseRequestPayload,
            GetMethodResponseRequestPayloadBuilder> {
  _$GetMethodResponseRequestPayload? _$v;

  GetMethodResponseRequestPayloadBuilder() {
    GetMethodResponseRequestPayload._init(this);
  }

  @override
  void replace(GetMethodResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodResponseRequestPayload;
  }

  @override
  void update(void Function(GetMethodResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodResponseRequestPayload build() => _build();

  _$GetMethodResponseRequestPayload _build() {
    final _$result = _$v ?? new _$GetMethodResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
