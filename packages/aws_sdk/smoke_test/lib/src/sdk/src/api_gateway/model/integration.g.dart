// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Integration extends Integration {
  @override
  final _i2.IntegrationType? type;
  @override
  final String? httpMethod;
  @override
  final String? uri;
  @override
  final _i3.ConnectionType? connectionType;
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
  final _i4.ContentHandlingStrategy? contentHandling;
  @override
  final int timeoutInMillis;
  @override
  final String? cacheNamespace;
  @override
  final _i7.BuiltList<String>? cacheKeyParameters;
  @override
  final _i7.BuiltMap<String, _i5.IntegrationResponse>? integrationResponses;
  @override
  final _i6.TlsConfig? tlsConfig;

  factory _$Integration([void Function(IntegrationBuilder)? updates]) =>
      (new IntegrationBuilder()..update(updates))._build();

  _$Integration._(
      {this.type,
      this.httpMethod,
      this.uri,
      this.connectionType,
      this.connectionId,
      this.credentials,
      this.requestParameters,
      this.requestTemplates,
      this.passthroughBehavior,
      this.contentHandling,
      required this.timeoutInMillis,
      this.cacheNamespace,
      this.cacheKeyParameters,
      this.integrationResponses,
      this.tlsConfig})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timeoutInMillis, r'Integration', 'timeoutInMillis');
  }

  @override
  Integration rebuild(void Function(IntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationBuilder toBuilder() => new IntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Integration &&
        type == other.type &&
        httpMethod == other.httpMethod &&
        uri == other.uri &&
        connectionType == other.connectionType &&
        connectionId == other.connectionId &&
        credentials == other.credentials &&
        requestParameters == other.requestParameters &&
        requestTemplates == other.requestTemplates &&
        passthroughBehavior == other.passthroughBehavior &&
        contentHandling == other.contentHandling &&
        timeoutInMillis == other.timeoutInMillis &&
        cacheNamespace == other.cacheNamespace &&
        cacheKeyParameters == other.cacheKeyParameters &&
        integrationResponses == other.integrationResponses &&
        tlsConfig == other.tlsConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, connectionType.hashCode);
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jc(_$hash, requestParameters.hashCode);
    _$hash = $jc(_$hash, requestTemplates.hashCode);
    _$hash = $jc(_$hash, passthroughBehavior.hashCode);
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jc(_$hash, timeoutInMillis.hashCode);
    _$hash = $jc(_$hash, cacheNamespace.hashCode);
    _$hash = $jc(_$hash, cacheKeyParameters.hashCode);
    _$hash = $jc(_$hash, integrationResponses.hashCode);
    _$hash = $jc(_$hash, tlsConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IntegrationBuilder implements Builder<Integration, IntegrationBuilder> {
  _$Integration? _$v;

  _i2.IntegrationType? _type;
  _i2.IntegrationType? get type => _$this._type;
  set type(_i2.IntegrationType? type) => _$this._type = type;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  _i3.ConnectionType? _connectionType;
  _i3.ConnectionType? get connectionType => _$this._connectionType;
  set connectionType(_i3.ConnectionType? connectionType) =>
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

  _i4.ContentHandlingStrategy? _contentHandling;
  _i4.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i4.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  int? _timeoutInMillis;
  int? get timeoutInMillis => _$this._timeoutInMillis;
  set timeoutInMillis(int? timeoutInMillis) =>
      _$this._timeoutInMillis = timeoutInMillis;

  String? _cacheNamespace;
  String? get cacheNamespace => _$this._cacheNamespace;
  set cacheNamespace(String? cacheNamespace) =>
      _$this._cacheNamespace = cacheNamespace;

  _i7.ListBuilder<String>? _cacheKeyParameters;
  _i7.ListBuilder<String> get cacheKeyParameters =>
      _$this._cacheKeyParameters ??= new _i7.ListBuilder<String>();
  set cacheKeyParameters(_i7.ListBuilder<String>? cacheKeyParameters) =>
      _$this._cacheKeyParameters = cacheKeyParameters;

  _i7.MapBuilder<String, _i5.IntegrationResponse>? _integrationResponses;
  _i7.MapBuilder<String, _i5.IntegrationResponse> get integrationResponses =>
      _$this._integrationResponses ??=
          new _i7.MapBuilder<String, _i5.IntegrationResponse>();
  set integrationResponses(
          _i7.MapBuilder<String, _i5.IntegrationResponse>?
              integrationResponses) =>
      _$this._integrationResponses = integrationResponses;

  _i6.TlsConfigBuilder? _tlsConfig;
  _i6.TlsConfigBuilder get tlsConfig =>
      _$this._tlsConfig ??= new _i6.TlsConfigBuilder();
  set tlsConfig(_i6.TlsConfigBuilder? tlsConfig) =>
      _$this._tlsConfig = tlsConfig;

  IntegrationBuilder() {
    Integration._init(this);
  }

  IntegrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _httpMethod = $v.httpMethod;
      _uri = $v.uri;
      _connectionType = $v.connectionType;
      _connectionId = $v.connectionId;
      _credentials = $v.credentials;
      _requestParameters = $v.requestParameters?.toBuilder();
      _requestTemplates = $v.requestTemplates?.toBuilder();
      _passthroughBehavior = $v.passthroughBehavior;
      _contentHandling = $v.contentHandling;
      _timeoutInMillis = $v.timeoutInMillis;
      _cacheNamespace = $v.cacheNamespace;
      _cacheKeyParameters = $v.cacheKeyParameters?.toBuilder();
      _integrationResponses = $v.integrationResponses?.toBuilder();
      _tlsConfig = $v.tlsConfig?.toBuilder();
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
              type: type,
              httpMethod: httpMethod,
              uri: uri,
              connectionType: connectionType,
              connectionId: connectionId,
              credentials: credentials,
              requestParameters: _requestParameters?.build(),
              requestTemplates: _requestTemplates?.build(),
              passthroughBehavior: passthroughBehavior,
              contentHandling: contentHandling,
              timeoutInMillis: BuiltValueNullFieldError.checkNotNull(
                  timeoutInMillis, r'Integration', 'timeoutInMillis'),
              cacheNamespace: cacheNamespace,
              cacheKeyParameters: _cacheKeyParameters?.build(),
              integrationResponses: _integrationResponses?.build(),
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
        _$failedField = 'integrationResponses';
        _integrationResponses?.build();
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
