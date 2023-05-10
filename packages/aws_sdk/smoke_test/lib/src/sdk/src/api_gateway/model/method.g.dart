// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Method extends Method {
  @override
  final String? httpMethod;
  @override
  final String? authorizationType;
  @override
  final String? authorizerId;
  @override
  final bool? apiKeyRequired;
  @override
  final String? requestValidatorId;
  @override
  final String? operationName;
  @override
  final _i4.BuiltMap<String, bool>? requestParameters;
  @override
  final _i4.BuiltMap<String, String>? requestModels;
  @override
  final _i4.BuiltMap<String, _i2.MethodResponse>? methodResponses;
  @override
  final _i3.Integration? methodIntegration;
  @override
  final _i4.BuiltList<String>? authorizationScopes;

  factory _$Method([void Function(MethodBuilder)? updates]) =>
      (new MethodBuilder()..update(updates))._build();

  _$Method._(
      {this.httpMethod,
      this.authorizationType,
      this.authorizerId,
      this.apiKeyRequired,
      this.requestValidatorId,
      this.operationName,
      this.requestParameters,
      this.requestModels,
      this.methodResponses,
      this.methodIntegration,
      this.authorizationScopes})
      : super._();

  @override
  Method rebuild(void Function(MethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodBuilder toBuilder() => new MethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Method &&
        httpMethod == other.httpMethod &&
        authorizationType == other.authorizationType &&
        authorizerId == other.authorizerId &&
        apiKeyRequired == other.apiKeyRequired &&
        requestValidatorId == other.requestValidatorId &&
        operationName == other.operationName &&
        requestParameters == other.requestParameters &&
        requestModels == other.requestModels &&
        methodResponses == other.methodResponses &&
        methodIntegration == other.methodIntegration &&
        authorizationScopes == other.authorizationScopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestModels.hashCode);
    _$hash = $jc(_$hash, methodResponses.hashCode);
    _$hash = $jc(_$hash, methodIntegration.hashCode);
    _$hash = $jc(_$hash, authorizationScopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MethodBuilder implements Builder<Method, MethodBuilder> {
  _$Method? _$v;

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

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  _i4.MapBuilder<String, bool>? _requestParameters;
  _i4.MapBuilder<String, bool> get requestParameters =>
      _$this._requestParameters ??= new _i4.MapBuilder<String, bool>();
  set requestParameters(_i4.MapBuilder<String, bool>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  _i4.MapBuilder<String, String>? _requestModels;
  _i4.MapBuilder<String, String> get requestModels =>
      _$this._requestModels ??= new _i4.MapBuilder<String, String>();
  set requestModels(_i4.MapBuilder<String, String>? requestModels) =>
      _$this._requestModels = requestModels;

  _i4.MapBuilder<String, _i2.MethodResponse>? _methodResponses;
  _i4.MapBuilder<String, _i2.MethodResponse> get methodResponses =>
      _$this._methodResponses ??=
          new _i4.MapBuilder<String, _i2.MethodResponse>();
  set methodResponses(
          _i4.MapBuilder<String, _i2.MethodResponse>? methodResponses) =>
      _$this._methodResponses = methodResponses;

  _i3.IntegrationBuilder? _methodIntegration;
  _i3.IntegrationBuilder get methodIntegration =>
      _$this._methodIntegration ??= new _i3.IntegrationBuilder();
  set methodIntegration(_i3.IntegrationBuilder? methodIntegration) =>
      _$this._methodIntegration = methodIntegration;

  _i4.ListBuilder<String>? _authorizationScopes;
  _i4.ListBuilder<String> get authorizationScopes =>
      _$this._authorizationScopes ??= new _i4.ListBuilder<String>();
  set authorizationScopes(_i4.ListBuilder<String>? authorizationScopes) =>
      _$this._authorizationScopes = authorizationScopes;

  MethodBuilder() {
    Method._init(this);
  }

  MethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _authorizationType = $v.authorizationType;
      _authorizerId = $v.authorizerId;
      _apiKeyRequired = $v.apiKeyRequired;
      _requestValidatorId = $v.requestValidatorId;
      _operationName = $v.operationName;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestModels = $v.requestModels?.toBuilder();
      _methodResponses = $v.methodResponses?.toBuilder();
      _methodIntegration = $v.methodIntegration?.toBuilder();
      _authorizationScopes = $v.authorizationScopes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Method other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Method;
  }

  @override
  void update(void Function(MethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Method build() => _build();

  _$Method _build() {
    _$Method _$result;
    try {
      _$result = _$v ??
          new _$Method._(
              httpMethod: httpMethod,
              authorizationType: authorizationType,
              authorizerId: authorizerId,
              apiKeyRequired: apiKeyRequired,
              requestValidatorId: requestValidatorId,
              operationName: operationName,
              requestParameters: _requestParameters?.build(),
              requestModels: _requestModels?.build(),
              methodResponses: _methodResponses?.build(),
              methodIntegration: _methodIntegration?.build(),
              authorizationScopes: _authorizationScopes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestParameters';
        _requestParameters?.build();
        _$failedField = 'requestModels';
        _requestModels?.build();
        _$failedField = 'methodResponses';
        _methodResponses?.build();
        _$failedField = 'methodIntegration';
        _methodIntegration?.build();
        _$failedField = 'authorizationScopes';
        _authorizationScopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Method', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
