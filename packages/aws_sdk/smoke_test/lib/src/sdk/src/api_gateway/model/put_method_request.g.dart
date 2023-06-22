// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_method_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutMethodRequest extends PutMethodRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String authorizationType;
  @override
  final String? authorizerId;
  @override
  final bool apiKeyRequired;
  @override
  final String? operationName;
  @override
  final _i3.BuiltMap<String, bool>? requestParameters;
  @override
  final _i3.BuiltMap<String, String>? requestModels;
  @override
  final String? requestValidatorId;
  @override
  final _i3.BuiltList<String>? authorizationScopes;

  factory _$PutMethodRequest(
          [void Function(PutMethodRequestBuilder)? updates]) =>
      (new PutMethodRequestBuilder()..update(updates))._build();

  _$PutMethodRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.authorizationType,
      this.authorizerId,
      required this.apiKeyRequired,
      this.operationName,
      this.requestParameters,
      this.requestModels,
      this.requestValidatorId,
      this.authorizationScopes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutMethodRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        authorizationType, r'PutMethodRequest', 'authorizationType');
    BuiltValueNullFieldError.checkNotNull(
        apiKeyRequired, r'PutMethodRequest', 'apiKeyRequired');
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
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        authorizationType == other.authorizationType &&
        authorizerId == other.authorizerId &&
        apiKeyRequired == other.apiKeyRequired &&
        operationName == other.operationName &&
        requestParameters == other.requestParameters &&
        requestModels == other.requestModels &&
        requestValidatorId == other.requestValidatorId &&
        authorizationScopes == other.authorizationScopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestModels.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jc(_$hash, authorizationScopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutMethodRequestBuilder
    implements Builder<PutMethodRequest, PutMethodRequestBuilder> {
  _$PutMethodRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _authorizationType;
  String? get authorizationType => _$this._authorizationType;
  set authorizationType(String? authorizationType) =>
      _$this._authorizationType = authorizationType;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  _i3.MapBuilder<String, bool>? _requestParameters;
  _i3.MapBuilder<String, bool> get requestParameters =>
      _$this._requestParameters ??= new _i3.MapBuilder<String, bool>();
  set requestParameters(_i3.MapBuilder<String, bool>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  _i3.MapBuilder<String, String>? _requestModels;
  _i3.MapBuilder<String, String> get requestModels =>
      _$this._requestModels ??= new _i3.MapBuilder<String, String>();
  set requestModels(_i3.MapBuilder<String, String>? requestModels) =>
      _$this._requestModels = requestModels;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  _i3.ListBuilder<String>? _authorizationScopes;
  _i3.ListBuilder<String> get authorizationScopes =>
      _$this._authorizationScopes ??= new _i3.ListBuilder<String>();
  set authorizationScopes(_i3.ListBuilder<String>? authorizationScopes) =>
      _$this._authorizationScopes = authorizationScopes;

  PutMethodRequestBuilder() {
    PutMethodRequest._init(this);
  }

  PutMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _authorizationType = $v.authorizationType;
      _authorizerId = $v.authorizerId;
      _apiKeyRequired = $v.apiKeyRequired;
      _operationName = $v.operationName;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestModels = $v.requestModels?.toBuilder();
      _requestValidatorId = $v.requestValidatorId;
      _authorizationScopes = $v.authorizationScopes?.toBuilder();
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
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutMethodRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutMethodRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutMethodRequest', 'httpMethod'),
              authorizationType: BuiltValueNullFieldError.checkNotNull(
                  authorizationType, r'PutMethodRequest', 'authorizationType'),
              authorizerId: authorizerId,
              apiKeyRequired: BuiltValueNullFieldError.checkNotNull(
                  apiKeyRequired, r'PutMethodRequest', 'apiKeyRequired'),
              operationName: operationName,
              requestParameters: _requestParameters?.build(),
              requestModels: _requestModels?.build(),
              requestValidatorId: requestValidatorId,
              authorizationScopes: _authorizationScopes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestParameters';
        _requestParameters?.build();
        _$failedField = 'requestModels';
        _requestModels?.build();

        _$failedField = 'authorizationScopes';
        _authorizationScopes?.build();
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
  final bool apiKeyRequired;
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
      {required this.apiKeyRequired,
      this.authorizationScopes,
      required this.authorizationType,
      this.authorizerId,
      this.operationName,
      this.requestModels,
      this.requestParameters,
      this.requestValidatorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKeyRequired, r'PutMethodRequestPayload', 'apiKeyRequired');
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
              apiKeyRequired: BuiltValueNullFieldError.checkNotNull(
                  apiKeyRequired, r'PutMethodRequestPayload', 'apiKeyRequired'),
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
