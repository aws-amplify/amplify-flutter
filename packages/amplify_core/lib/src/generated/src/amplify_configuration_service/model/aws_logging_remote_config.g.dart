// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_logging_remote_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSLoggingRemoteConfig extends AWSLoggingRemoteConfig {
  @override
  final Uri endpoint;
  @override
  final int refreshInterval;

  factory _$AWSLoggingRemoteConfig(
          [void Function(AWSLoggingRemoteConfigBuilder)? updates]) =>
      (new AWSLoggingRemoteConfigBuilder()..update(updates))._build();

  _$AWSLoggingRemoteConfig._(
      {required this.endpoint, required this.refreshInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'AWSLoggingRemoteConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        refreshInterval, r'AWSLoggingRemoteConfig', 'refreshInterval');
  }

  @override
  AWSLoggingRemoteConfig rebuild(
          void Function(AWSLoggingRemoteConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSLoggingRemoteConfigBuilder toBuilder() =>
      new AWSLoggingRemoteConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSLoggingRemoteConfig &&
        endpoint == other.endpoint &&
        refreshInterval == other.refreshInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, refreshInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSLoggingRemoteConfigBuilder
    implements Builder<AWSLoggingRemoteConfig, AWSLoggingRemoteConfigBuilder> {
  _$AWSLoggingRemoteConfig? _$v;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  int? _refreshInterval;
  int? get refreshInterval => _$this._refreshInterval;
  set refreshInterval(int? refreshInterval) =>
      _$this._refreshInterval = refreshInterval;

  AWSLoggingRemoteConfigBuilder() {
    AWSLoggingRemoteConfig._init(this);
  }

  AWSLoggingRemoteConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _refreshInterval = $v.refreshInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSLoggingRemoteConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSLoggingRemoteConfig;
  }

  @override
  void update(void Function(AWSLoggingRemoteConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSLoggingRemoteConfig build() => _build();

  _$AWSLoggingRemoteConfig _build() {
    final _$result = _$v ??
        new _$AWSLoggingRemoteConfig._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'AWSLoggingRemoteConfig', 'endpoint'),
            refreshInterval: BuiltValueNullFieldError.checkNotNull(
                refreshInterval, r'AWSLoggingRemoteConfig', 'refreshInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
