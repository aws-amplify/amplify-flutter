// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiConfig extends ApiConfig {
  @override
  final _i3.BuiltList<_i2.ApiEndpointConfig> endpoints;

  factory _$ApiConfig([void Function(ApiConfigBuilder)? updates]) =>
      (new ApiConfigBuilder()..update(updates))._build();

  _$ApiConfig._({required this.endpoints}) : super._() {
    BuiltValueNullFieldError.checkNotNull(endpoints, r'ApiConfig', 'endpoints');
  }

  @override
  ApiConfig rebuild(void Function(ApiConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiConfigBuilder toBuilder() => new ApiConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiConfig && endpoints == other.endpoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApiConfigBuilder implements Builder<ApiConfig, ApiConfigBuilder> {
  _$ApiConfig? _$v;

  _i3.ListBuilder<_i2.ApiEndpointConfig>? _endpoints;
  _i3.ListBuilder<_i2.ApiEndpointConfig> get endpoints =>
      _$this._endpoints ??= new _i3.ListBuilder<_i2.ApiEndpointConfig>();
  set endpoints(_i3.ListBuilder<_i2.ApiEndpointConfig>? endpoints) =>
      _$this._endpoints = endpoints;

  ApiConfigBuilder();

  ApiConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoints = $v.endpoints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiConfig;
  }

  @override
  void update(void Function(ApiConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiConfig build() => _build();

  _$ApiConfig _build() {
    _$ApiConfig _$result;
    try {
      _$result = _$v ?? new _$ApiConfig._(endpoints: endpoints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoints';
        endpoints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
