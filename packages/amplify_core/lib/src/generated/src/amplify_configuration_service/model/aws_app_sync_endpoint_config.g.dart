// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_app_sync_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAppSyncEndpointConfig extends AWSAppSyncEndpointConfig {
  @override
  final Uri endpoint;
  @override
  final String region;
  @override
  final _i2.AWSApiAuthorizationMode authMode;
  @override
  final _i3.BuiltList<_i2.AWSApiAuthorizationMode>? additionalAuthModes;

  factory _$AWSAppSyncEndpointConfig(
          [void Function(AWSAppSyncEndpointConfigBuilder)? updates]) =>
      (new AWSAppSyncEndpointConfigBuilder()..update(updates))._build();

  _$AWSAppSyncEndpointConfig._(
      {required this.endpoint,
      required this.region,
      required this.authMode,
      this.additionalAuthModes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'AWSAppSyncEndpointConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSAppSyncEndpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        authMode, r'AWSAppSyncEndpointConfig', 'authMode');
  }

  @override
  AWSAppSyncEndpointConfig rebuild(
          void Function(AWSAppSyncEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAppSyncEndpointConfigBuilder toBuilder() =>
      new AWSAppSyncEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAppSyncEndpointConfig &&
        endpoint == other.endpoint &&
        region == other.region &&
        authMode == other.authMode &&
        additionalAuthModes == other.additionalAuthModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, authMode.hashCode);
    _$hash = $jc(_$hash, additionalAuthModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAppSyncEndpointConfigBuilder
    implements
        Builder<AWSAppSyncEndpointConfig, AWSAppSyncEndpointConfigBuilder> {
  _$AWSAppSyncEndpointConfig? _$v;

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

  _i3.ListBuilder<_i2.AWSApiAuthorizationMode>? _additionalAuthModes;
  _i3.ListBuilder<_i2.AWSApiAuthorizationMode> get additionalAuthModes =>
      _$this._additionalAuthModes ??=
          new _i3.ListBuilder<_i2.AWSApiAuthorizationMode>();
  set additionalAuthModes(
          _i3.ListBuilder<_i2.AWSApiAuthorizationMode>? additionalAuthModes) =>
      _$this._additionalAuthModes = additionalAuthModes;

  AWSAppSyncEndpointConfigBuilder() {
    AWSAppSyncEndpointConfig._init(this);
  }

  AWSAppSyncEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _region = $v.region;
      _authMode = $v.authMode;
      _additionalAuthModes = $v.additionalAuthModes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAppSyncEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAppSyncEndpointConfig;
  }

  @override
  void update(void Function(AWSAppSyncEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAppSyncEndpointConfig build() => _build();

  _$AWSAppSyncEndpointConfig _build() {
    _$AWSAppSyncEndpointConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSAppSyncEndpointConfig._(
              endpoint: BuiltValueNullFieldError.checkNotNull(
                  endpoint, r'AWSAppSyncEndpointConfig', 'endpoint'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AWSAppSyncEndpointConfig', 'region'),
              authMode: BuiltValueNullFieldError.checkNotNull(
                  authMode, r'AWSAppSyncEndpointConfig', 'authMode'),
              additionalAuthModes: _additionalAuthModes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalAuthModes';
        _additionalAuthModes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAppSyncEndpointConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
