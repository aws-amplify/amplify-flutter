// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_integration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutIntegrationRequest extends PutIntegrationRequest {
  @override
  final _i7.BuiltList<String>? cacheKeyParameters;
  @override
  final String? cacheNamespace;
  @override
  final String? connectionId;
  @override
  final _i3.ConnectionType? connectionType;
  @override
  final _i4.ContentHandlingStrategy? contentHandling;
  @override
  final String? credentials;
  @override
  final String httpMethod;
  @override
  final String? integrationHttpMethod;
  @override
  final String? passthroughBehavior;
  @override
  final _i7.BuiltMap<String, String>? requestParameters;
  @override
  final _i7.BuiltMap<String, String>? requestTemplates;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final int? timeoutInMillis;
  @override
  final _i5.TlsConfig? tlsConfig;
  @override
  final _i6.IntegrationType type;
  @override
  final String? uri;

  factory _$PutIntegrationRequest(
          [void Function(PutIntegrationRequestBuilder)? updates]) =>
      (new PutIntegrationRequestBuilder()..update(updates))._build();

  _$PutIntegrationRequest._(
      {this.cacheKeyParameters,
      this.cacheNamespace,
      this.connectionId,
      this.connectionType,
      this.contentHandling,
      this.credentials,
      required this.httpMethod,
      this.integrationHttpMethod,
      this.passthroughBehavior,
      this.requestParameters,
      this.requestTemplates,
      required this.resourceId,
      required this.restApiId,
      this.timeoutInMillis,
      this.tlsConfig,
      required this.type,
      this.uri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutIntegrationRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutIntegrationRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutIntegrationRequest', 'restApiId');
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
        cacheKeyParameters == other.cacheKeyParameters &&
        cacheNamespace == other.cacheNamespace &&
        connectionId == other.connectionId &&
        connectionType == other.connectionType &&
        contentHandling == other.contentHandling &&
        credentials == other.credentials &&
        httpMethod == other.httpMethod &&
        integrationHttpMethod == other.integrationHttpMethod &&
        passthroughBehavior == other.passthroughBehavior &&
        requestParameters == other.requestParameters &&
        requestTemplates == other.requestTemplates &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
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
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, integrationHttpMethod.hashCode);
    _$hash = $jc(_$hash, passthroughBehavior.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestTemplates.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, timeoutInMillis.hashCode);
    _$hash = $jc(_$hash, tlsConfig.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationRequestBuilder
    implements Builder<PutIntegrationRequest, PutIntegrationRequestBuilder> {
  _$PutIntegrationRequest? _$v;

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

  _i3.ConnectionType? _connectionType;
  _i3.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i3.ConnectionType? connectionType) =>
      _$this._connectionType = connectionType;

  _i4.ContentHandlingStrategy? _contentHandling;
  _i4.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i4.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  String? _credentials;
  String? get credentials => _$this._credentials;
  set credentials(String? credentials) => _$this._credentials = credentials;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

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

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  int? _timeoutInMillis;
  int? get timeoutInMillis => _$this._timeoutInMillis;
  set timeoutInMillis(int? timeoutInMillis) =>
      _$this._timeoutInMillis = timeoutInMillis;

  _i5.TlsConfigBuilder? _tlsConfig;
  _i5.TlsConfigBuilder get tlsConfig =>
      _$this._tlsConfig ??= new _i5.TlsConfigBuilder();
  set tlsConfig(_i5.TlsConfigBuilder? tlsConfig) =>
      _$this._tlsConfig = tlsConfig;

  _i6.IntegrationType? _type;
  _i6.IntegrationType? get type => _$this._type;
  set type(_i6.IntegrationType? type) => _$this._type = type;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  PutIntegrationRequestBuilder() {
    PutIntegrationRequest._init(this);
  }

  PutIntegrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheKeyParameters = $v.cacheKeyParameters?.toBuilder();
      _cacheNamespace = $v.cacheNamespace;
      _connectionId = $v.connectionId;
      _connectionType = $v.connectionType;
      _contentHandling = $v.contentHandling;
      _credentials = $v.credentials;
      _httpMethod = $v.httpMethod;
      _integrationHttpMethod = $v.integrationHttpMethod;
      _passthroughBehavior = $v.passthroughBehavior;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestTemplates = $v.requestTemplates?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _timeoutInMillis = $v.timeoutInMillis;
      _tlsConfig = $v.tlsConfig?.toBuilder();
      _type = $v.type;
      _uri = $v.uri;
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
              cacheKeyParameters: _cacheKeyParameters?.build(),
              cacheNamespace: cacheNamespace,
              connectionId: connectionId,
              connectionType: connectionType,
              contentHandling: contentHandling,
              credentials: credentials,
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutIntegrationRequest', 'httpMethod'),
              integrationHttpMethod: integrationHttpMethod,
              passthroughBehavior: passthroughBehavior,
              requestParameters: _requestParameters?.build(),
              requestTemplates: _requestTemplates?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutIntegrationRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutIntegrationRequest', 'restApiId'),
              timeoutInMillis: timeoutInMillis,
              tlsConfig: _tlsConfig?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'PutIntegrationRequest', 'type'),
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
  final _i3.ConnectionType? connectionType;
  @override
  final _i4.ContentHandlingStrategy? contentHandling;
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
  final _i5.TlsConfig? tlsConfig;
  @override
  final _i6.IntegrationType type;
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

  _i3.ConnectionType? _connectionType;
  _i3.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i3.ConnectionType? connectionType) =>
      _$this._connectionType = connectionType;

  _i4.ContentHandlingStrategy? _contentHandling;
  _i4.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i4.ContentHandlingStrategy? contentHandling) =>
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

  _i5.TlsConfigBuilder? _tlsConfig;
  _i5.TlsConfigBuilder get tlsConfig =>
      _$this._tlsConfig ??= new _i5.TlsConfigBuilder();
  set tlsConfig(_i5.TlsConfigBuilder? tlsConfig) =>
      _$this._tlsConfig = tlsConfig;

  _i6.IntegrationType? _type;
  _i6.IntegrationType? get type => _$this._type;
  set type(_i6.IntegrationType? type) => _$this._type = type;

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
