// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_api_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSApiConfig extends AWSApiConfig {
  @override
  final _i3.BuiltMap<String, _i2.AWSApiEndpointConfig> endpoints;

  factory _$AWSApiConfig([void Function(AWSApiConfigBuilder)? updates]) =>
      (new AWSApiConfigBuilder()..update(updates))._build();

  _$AWSApiConfig._({required this.endpoints}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoints, r'AWSApiConfig', 'endpoints');
  }

  @override
  AWSApiConfig rebuild(void Function(AWSApiConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSApiConfigBuilder toBuilder() => new AWSApiConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSApiConfig && endpoints == other.endpoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSApiConfigBuilder
    implements Builder<AWSApiConfig, AWSApiConfigBuilder> {
  _$AWSApiConfig? _$v;

  _i3.MapBuilder<String, _i2.AWSApiEndpointConfig>? _endpoints;
  _i3.MapBuilder<String, _i2.AWSApiEndpointConfig> get endpoints =>
      _$this._endpoints ??=
          new _i3.MapBuilder<String, _i2.AWSApiEndpointConfig>();
  set endpoints(_i3.MapBuilder<String, _i2.AWSApiEndpointConfig>? endpoints) =>
      _$this._endpoints = endpoints;

  AWSApiConfigBuilder();

  AWSApiConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoints = $v.endpoints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSApiConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSApiConfig;
  }

  @override
  void update(void Function(AWSApiConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSApiConfig build() => _build();

  _$AWSApiConfig _build() {
    _$AWSApiConfig _$result;
    try {
      _$result = _$v ?? new _$AWSApiConfig._(endpoints: endpoints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoints';
        endpoints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSApiConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
