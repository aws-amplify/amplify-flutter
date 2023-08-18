// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestEndpointConfig extends RestEndpointConfig {
  @override
  final String name;
  @override
  final Uri endpoint;

  factory _$RestEndpointConfig(
          [void Function(RestEndpointConfigBuilder)? updates]) =>
      (new RestEndpointConfigBuilder()..update(updates))._build();

  _$RestEndpointConfig._({required this.name, required this.endpoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'RestEndpointConfig', 'name');
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'RestEndpointConfig', 'endpoint');
  }

  @override
  RestEndpointConfig rebuild(
          void Function(RestEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestEndpointConfigBuilder toBuilder() =>
      new RestEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestEndpointConfig &&
        name == other.name &&
        endpoint == other.endpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestEndpointConfigBuilder
    implements Builder<RestEndpointConfig, RestEndpointConfigBuilder> {
  _$RestEndpointConfig? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  RestEndpointConfigBuilder();

  RestEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _endpoint = $v.endpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestEndpointConfig;
  }

  @override
  void update(void Function(RestEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestEndpointConfig build() => _build();

  _$RestEndpointConfig _build() {
    final _$result = _$v ??
        new _$RestEndpointConfig._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RestEndpointConfig', 'name'),
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'RestEndpointConfig', 'endpoint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
