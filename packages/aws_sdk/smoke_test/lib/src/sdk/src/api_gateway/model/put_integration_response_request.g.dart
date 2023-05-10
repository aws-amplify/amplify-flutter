// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_integration_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutIntegrationResponseRequest extends PutIntegrationResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;
  @override
  final String? selectionPattern;
  @override
  final _i4.BuiltMap<String, String>? responseParameters;
  @override
  final _i4.BuiltMap<String, String>? responseTemplates;
  @override
  final _i3.ContentHandlingStrategy? contentHandling;

  factory _$PutIntegrationResponseRequest(
          [void Function(PutIntegrationResponseRequestBuilder)? updates]) =>
      (new PutIntegrationResponseRequestBuilder()..update(updates))._build();

  _$PutIntegrationResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode,
      this.selectionPattern,
      this.responseParameters,
      this.responseTemplates,
      this.contentHandling})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutIntegrationResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutIntegrationResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutIntegrationResponseRequest', 'httpMethod');
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
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        statusCode == other.statusCode &&
        selectionPattern == other.selectionPattern &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        contentHandling == other.contentHandling;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, selectionPattern.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutIntegrationResponseRequestBuilder
    implements
        Builder<PutIntegrationResponseRequest,
            PutIntegrationResponseRequestBuilder> {
  _$PutIntegrationResponseRequest? _$v;

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

  String? _selectionPattern;
  String? get selectionPattern => _$this._selectionPattern;
  set selectionPattern(String? selectionPattern) =>
      _$this._selectionPattern = selectionPattern;

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

  _i3.ContentHandlingStrategy? _contentHandling;
  _i3.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i3.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  PutIntegrationResponseRequestBuilder() {
    PutIntegrationResponseRequest._init(this);
  }

  PutIntegrationResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _statusCode = $v.statusCode;
      _selectionPattern = $v.selectionPattern;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _contentHandling = $v.contentHandling;
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
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutIntegrationResponseRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutIntegrationResponseRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutIntegrationResponseRequest', 'httpMethod'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'PutIntegrationResponseRequest', 'statusCode'),
              selectionPattern: selectionPattern,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              contentHandling: contentHandling);
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
