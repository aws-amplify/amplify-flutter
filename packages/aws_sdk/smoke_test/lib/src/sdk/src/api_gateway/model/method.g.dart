// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Method extends Method {
  @override
  final bool? apiKeyRequired;
  @override
  final _i4.BuiltList<String>? authorizationScopes;
  @override
  final String? authorizationType;
  @override
  final String? authorizerId;
  @override
  final String? httpMethod;
  @override
  final _i2.Integration? methodIntegration;
  @override
  final _i4.BuiltMap<String, _i3.MethodResponse>? methodResponses;
  @override
  final String? operationName;
  @override
  final _i4.BuiltMap<String, String>? requestModels;
  @override
  final _i4.BuiltMap<String, bool>? requestParameters;
  @override
  final String? requestValidatorId;

  factory _$Method([void Function(MethodBuilder)? updates]) =>
      (new MethodBuilder()..update(updates))._build();

  _$Method._(
      {this.apiKeyRequired,
      this.authorizationScopes,
      this.authorizationType,
      this.authorizerId,
      this.httpMethod,
      this.methodIntegration,
      this.methodResponses,
      this.operationName,
      this.requestModels,
      this.requestParameters,
      this.requestValidatorId})
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
        apiKeyRequired == other.apiKeyRequired &&
        authorizationScopes == other.authorizationScopes &&
        authorizationType == other.authorizationType &&
        authorizerId == other.authorizerId &&
        httpMethod == other.httpMethod &&
        methodIntegration == other.methodIntegration &&
        methodResponses == other.methodResponses &&
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
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, methodIntegration.hashCode);
    _$hash = $jc(_$hash, methodResponses.hashCode);
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, requestModels.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MethodBuilder implements Builder<Method, MethodBuilder> {
  _$Method? _$v;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  _i4.ListBuilder<String>? _authorizationScopes;
  _i4.ListBuilder<String> get authorizationScopes =>
      _$this._authorizationScopes ??= new _i4.ListBuilder<String>();
  set authorizationScopes(_i4.ListBuilder<String>? authorizationScopes) =>
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

  _i2.IntegrationBuilder? _methodIntegration;
  _i2.IntegrationBuilder get methodIntegration =>
      _$this._methodIntegration ??= new _i2.IntegrationBuilder();
  set methodIntegration(_i2.IntegrationBuilder? methodIntegration) =>
      _$this._methodIntegration = methodIntegration;

  _i4.MapBuilder<String, _i3.MethodResponse>? _methodResponses;
  _i4.MapBuilder<String, _i3.MethodResponse> get methodResponses =>
      _$this._methodResponses ??=
          new _i4.MapBuilder<String, _i3.MethodResponse>();
  set methodResponses(
          _i4.MapBuilder<String, _i3.MethodResponse>? methodResponses) =>
      _$this._methodResponses = methodResponses;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  _i4.MapBuilder<String, String>? _requestModels;
  _i4.MapBuilder<String, String> get requestModels =>
      _$this._requestModels ??= new _i4.MapBuilder<String, String>();
  set requestModels(_i4.MapBuilder<String, String>? requestModels) =>
      _$this._requestModels = requestModels;

  _i4.MapBuilder<String, bool>? _requestParameters;
  _i4.MapBuilder<String, bool> get requestParameters =>
      _$this._requestParameters ??= new _i4.MapBuilder<String, bool>();
  set requestParameters(_i4.MapBuilder<String, bool>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  MethodBuilder() {
    Method._init(this);
  }

  MethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeyRequired = $v.apiKeyRequired;
      _authorizationScopes = $v.authorizationScopes?.toBuilder();
      _authorizationType = $v.authorizationType;
      _authorizerId = $v.authorizerId;
      _httpMethod = $v.httpMethod;
      _methodIntegration = $v.methodIntegration?.toBuilder();
      _methodResponses = $v.methodResponses?.toBuilder();
      _operationName = $v.operationName;
      _requestModels = $v.requestModels?.toBuilder();
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestValidatorId = $v.requestValidatorId;
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
              apiKeyRequired: apiKeyRequired,
              authorizationScopes: _authorizationScopes?.build(),
              authorizationType: authorizationType,
              authorizerId: authorizerId,
              httpMethod: httpMethod,
              methodIntegration: _methodIntegration?.build(),
              methodResponses: _methodResponses?.build(),
              operationName: operationName,
              requestModels: _requestModels?.build(),
              requestParameters: _requestParameters?.build(),
              requestValidatorId: requestValidatorId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationScopes';
        _authorizationScopes?.build();

        _$failedField = 'methodIntegration';
        _methodIntegration?.build();
        _$failedField = 'methodResponses';
        _methodResponses?.build();

        _$failedField = 'requestModels';
        _requestModels?.build();
        _$failedField = 'requestParameters';
        _requestParameters?.build();
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
