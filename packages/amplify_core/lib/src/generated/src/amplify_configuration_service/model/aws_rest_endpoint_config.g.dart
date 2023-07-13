// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_rest_endpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSRestEndpointConfig extends AWSRestEndpointConfig {
  @override
  final Uri endpoint;

  factory _$AWSRestEndpointConfig(
          [void Function(AWSRestEndpointConfigBuilder)? updates]) =>
      (new AWSRestEndpointConfigBuilder()..update(updates))._build();

  _$AWSRestEndpointConfig._({required this.endpoint}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'AWSRestEndpointConfig', 'endpoint');
  }

  @override
  AWSRestEndpointConfig rebuild(
          void Function(AWSRestEndpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSRestEndpointConfigBuilder toBuilder() =>
      new AWSRestEndpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSRestEndpointConfig && endpoint == other.endpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSRestEndpointConfigBuilder
    implements Builder<AWSRestEndpointConfig, AWSRestEndpointConfigBuilder> {
  _$AWSRestEndpointConfig? _$v;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  AWSRestEndpointConfigBuilder() {
    AWSRestEndpointConfig._init(this);
  }

  AWSRestEndpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSRestEndpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSRestEndpointConfig;
  }

  @override
  void update(void Function(AWSRestEndpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSRestEndpointConfig build() => _build();

  _$AWSRestEndpointConfig _build() {
    final _$result = _$v ??
        new _$AWSRestEndpointConfig._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'AWSRestEndpointConfig', 'endpoint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
