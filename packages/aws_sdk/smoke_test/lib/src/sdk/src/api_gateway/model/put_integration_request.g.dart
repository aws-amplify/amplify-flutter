// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_integration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutIntegrationRequest extends PutIntegrationRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final _i3.IntegrationType type;
  @override
  final String? integrationHttpMethod;
  @override
  final String? uri;
  @override
  final _i4.ConnectionType? connectionType;
  @override
  final String? connectionId;
  @override
  final String? credentials;
  @override
  final _i7.BuiltMap<String, String>? requestParameters;
  @override
  final _i7.BuiltMap<String, String>? requestTemplates;
  @override
  final String? passthroughBehavior;
  @override
  final String? cacheNamespace;
  @override
  final _i7.BuiltList<String>? cacheKeyParameters;
  @override
  final _i5.ContentHandlingStrategy? contentHandling;
  @override
  final int? timeoutInMillis;
  @override
  final _i6.TlsConfig? tlsConfig;

  factory _$PutIntegrationRequest(
          [void Function(PutIntegrationRequestBuilder)? updates]) =>
      (new PutIntegrationRequestBuilder()..update(updates))._build();

  _$PutIntegrationRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.type,
      this.integrationHttpMethod,
      this.uri,
      this.connectionType,
      this.connectionId,
      this.credentials,
      this.requestParameters,
      this.requestTemplates,
      this.passthroughBehavior,
      this.cacheNamespace,
      this.cacheKeyParameters,
      this.contentHandling,
      this.timeoutInMillis,
      this.tlsConfig})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutIntegrationRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutIntegrationRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutIntegrationRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        type, r'PutIntegrationRequest', 'type');
  }

  @override
  PutIntegrationRequest rebuild(
          void Function(PutIntegrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutIntegrationRequestBuilder toBuilder() =>
      new PutIntegrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutIntegrationRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        type == other.type &&
        integrationHttpMethod == other.integrationHttpMethod &&
        uri == other.uri &&
        connectionType == other.connectionType &&
        connectionId == other.connectionId &&
        credentials == other.credentials &&
        requestParameters == other.requestParameters &&
        requestTemplates == other.requestTemplates &&
        passthroughBehavior == other.passthroughBehavior &&
        cacheNamespace == other.cacheNamespace &&
        cacheKeyParameters == other.cacheKeyParameters &&
        contentHandling == other.contentHandling &&
        timeoutInMillis == other.timeoutInMillis &&
        tlsConfig == other.tlsConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, integrationHttpMethod.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, connectionType.hashCode);
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestTemplates.hashCode);
    _$hash = $jc(_$hash, passthroughBehavior.hashCode);
    _$hash = $jc(_$hash, cacheNamespace.hashCode);
    _$hash = $jc(_$hash, cacheKeyParameters.hashCode);
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jc(_$hash, timeoutInMillis.hashCode);
    _$hash = $jc(_$hash, tlsConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationRequestBuilder
    implements Builder<PutIntegrationRequest, PutIntegrationRequestBuilder> {
  _$PutIntegrationRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  _i3.IntegrationType? _type;
  _i3.IntegrationType? get type => _$this._type;
  set type(_i3.IntegrationType? type) => _$this._type = type;

  String? _integrationHttpMethod;
  String? get integrationHttpMethod => _$this._integrationHttpMethod;
  set integrationHttpMethod(String? integrationHttpMethod) =>
      _$this._integrationHttpMethod = integrationHttpMethod;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  _i4.ConnectionType? _connectionType;
  _i4.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i4.ConnectionType? connectionType) =>
      _$this._connectionType = connectionType;

  String? _connectionId;
  String? get connectionId => _$this._connectionId;
  set connectionId(String? connectionId) => _$this._connectionId = connectionId;

  String? _credentials;
  String? get credentials => _$this._credentials;
  set credentials(String? credentials) => _$this._credentials = credentials;

  _i7.MapBuilder<String, String>? _requestParameters;
  _i7.MapBuilder<String, String> get requestParameters =>
      _$this._requestParameters ??= new _i7.MapBuilder<String, String>();
  set requestParameters(_i7.MapBuilder<String, String>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  _i7.MapBuilder<String, String>? _requestTemplates;
  _i7.MapBuilder<String, String> get requestTemplates =>
      _$this._requestTemplates ??= new _i7.MapBuilder<String, String>();
  set requestTemplates(_i7.MapBuilder<String, String>? requestTemplates) =>
      _$this._requestTemplates = requestTemplates;

  String? _passthroughBehavior;
  String? get passthroughBehavior => _$this._passthroughBehavior;
  set passthroughBehavior(String? passthroughBehavior) =>
      _$this._passthroughBehavior = passthroughBehavior;

  String? _cacheNamespace;
  String? get cacheNamespace => _$this._cacheNamespace;
  set cacheNamespace(String? cacheNamespace) =>
      _$this._cacheNamespace = cacheNamespace;

  _i7.ListBuilder<String>? _cacheKeyParameters;
  _i7.ListBuilder<String> get cacheKeyParameters =>
      _$this._cacheKeyParameters ??= new _i7.ListBuilder<String>();
  set cacheKeyParameters(_i7.ListBuilder<String>? cacheKeyParameters) =>
      _$this._cacheKeyParameters = cacheKeyParameters;

  _i5.ContentHandlingStrategy? _contentHandling;
  _i5.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i5.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  int? _timeoutInMillis;
  int? get timeoutInMillis => _$this._timeoutInMillis;
  set timeoutInMillis(int? timeoutInMillis) =>
      _$this._timeoutInMillis = timeoutInMillis;

  _i6.TlsConfigBuilder? _tlsConfig;
  _i6.TlsConfigBuilder get tlsConfig =>
      _$this._tlsConfig ??= new _i6.TlsConfigBuilder();
  set tlsConfig(_i6.TlsConfigBuilder? tlsConfig) =>
      _$this._tlsConfig = tlsConfig;

  PutIntegrationRequestBuilder() {
    PutIntegrationRequest._init(this);
  }

  PutIntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _type = $v.type;
      _integrationHttpMethod = $v.integrationHttpMethod;
      _uri = $v.uri;
      _connectionType = $v.connectionType;
      _connectionId = $v.connectionId;
      _credentials = $v.credentials;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestTemplates = $v.requestTemplates?.toBuilder();
      _passthroughBehavior = $v.passthroughBehavior;
      _cacheNamespace = $v.cacheNamespace;
      _cacheKeyParameters = $v.cacheKeyParameters?.toBuilder();
      _contentHandling = $v.contentHandling;
      _timeoutInMillis = $v.timeoutInMillis;
      _tlsConfig = $v.tlsConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutIntegrationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutIntegrationRequest;
  }

  @override
  void update(void Function(PutIntegrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutIntegrationRequest build() => _build();

  _$PutIntegrationRequest _build() {
    _$PutIntegrationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutIntegrationRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutIntegrationRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutIntegrationRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutIntegrationRequest', 'httpMethod'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'PutIntegrationRequest', 'type'),
              integrationHttpMethod: integrationHttpMethod,
              uri: uri,
              connectionType: connectionType,
              connectionId: connectionId,
              credentials: credentials,
              requestParameters: _requestParameters?.build(),
              requestTemplates: _requestTemplates?.build(),
              passthroughBehavior: passthroughBehavior,
              cacheNamespace: cacheNamespace,
              cacheKeyParameters: _cacheKeyParameters?.build(),
              contentHandling: contentHandling,
              timeoutInMillis: timeoutInMillis,
              tlsConfig: _tlsConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestParameters';
        _requestParameters?.build();
        _$failedField = 'requestTemplates';
        _requestTemplates?.build();

        _$failedField = 'cacheKeyParameters';
        _cacheKeyParameters?.build();

        _$failedField = 'tlsConfig';
        _tlsConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutIntegrationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PutIntegrationRequestPayload extends PutIntegrationRequestPayload {
  @override
  final _i7.BuiltList<String>? cacheKeyParameters;
  @override
  final String? cacheNamespace;
  @override
  final String? connectionId;
  @override
  final _i4.ConnectionType? connectionType;
  @override
  final _i5.ContentHandlingStrategy? contentHandling;
  @override
  final String? credentials;
  @override
  final String? integrationHttpMethod;
  @override
  final String? passthroughBehavior;
  @override
  final _i7.BuiltMap<String, String>? requestParameters;
  @override
  final _i7.BuiltMap<String, String>? requestTemplates;
  @override
  final int? timeoutInMillis;
  @override
  final _i6.TlsConfig? tlsConfig;
  @override
  final _i3.IntegrationType type;
  @override
  final String? uri;

  factory _$PutIntegrationRequestPayload(
          [void Function(PutIntegrationRequestPayloadBuilder)? updates]) =>
      (new PutIntegrationRequestPayloadBuilder()..update(updates))._build();

  _$PutIntegrationRequestPayload._(
      {this.cacheKeyParameters,
      this.cacheNamespace,
      this.connectionId,
      this.connectionType,
      this.contentHandling,
      this.credentials,
      this.integrationHttpMethod,
      this.passthroughBehavior,
      this.requestParameters,
      this.requestTemplates,
      this.timeoutInMillis,
      this.tlsConfig,
      required this.type,
      this.uri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'PutIntegrationRequestPayload', 'type');
  }

  @override
  PutIntegrationRequestPayload rebuild(
          void Function(PutIntegrationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutIntegrationRequestPayloadBuilder toBuilder() =>
      new PutIntegrationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutIntegrationRequestPayload &&
        cacheKeyParameters == other.cacheKeyParameters &&
        cacheNamespace == other.cacheNamespace &&
        connectionId == other.connectionId &&
        connectionType == other.connectionType &&
        contentHandling == other.contentHandling &&
        credentials == other.credentials &&
        integrationHttpMethod == other.integrationHttpMethod &&
        passthroughBehavior == other.passthroughBehavior &&
        requestParameters == other.requestParameters &&
        requestTemplates == other.requestTemplates &&
        timeoutInMillis == other.timeoutInMillis &&
        tlsConfig == other.tlsConfig &&
        type == other.type &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cacheKeyParameters.hashCode);
    _$hash = $jc(_$hash, cacheNamespace.hashCode);
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, connectionType.hashCode);
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, integrationHttpMethod.hashCode);
    _$hash = $jc(_$hash, passthroughBehavior.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestTemplates.hashCode);
    _$hash = $jc(_$hash, timeoutInMillis.hashCode);
    _$hash = $jc(_$hash, tlsConfig.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationRequestPayloadBuilder
    implements
        Builder<PutIntegrationRequestPayload,
            PutIntegrationRequestPayloadBuilder> {
  _$PutIntegrationRequestPayload? _$v;

  _i7.ListBuilder<String>? _cacheKeyParameters;
  _i7.ListBuilder<String> get cacheKeyParameters =>
      _$this._cacheKeyParameters ??= new _i7.ListBuilder<String>();
  set cacheKeyParameters(_i7.ListBuilder<String>? cacheKeyParameters) =>
      _$this._cacheKeyParameters = cacheKeyParameters;

  String? _cacheNamespace;
  String? get cacheNamespace => _$this._cacheNamespace;
  set cacheNamespace(String? cacheNamespace) =>
      _$this._cacheNamespace = cacheNamespace;

  String? _connectionId;
  String? get connectionId => _$this._connectionId;
  set connectionId(String? connectionId) => _$this._connectionId = connectionId;

  _i4.ConnectionType? _connectionType;
  _i4.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i4.ConnectionType? connectionType) =>
      _$this._connectionType = connectionType;

  _i5.ContentHandlingStrategy? _contentHandling;
  _i5.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i5.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  String? _credentials;
  String? get credentials => _$this._credentials;
  set credentials(String? credentials) => _$this._credentials = credentials;

  String? _integrationHttpMethod;
  String? get integrationHttpMethod => _$this._integrationHttpMethod;
  set integrationHttpMethod(String? integrationHttpMethod) =>
      _$this._integrationHttpMethod = integrationHttpMethod;

  String? _passthroughBehavior;
  String? get passthroughBehavior => _$this._passthroughBehavior;
  set passthroughBehavior(String? passthroughBehavior) =>
      _$this._passthroughBehavior = passthroughBehavior;

  _i7.MapBuilder<String, String>? _requestParameters;
  _i7.MapBuilder<String, String> get requestParameters =>
      _$this._requestParameters ??= new _i7.MapBuilder<String, String>();
  set requestParameters(_i7.MapBuilder<String, String>? requestParameters) =>
      _$this._requestParameters = requestParameters;

  _i7.MapBuilder<String, String>? _requestTemplates;
  _i7.MapBuilder<String, String> get requestTemplates =>
      _$this._requestTemplates ??= new _i7.MapBuilder<String, String>();
  set requestTemplates(_i7.MapBuilder<String, String>? requestTemplates) =>
      _$this._requestTemplates = requestTemplates;

  int? _timeoutInMillis;
  int? get timeoutInMillis => _$this._timeoutInMillis;
  set timeoutInMillis(int? timeoutInMillis) =>
      _$this._timeoutInMillis = timeoutInMillis;

  _i6.TlsConfigBuilder? _tlsConfig;
  _i6.TlsConfigBuilder get tlsConfig =>
      _$this._tlsConfig ??= new _i6.TlsConfigBuilder();
  set tlsConfig(_i6.TlsConfigBuilder? tlsConfig) =>
      _$this._tlsConfig = tlsConfig;

  _i3.IntegrationType? _type;
  _i3.IntegrationType? get type => _$this._type;
  set type(_i3.IntegrationType? type) => _$this._type = type;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  PutIntegrationRequestPayloadBuilder() {
    PutIntegrationRequestPayload._init(this);
  }

  PutIntegrationRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheKeyParameters = $v.cacheKeyParameters?.toBuilder();
      _cacheNamespace = $v.cacheNamespace;
      _connectionId = $v.connectionId;
      _connectionType = $v.connectionType;
      _contentHandling = $v.contentHandling;
      _credentials = $v.credentials;
      _integrationHttpMethod = $v.integrationHttpMethod;
      _passthroughBehavior = $v.passthroughBehavior;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestTemplates = $v.requestTemplates?.toBuilder();
      _timeoutInMillis = $v.timeoutInMillis;
      _tlsConfig = $v.tlsConfig?.toBuilder();
      _type = $v.type;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutIntegrationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutIntegrationRequestPayload;
  }

  @override
  void update(void Function(PutIntegrationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutIntegrationRequestPayload build() => _build();

  _$PutIntegrationRequestPayload _build() {
    _$PutIntegrationRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$PutIntegrationRequestPayload._(
              cacheKeyParameters: _cacheKeyParameters?.build(),
              cacheNamespace: cacheNamespace,
              connectionId: connectionId,
              connectionType: connectionType,
              contentHandling: contentHandling,
              credentials: credentials,
              integrationHttpMethod: integrationHttpMethod,
              passthroughBehavior: passthroughBehavior,
              requestParameters: _requestParameters?.build(),
              requestTemplates: _requestTemplates?.build(),
              timeoutInMillis: timeoutInMillis,
              tlsConfig: _tlsConfig?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'PutIntegrationRequestPayload', 'type'),
              uri: uri);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cacheKeyParameters';
        _cacheKeyParameters?.build();

        _$failedField = 'requestParameters';
        _requestParameters?.build();
        _$failedField = 'requestTemplates';
        _requestTemplates?.build();

        _$failedField = 'tlsConfig';
        _tlsConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutIntegrationRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
