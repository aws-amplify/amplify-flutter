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
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, defaultResponse.hashCode),
                    responseParameters.hashCode),
                responseTemplates.hashCode),
            responseType.hashCode),
        statusCode.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
