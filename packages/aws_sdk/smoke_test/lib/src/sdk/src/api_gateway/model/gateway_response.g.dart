// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gateway_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GatewayResponse extends GatewayResponse {
  @override
  final _i2.GatewayResponseType? responseType;
  @override
  final String? statusCode;
  @override
  final _i3.BuiltMap<String, String>? responseParameters;
  @override
  final _i3.BuiltMap<String, String>? responseTemplates;
  @override
  final bool defaultResponse;

  factory _$GatewayResponse([void Function(GatewayResponseBuilder)? updates]) =>
      (new GatewayResponseBuilder()..update(updates))._build();

  _$GatewayResponse._(
      {this.responseType,
      this.statusCode,
      this.responseParameters,
      this.responseTemplates,
      required this.defaultResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultResponse, r'GatewayResponse', 'defaultResponse');
  }

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
        responseType == other.responseType &&
        statusCode == other.statusCode &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        defaultResponse == other.defaultResponse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseType.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, defaultResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GatewayResponseBuilder
    implements Builder<GatewayResponse, GatewayResponseBuilder> {
  _$GatewayResponse? _$v;

  _i2.GatewayResponseType? _responseType;
  _i2.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i2.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

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

  bool? _defaultResponse;
  bool? get defaultResponse => _$this._defaultResponse;
  set defaultResponse(bool? defaultResponse) =>
      _$this._defaultResponse = defaultResponse;

  GatewayResponseBuilder() {
    GatewayResponse._init(this);
  }

  GatewayResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseType = $v.responseType;
      _statusCode = $v.statusCode;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _defaultResponse = $v.defaultResponse;
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
              responseType: responseType,
              statusCode: statusCode,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              defaultResponse: BuiltValueNullFieldError.checkNotNull(
                  defaultResponse, r'GatewayResponse', 'defaultResponse'));
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
