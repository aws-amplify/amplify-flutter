// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_gateway_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiGatewayEndpointConfig extends ApiGatewayEndpointConfig {
  @override
  final String name;
  @override
  final Uri endpoint;
  @override
  final String region;
  @override
  final _i2.ApiAuthorizationMode authMode;

  factory _$ApiGatewayEndpointConfig(
          [void Function(ApiGatewayEndpointConfigBuilder)? updates]) =>
      (new ApiGatewayEndpointConfigBuilder()..update(updates))._build();

  _$ApiGatewayEndpointConfig._(
      {required this.name,
      required this.endpoint,
      required this.region,
      required this.authMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ApiGatewayEndpointConfig', 'name');
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'ApiGatewayEndpointConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        region, r'ApiGatewayEndpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        authMode, r'ApiGatewayEndpointConfig', 'authMode');
  }

  @override
  ApiGatewayEndpointConfig rebuild(
          void Function(ApiGatewayEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiGatewayEndpointConfigBuilder toBuilder() =>
      new ApiGatewayEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiGatewayEndpointConfig &&
        name == other.name &&
        endpoint == other.endpoint &&
        region == other.region &&
        authMode == other.authMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, authMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApiGatewayEndpointConfigBuilder
    implements
        Builder<ApiGatewayEndpointConfig, ApiGatewayEndpointConfigBuilder> {
  _$ApiGatewayEndpointConfig? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.ApiAuthorizationMode? _authMode;
  _i2.ApiAuthorizationMode? get authMode => _$this._authMode;
  set authMode(_i2.ApiAuthorizationMode? authMode) =>
      _$this._authMode = authMode;

  ApiGatewayEndpointConfigBuilder();

  ApiGatewayEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _endpoint = $v.endpoint;
      _region = $v.region;
      _authMode = $v.authMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiGatewayEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiGatewayEndpointConfig;
  }

  @override
  void update(void Function(ApiGatewayEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiGatewayEndpointConfig build() => _build();

  _$ApiGatewayEndpointConfig _build() {
    final _$result = _$v ??
        new _$ApiGatewayEndpointConfig._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ApiGatewayEndpointConfig', 'name'),
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'ApiGatewayEndpointConfig', 'endpoint'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'ApiGatewayEndpointConfig', 'region'),
            authMode: BuiltValueNullFieldError.checkNotNull(
                authMode, r'ApiGatewayEndpointConfig', 'authMode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
