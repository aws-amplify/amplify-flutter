// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.gateway_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GatewayResponse extends GatewayResponse {
  @override
  final bool? defaultResponse;
  @override
  final _i3.BuiltMap<String, String>? responseParameters;
  @override
  final _i3.BuiltMap<String, String>? responseTemplates;
  @override
  final _i2.GatewayResponseType? responseType;
  @override
  final String? statusCode;

  factory _$GatewayResponse([void Function(GatewayResponseBuilder)? updates]) =>
      (new GatewayResponseBuilder()..update(updates))._build();

  _$GatewayResponse._(
      {this.defaultResponse,
      this.responseParameters,
      this.responseTemplates,
      this.responseType,
      this.statusCode})
      : super._();

  @override
  GatewayResponse rebuild(void Function(GatewayResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GatewayResponseBuilder toBuilder() =>
      new GatewayResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GatewayResponse &&
        defaultResponse == other.defaultResponse &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        responseType == other.responseType &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultResponse.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, responseType.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GatewayResponseBuilder
    implements Builder<GatewayResponse, GatewayResponseBuilder> {
  _$GatewayResponse? _$v;

  bool? _defaultResponse;
  bool? get defaultResponse => _$this._defaultResponse;
  set defaultResponse(bool? defaultResponse) =>
      _$this._defaultResponse = defaultResponse;

  _i3.MapBuilder<String, String>? _responseParameters;
  _i3.MapBuilder<String, String> get responseParameters =>
      _$this._responseParameters ??= new _i3.MapBuilder<String, String>();
  set responseParameters(_i3.MapBuilder<String, String>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i3.MapBuilder<String, String>? _responseTemplates;
  _i3.MapBuilder<String, String> get responseTemplates =>
      _$this._responseTemplates ??= new _i3.MapBuilder<String, String>();
  set responseTemplates(_i3.MapBuilder<String, String>? responseTemplates) =>
      _$this._responseTemplates = responseTemplates;

  _i2.GatewayResponseType? _responseType;
  _i2.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i2.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  GatewayResponseBuilder() {
    GatewayResponse._init(this);
  }

  GatewayResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultResponse = $v.defaultResponse;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _responseType = $v.responseType;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GatewayResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GatewayResponse;
  }

  @override
  void update(void Function(GatewayResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GatewayResponse build() => _build();

  _$GatewayResponse _build() {
    _$GatewayResponse _$result;
    try {
      _$result = _$v ??
          new _$GatewayResponse._(
              defaultResponse: defaultResponse,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              responseType: responseType,
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
            r'GatewayResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
