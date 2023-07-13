// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_api_gateway_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSApiGatewayEndpointConfig extends AWSApiGatewayEndpointConfig {
  @override
  final Uri endpoint;
  @override
  final String region;
  @override
  final _i2.AWSApiAuthorizationMode authMode;

  factory _$AWSApiGatewayEndpointConfig(
          [void Function(AWSApiGatewayEndpointConfigBuilder)? updates]) =>
      (new AWSApiGatewayEndpointConfigBuilder()..update(updates))._build();

  _$AWSApiGatewayEndpointConfig._(
      {required this.endpoint, required this.region, required this.authMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'AWSApiGatewayEndpointConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSApiGatewayEndpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        authMode, r'AWSApiGatewayEndpointConfig', 'authMode');
  }

  @override
  AWSApiGatewayEndpointConfig rebuild(
          void Function(AWSApiGatewayEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSApiGatewayEndpointConfigBuilder toBuilder() =>
      new AWSApiGatewayEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSApiGatewayEndpointConfig &&
        endpoint == other.endpoint &&
        region == other.region &&
        authMode == other.authMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, authMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSApiGatewayEndpointConfigBuilder
    implements
        Builder<AWSApiGatewayEndpointConfig,
            AWSApiGatewayEndpointConfigBuilder> {
  _$AWSApiGatewayEndpointConfig? _$v;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.AWSApiAuthorizationMode? _authMode;
  _i2.AWSApiAuthorizationMode? get authMode => _$this._authMode;
  set authMode(_i2.AWSApiAuthorizationMode? authMode) =>
      _$this._authMode = authMode;

  AWSApiGatewayEndpointConfigBuilder() {
    AWSApiGatewayEndpointConfig._init(this);
  }

  AWSApiGatewayEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _region = $v.region;
      _authMode = $v.authMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSApiGatewayEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSApiGatewayEndpointConfig;
  }

  @override
  void update(void Function(AWSApiGatewayEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSApiGatewayEndpointConfig build() => _build();

  _$AWSApiGatewayEndpointConfig _build() {
    final _$result = _$v ??
        new _$AWSApiGatewayEndpointConfig._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'AWSApiGatewayEndpointConfig', 'endpoint'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AWSApiGatewayEndpointConfig', 'region'),
            authMode: BuiltValueNullFieldError.checkNotNull(
                authMode, r'AWSApiGatewayEndpointConfig', 'authMode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
