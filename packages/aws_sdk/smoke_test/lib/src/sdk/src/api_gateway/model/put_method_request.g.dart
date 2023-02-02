// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutMethodRequest extends PutMethodRequest {
  @override
  final bool? apiKeyRequired;
  @override
  final _i3.BuiltList<String>? authorizationScopes;
  @override
  final String authorizationType;
  @override
  final String? authorizerId;
  @override
  final String httpMethod;
  @override
  final String? operationName;
  @override
  final _i3.BuiltMap<String, String>? requestModels;
  @override
  final _i3.BuiltMap<String, bool>? requestParameters;
  @override
  final String? requestValidatorId;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$PutMethodRequest(
          [void Function(PutMethodRequestBuilder)? updates]) =>
      (new PutMethodRequestBuilder()..update(updates))._build();

  _$PutMethodRequest._(
      {this.apiKeyRequired,
      this.authorizationScopes,
      required this.authorizationType,
      this.authorizerId,
      required this.httpMethod,
      this.operationName,
      this.requestModels,
      this.requestParameters,
      this.requestValidatorId,
      required this.resourceId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizationType, r'PutMethodRequest', 'authorizationType');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutMethodRequest', 'restApiId');
  }

  @override
  PutMethodRequest rebuild(void Function(PutMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutMethodRequestBuilder toBuilder() =>
      new PutMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutMethodRequest &&
        apiKeyRequired == other.apiKeyRequired &&
        authorizationScopes == other.authorizationScopes &&
        authorizationType == other.authorizationType &&
        authorizerId == other.authorizerId &&
        httpMethod == other.httpMethod &&
        operationName == other.operationName &&
        requestModels == other.requestModels &&
        requestParameters == other.requestParameters &&
        requestValidatorId == other.requestValidatorId &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jc(_$hash, authorizationScopes.hashCode);
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, requestModels.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutMethodRequestBuilder
    implements Builder<PutMethodRequest, PutMethodRequestBuilder> {
  _$PutMethodRequest? _$v;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  _i3.ListBuilder<String>? _authorizationScopes;
  _i3.ListBuilder<String> get authorizationScopes =>
      _$this._authorizationScopes ??= new _i3.ListBuilder<String>();
  set authorizationScopes(_i3.ListBuilder<String>? authorizationScopes) =>
      _$this._authorizationScopes = authorizationScopes;

  String? _authorizationType;
  String? get authorizationType => _$this._authorizationType;
  set authorizationType(String? authorizationType) =>
      _$this._authorizationType = authorizationType;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  _i3.MapBuilder<String, String>? _requestModels;
  _i3.MapBuilder<String, String> get requestModels =>
      _$this._requestModels ??= new _i3.MapBuilder<String, String>();
  set requestModels(_i3.MapBuilder<String, String>? requestModels) =>
      _$this._requestModels = requestModels;

  _i3.MapBuilder<String, bool>? _requestParameters;
  _i3.MapBuilder<String, bool> get requestParameters =>
      _$this._requestParameters ??= new _i3.MapBuilder<String, bool>();
  set requestParameters(_i3.MapBuilder<String, bool>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  PutMethodRequestBuilder() {
    PutMethodRequest._init(this);
  }

  PutMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeyRequired = $v.apiKeyRequired;
      _authorizationScopes = $v.authorizationScopes?.toBuilder();
      _authorizationType = $v.authorizationType;
      _authorizerId = $v.authorizerId;
      _httpMethod = $v.httpMethod;
      _operationName = $v.operationName;
      _requestModels = $v.requestModels?.toBuilder();
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestValidatorId = $v.requestValidatorId;
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutMethodRequest;
  }

  @override
  void update(void Function(PutMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutMethodRequest build() => _build();

  _$PutMethodRequest _build() {
    _$PutMethodRequest _$result;
    try {
      _$result = _$v ??
          new _$PutMethodRequest._(
              apiKeyRequired: apiKeyRequired,
              authorizationScopes: _authorizationScopes?.build(),
              authorizationType: BuiltValueNullFieldError.checkNotNull(
                  authorizationType, r'PutMethodRequest', 'authorizationType'),
              authorizerId: authorizerId,
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutMethodRequest', 'httpMethod'),
              operationName: operationName,
              requestModels: _requestModels?.build(),
              requestParameters: _requestParameters?.build(),
              requestValidatorId: requestValidatorId,
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutMethodRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutMethodRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationScopes';
        _authorizationScopes?.build();

        _$failedField = 'requestModels';
        _requestModels?.build();
        _$failedField = 'requestParameters';
        _requestParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutMethodRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PutMethodRequestPayload extends PutMethodRequestPayload {
  @override
  final bool? apiKeyRequired;
  @override
  final _i3.BuiltList<String>? authorizationScopes;
  @override
  final String authorizationType;
  @override
  final String? authorizerId;
  @override
  final String? operationName;
  @override
  final _i3.BuiltMap<String, String>? requestModels;
  @override
  final _i3.BuiltMap<String, bool>? requestParameters;
  @override
  final String? requestValidatorId;

  factory _$PutMethodRequestPayload(
          [void Function(PutMethodRequestPayloadBuilder)? updates]) =>
      (new PutMethodRequestPayloadBuilder()..update(updates))._build();

  _$PutMethodRequestPayload._(
      {this.apiKeyRequired,
      this.authorizationScopes,
      required this.authorizationType,
      this.authorizerId,
      this.operationName,
      this.requestModels,
      this.requestParameters,
      this.requestValidatorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizationType, r'PutMethodRequestPayload', 'authorizationType');
  }

  @override
  PutMethodRequestPayload rebuild(
          void Function(PutMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutMethodRequestPayloadBuilder toBuilder() =>
      new PutMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutMethodRequestPayload &&
        apiKeyRequired == other.apiKeyRequired &&
        authorizationScopes == other.authorizationScopes &&
        authorizationType == other.authorizationType &&
        authorizerId == other.authorizerId &&
        operationName == other.operationName &&
        requestModels == other.requestModels &&
        requestParameters == other.requestParameters &&
        requestValidatorId == other.requestValidatorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jc(_$hash, authorizationScopes.hashCode);
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, requestModels.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutMethodRequestPayloadBuilder
    implements
        Builder<PutMethodRequestPayload, PutMethodRequestPayloadBuilder> {
  _$PutMethodRequestPayload? _$v;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  _i3.ListBuilder<String>? _authorizationScopes;
  _i3.ListBuilder<String> get authorizationScopes =>
      _$this._authorizationScopes ??= new _i3.ListBuilder<String>();
  set authorizationScopes(_i3.ListBuilder<String>? authorizationScopes) =>
      _$this._authorizationScopes = authorizationScopes;

  String? _authorizationType;
  String? get authorizationType => _$this._authorizationType;
  set authorizationType(String? authorizationType) =>
      _$this._authorizationType = authorizationType;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  _i3.MapBuilder<String, String>? _requestModels;
  _i3.MapBuilder<String, String> get requestModels =>
      _$this._requestModels ??= new _i3.MapBuilder<String, String>();
  set requestModels(_i3.MapBuilder<String, String>? requestModels) =>
      _$this._requestModels = requestModels;

  _i3.MapBuilder<String, bool>? _requestParameters;
  _i3.MapBuilder<String, bool> get requestParameters =>
      _$this._requestParameters ??= new _i3.MapBuilder<String, bool>();
  set requestParameters(_i3.MapBuilder<String, bool>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  PutMethodRequestPayloadBuilder() {
    PutMethodRequestPayload._init(this);
  }

  PutMethodRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeyRequired = $v.apiKeyRequired;
      _authorizationScopes = $v.authorizationScopes?.toBuilder();
      _authorizationType = $v.authorizationType;
      _authorizerId = $v.authorizerId;
      _operationName = $v.operationName;
      _requestModels = $v.requestModels?.toBuilder();
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestValidatorId = $v.requestValidatorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutMethodRequestPayload;
  }

  @override
  void update(void Function(PutMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutMethodRequestPayload build() => _build();

  _$PutMethodRequestPayload _build() {
    _$PutMethodRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$PutMethodRequestPayload._(
              apiKeyRequired: apiKeyRequired,
              authorizationScopes: _authorizationScopes?.build(),
              authorizationType: BuiltValueNullFieldError.checkNotNull(
                  authorizationType,
                  r'PutMethodRequestPayload',
                  'authorizationType'),
              authorizerId: authorizerId,
              operationName: operationName,
              requestModels: _requestModels?.build(),
              requestParameters: _requestParameters?.build(),
              requestValidatorId: requestValidatorId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationScopes';
        _authorizationScopes?.build();

        _$failedField = 'requestModels';
        _requestModels?.build();
        _$failedField = 'requestParameters';
        _requestParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutMethodRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
