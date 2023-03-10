// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.integration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Integration extends Integration {
  @override
  final _i7.BuiltList<String>? cacheKeyParameters;
  @override
  final String? cacheNamespace;
  @override
  final String? connectionId;
  @override
  final _i2.ConnectionType? connectionType;
  @override
  final _i3.ContentHandlingStrategy? contentHandling;
  @override
  final String? credentials;
  @override
  final String? httpMethod;
  @override
  final _i7.BuiltMap<String, _i4.IntegrationResponse>? integrationResponses;
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
  final _i6.IntegrationType? type;
  @override
  final String? uri;

  factory _$Integration([void Function(IntegrationBuilder)? updates]) =>
      (new IntegrationBuilder()..update(updates))._build();

  _$Integration._(
      {this.cacheKeyParameters,
      this.cacheNamespace,
      this.connectionId,
      this.connectionType,
      this.contentHandling,
      this.credentials,
      this.httpMethod,
      this.integrationResponses,
      this.passthroughBehavior,
      this.requestParameters,
      this.requestTemplates,
      this.timeoutInMillis,
      this.tlsConfig,
      this.type,
      this.uri})
      : super._();

  @override
  Integration rebuild(void Function(IntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationBuilder toBuilder() => new IntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Integration &&
        cacheKeyParameters == other.cacheKeyParameters &&
        cacheNamespace == other.cacheNamespace &&
        connectionId == other.connectionId &&
        connectionType == other.connectionType &&
        contentHandling == other.contentHandling &&
        credentials == other.credentials &&
        httpMethod == other.httpMethod &&
        integrationResponses == other.integrationResponses &&
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
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, integrationResponses.hashCode);
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

class IntegrationBuilder implements Builder<Integration, IntegrationBuilder> {
  _$Integration? _$v;

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

  _i2.ConnectionType? _connectionType;
  _i2.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i2.ConnectionType? connectionType) =>
      _$this._connectionType = connectionType;

  _i3.ContentHandlingStrategy? _contentHandling;
  _i3.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i3.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  String? _credentials;
  String? get credentials => _$this._credentials;
  set credentials(String? credentials) => _$this._credentials = credentials;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  _i7.MapBuilder<String, _i4.IntegrationResponse>? _integrationResponses;
  _i7.MapBuilder<String, _i4.IntegrationResponse> get integrationResponses =>
      _$this._integrationResponses ??=
          new _i7.MapBuilder<String, _i4.IntegrationResponse>();
  set integrationResponses(
          _i7.MapBuilder<String, _i4.IntegrationResponse>?
              integrationResponses) =>
      _$this._integrationResponses = integrationResponses;

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

  IntegrationBuilder() {
    Integration._init(this);
  }

  IntegrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cacheKeyParameters = $v.cacheKeyParameters?.toBuilder();
      _cacheNamespace = $v.cacheNamespace;
      _connectionId = $v.connectionId;
      _connectionType = $v.connectionType;
      _contentHandling = $v.contentHandling;
      _credentials = $v.credentials;
      _httpMethod = $v.httpMethod;
      _integrationResponses = $v.integrationResponses?.toBuilder();
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
  void replace(Integration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Integration;
  }

  @override
  void update(void Function(IntegrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Integration build() => _build();

  _$Integration _build() {
    _$Integration _$result;
    try {
      _$result = _$v ??
          new _$Integration._(
              cacheKeyParameters: _cacheKeyParameters?.build(),
              cacheNamespace: cacheNamespace,
              connectionId: connectionId,
              connectionType: connectionType,
              contentHandling: contentHandling,
              credentials: credentials,
              httpMethod: httpMethod,
              integrationResponses: _integrationResponses?.build(),
              passthroughBehavior: passthroughBehavior,
              requestParameters: _requestParameters?.build(),
              requestTemplates: _requestTemplates?.build(),
              timeoutInMillis: timeoutInMillis,
              tlsConfig: _tlsConfig?.build(),
              type: type,
              uri: uri);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cacheKeyParameters';
        _cacheKeyParameters?.build();

        _$failedField = 'integrationResponses';
        _integrationResponses?.build();

        _$failedField = 'requestParameters';
        _requestParameters?.build();
        _$failedField = 'requestTemplates';
        _requestTemplates?.build();

        _$failedField = 'tlsConfig';
        _tlsConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Integration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
