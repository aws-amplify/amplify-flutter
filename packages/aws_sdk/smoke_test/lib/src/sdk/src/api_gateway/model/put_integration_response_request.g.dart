// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutIntegrationResponseRequest extends PutIntegrationResponseRequest {
  @override
  final _i3.ContentHandlingStrategy? contentHandling;
  @override
  final String httpMethod;
  @override
  final String resourceId;
  @override
  final _i4.BuiltMap<String, String>? responseParameters;
  @override
  final _i4.BuiltMap<String, String>? responseTemplates;
  @override
  final String restApiId;
  @override
  final String? selectionPattern;
  @override
  final String statusCode;

  factory _$PutIntegrationResponseRequest(
          [void Function(PutIntegrationResponseRequestBuilder)? updates]) =>
      (new PutIntegrationResponseRequestBuilder()..update(updates))._build();

  _$PutIntegrationResponseRequest._(
      {this.contentHandling,
      required this.httpMethod,
      required this.resourceId,
      this.responseParameters,
      this.responseTemplates,
      required this.restApiId,
      this.selectionPattern,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutIntegrationResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'PutIntegrationResponseRequest', 'statusCode');
  }

  @override
  PutIntegrationResponseRequest rebuild(
          void Function(PutIntegrationResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutIntegrationResponseRequestBuilder toBuilder() =>
      new PutIntegrationResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutIntegrationResponseRequest &&
        contentHandling == other.contentHandling &&
        httpMethod == other.httpMethod &&
        resourceId == other.resourceId &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        restApiId == other.restApiId &&
        selectionPattern == other.selectionPattern &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, selectionPattern.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationResponseRequestBuilder
    implements
        Builder<PutIntegrationResponseRequest,
            PutIntegrationResponseRequestBuilder> {
  _$PutIntegrationResponseRequest? _$v;

  _i3.ContentHandlingStrategy? _contentHandling;
  _i3.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i3.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i4.MapBuilder<String, String>? _responseParameters;
  _i4.MapBuilder<String, String> get responseParameters =>
      _$this._responseParameters ??= new _i4.MapBuilder<String, String>();
  set responseParameters(_i4.MapBuilder<String, String>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i4.MapBuilder<String, String>? _responseTemplates;
  _i4.MapBuilder<String, String> get responseTemplates =>
      _$this._responseTemplates ??= new _i4.MapBuilder<String, String>();
  set responseTemplates(_i4.MapBuilder<String, String>? responseTemplates) =>
      _$this._responseTemplates = responseTemplates;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _selectionPattern;
  String? get selectionPattern => _$this._selectionPattern;
  set selectionPattern(String? selectionPattern) =>
      _$this._selectionPattern = selectionPattern;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  PutIntegrationResponseRequestBuilder() {
    PutIntegrationResponseRequest._init(this);
  }

  PutIntegrationResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentHandling = $v.contentHandling;
      _httpMethod = $v.httpMethod;
      _resourceId = $v.resourceId;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _restApiId = $v.restApiId;
      _selectionPattern = $v.selectionPattern;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutIntegrationResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutIntegrationResponseRequest;
  }

  @override
  void update(void Function(PutIntegrationResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutIntegrationResponseRequest build() => _build();

  _$PutIntegrationResponseRequest _build() {
    _$PutIntegrationResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$PutIntegrationResponseRequest._(
              contentHandling: contentHandling,
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutIntegrationResponseRequest', 'httpMethod'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutIntegrationResponseRequest', 'resourceId'),
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutIntegrationResponseRequest', 'restApiId'),
              selectionPattern: selectionPattern,
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'PutIntegrationResponseRequest', 'statusCode'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseTemplates';
        _responseTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutIntegrationResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PutIntegrationResponseRequestPayload
    extends PutIntegrationResponseRequestPayload {
  @override
  final _i3.ContentHandlingStrategy? contentHandling;
  @override
  final _i4.BuiltMap<String, String>? responseParameters;
  @override
  final _i4.BuiltMap<String, String>? responseTemplates;
  @override
  final String? selectionPattern;

  factory _$PutIntegrationResponseRequestPayload(
          [void Function(PutIntegrationResponseRequestPayloadBuilder)?
              updates]) =>
      (new PutIntegrationResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$PutIntegrationResponseRequestPayload._(
      {this.contentHandling,
      this.responseParameters,
      this.responseTemplates,
      this.selectionPattern})
      : super._();

  @override
  PutIntegrationResponseRequestPayload rebuild(
          void Function(PutIntegrationResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutIntegrationResponseRequestPayloadBuilder toBuilder() =>
      new PutIntegrationResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutIntegrationResponseRequestPayload &&
        contentHandling == other.contentHandling &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        selectionPattern == other.selectionPattern;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, selectionPattern.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationResponseRequestPayloadBuilder
    implements
        Builder<PutIntegrationResponseRequestPayload,
            PutIntegrationResponseRequestPayloadBuilder> {
  _$PutIntegrationResponseRequestPayload? _$v;

  _i3.ContentHandlingStrategy? _contentHandling;
  _i3.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i3.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  _i4.MapBuilder<String, String>? _responseParameters;
  _i4.MapBuilder<String, String> get responseParameters =>
      _$this._responseParameters ??= new _i4.MapBuilder<String, String>();
  set responseParameters(_i4.MapBuilder<String, String>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i4.MapBuilder<String, String>? _responseTemplates;
  _i4.MapBuilder<String, String> get responseTemplates =>
      _$this._responseTemplates ??= new _i4.MapBuilder<String, String>();
  set responseTemplates(_i4.MapBuilder<String, String>? responseTemplates) =>
      _$this._responseTemplates = responseTemplates;

  String? _selectionPattern;
  String? get selectionPattern => _$this._selectionPattern;
  set selectionPattern(String? selectionPattern) =>
      _$this._selectionPattern = selectionPattern;

  PutIntegrationResponseRequestPayloadBuilder() {
    PutIntegrationResponseRequestPayload._init(this);
  }

  PutIntegrationResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentHandling = $v.contentHandling;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _selectionPattern = $v.selectionPattern;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutIntegrationResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutIntegrationResponseRequestPayload;
  }

  @override
  void update(
      void Function(PutIntegrationResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutIntegrationResponseRequestPayload build() => _build();

  _$PutIntegrationResponseRequestPayload _build() {
    _$PutIntegrationResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$PutIntegrationResponseRequestPayload._(
              contentHandling: contentHandling,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              selectionPattern: selectionPattern);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseTemplates';
        _responseTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutIntegrationResponseRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
