// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_gateway_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutGatewayResponseRequest extends PutGatewayResponseRequest {
  @override
  final _i4.BuiltMap<String, String>? responseParameters;
  @override
  final _i4.BuiltMap<String, String>? responseTemplates;
  @override
  final _i3.GatewayResponseType responseType;
  @override
  final String restApiId;
  @override
  final String? statusCode;

  factory _$PutGatewayResponseRequest(
          [void Function(PutGatewayResponseRequestBuilder)? updates]) =>
      (new PutGatewayResponseRequestBuilder()..update(updates))._build();

  _$PutGatewayResponseRequest._(
      {this.responseParameters,
      this.responseTemplates,
      required this.responseType,
      required this.restApiId,
      this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseType, r'PutGatewayResponseRequest', 'responseType');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutGatewayResponseRequest', 'restApiId');
  }

  @override
  PutGatewayResponseRequest rebuild(
          void Function(PutGatewayResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutGatewayResponseRequestBuilder toBuilder() =>
      new PutGatewayResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutGatewayResponseRequest &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        responseType == other.responseType &&
        restApiId == other.restApiId &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, responseType.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutGatewayResponseRequestBuilder
    implements
        Builder<PutGatewayResponseRequest, PutGatewayResponseRequestBuilder> {
  _$PutGatewayResponseRequest? _$v;

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

  _i3.GatewayResponseType? _responseType;
  _i3.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i3.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  PutGatewayResponseRequestBuilder() {
    PutGatewayResponseRequest._init(this);
  }

  PutGatewayResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _responseType = $v.responseType;
      _restApiId = $v.restApiId;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutGatewayResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutGatewayResponseRequest;
  }

  @override
  void update(void Function(PutGatewayResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutGatewayResponseRequest build() => _build();

  _$PutGatewayResponseRequest _build() {
    _$PutGatewayResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$PutGatewayResponseRequest._(
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              responseType: BuiltValueNullFieldError.checkNotNull(
                  responseType, r'PutGatewayResponseRequest', 'responseType'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutGatewayResponseRequest', 'restApiId'),
              statusCode: statusCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseTemplates';
        _responseTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutGatewayResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PutGatewayResponseRequestPayload
    extends PutGatewayResponseRequestPayload {
  @override
  final _i4.BuiltMap<String, String>? responseParameters;
  @override
  final _i4.BuiltMap<String, String>? responseTemplates;
  @override
  final String? statusCode;

  factory _$PutGatewayResponseRequestPayload(
          [void Function(PutGatewayResponseRequestPayloadBuilder)? updates]) =>
      (new PutGatewayResponseRequestPayloadBuilder()..update(updates))._build();

  _$PutGatewayResponseRequestPayload._(
      {this.responseParameters, this.responseTemplates, this.statusCode})
      : super._();

  @override
  PutGatewayResponseRequestPayload rebuild(
          void Function(PutGatewayResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutGatewayResponseRequestPayloadBuilder toBuilder() =>
      new PutGatewayResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutGatewayResponseRequestPayload &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutGatewayResponseRequestPayloadBuilder
    implements
        Builder<PutGatewayResponseRequestPayload,
            PutGatewayResponseRequestPayloadBuilder> {
  _$PutGatewayResponseRequestPayload? _$v;

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

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  PutGatewayResponseRequestPayloadBuilder() {
    PutGatewayResponseRequestPayload._init(this);
  }

  PutGatewayResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutGatewayResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutGatewayResponseRequestPayload;
  }

  @override
  void update(void Function(PutGatewayResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutGatewayResponseRequestPayload build() => _build();

  _$PutGatewayResponseRequestPayload _build() {
    _$PutGatewayResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$PutGatewayResponseRequestPayload._(
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              statusCode: statusCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseTemplates';
        _responseTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutGatewayResponseRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
