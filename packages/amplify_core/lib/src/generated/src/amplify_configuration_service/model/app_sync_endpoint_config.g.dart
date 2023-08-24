// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_sync_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppSyncEndpointConfig extends AppSyncEndpointConfig {
  @override
  final String name;
  @override
  final Uri endpoint;
  @override
  final String region;
  @override
  final _i2.ApiAuthorizationMode authMode;
  @override
  final _i3.BuiltList<_i2.ApiAuthorizationMode> additionalAuthModes;

  factory _$AppSyncEndpointConfig(
          [void Function(AppSyncEndpointConfigBuilder)? updates]) =>
      (new AppSyncEndpointConfigBuilder()..update(updates))._build();

  _$AppSyncEndpointConfig._(
      {required this.name,
      required this.endpoint,
      required this.region,
      required this.authMode,
      required this.additionalAuthModes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'AppSyncEndpointConfig', 'name');
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'AppSyncEndpointConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AppSyncEndpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        authMode, r'AppSyncEndpointConfig', 'authMode');
    BuiltValueNullFieldError.checkNotNull(
        additionalAuthModes, r'AppSyncEndpointConfig', 'additionalAuthModes');
  }

  @override
  AppSyncEndpointConfig rebuild(
          void Function(AppSyncEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppSyncEndpointConfigBuilder toBuilder() =>
      new AppSyncEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppSyncEndpointConfig &&
        name == other.name &&
        endpoint == other.endpoint &&
        region == other.region &&
        authMode == other.authMode &&
        additionalAuthModes == other.additionalAuthModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, authMode.hashCode);
    _$hash = $jc(_$hash, additionalAuthModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AppSyncEndpointConfigBuilder
    implements Builder<AppSyncEndpointConfig, AppSyncEndpointConfigBuilder> {
  _$AppSyncEndpointConfig? _$v;

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

  _i3.ListBuilder<_i2.ApiAuthorizationMode>? _additionalAuthModes;
  _i3.ListBuilder<_i2.ApiAuthorizationMode> get additionalAuthModes =>
      _$this._additionalAuthModes ??=
          new _i3.ListBuilder<_i2.ApiAuthorizationMode>();
  set additionalAuthModes(
          _i3.ListBuilder<_i2.ApiAuthorizationMode>? additionalAuthModes) =>
      _$this._additionalAuthModes = additionalAuthModes;

  AppSyncEndpointConfigBuilder() {
    AppSyncEndpointConfig._init(this);
  }

  AppSyncEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _endpoint = $v.endpoint;
      _region = $v.region;
      _authMode = $v.authMode;
      _additionalAuthModes = $v.additionalAuthModes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppSyncEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppSyncEndpointConfig;
  }

  @override
  void update(void Function(AppSyncEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppSyncEndpointConfig build() => _build();

  _$AppSyncEndpointConfig _build() {
    _$AppSyncEndpointConfig _$result;
    try {
      _$result = _$v ??
          new _$AppSyncEndpointConfig._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'AppSyncEndpointConfig', 'name'),
              endpoint: BuiltValueNullFieldError.checkNotNull(
                  endpoint, r'AppSyncEndpointConfig', 'endpoint'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AppSyncEndpointConfig', 'region'),
              authMode: BuiltValueNullFieldError.checkNotNull(
                  authMode, r'AppSyncEndpointConfig', 'authMode'),
              additionalAuthModes: additionalAuthModes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalAuthModes';
        additionalAuthModes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppSyncEndpointConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
