// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logging_remote_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoggingRemoteConfig extends LoggingRemoteConfig {
  @override
  final Uri endpoint;
  @override
  final int refreshInterval;

  factory _$LoggingRemoteConfig(
          [void Function(LoggingRemoteConfigBuilder)? updates]) =>
      (new LoggingRemoteConfigBuilder()..update(updates))._build();

  _$LoggingRemoteConfig._(
      {required this.endpoint, required this.refreshInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'LoggingRemoteConfig', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        refreshInterval, r'LoggingRemoteConfig', 'refreshInterval');
  }

  @override
  LoggingRemoteConfig rebuild(
          void Function(LoggingRemoteConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoggingRemoteConfigBuilder toBuilder() =>
      new LoggingRemoteConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoggingRemoteConfig &&
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

class LoggingRemoteConfigBuilder
    implements Builder<LoggingRemoteConfig, LoggingRemoteConfigBuilder> {
  _$LoggingRemoteConfig? _$v;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  int? _refreshInterval;
  int? get refreshInterval => _$this._refreshInterval;
  set refreshInterval(int? refreshInterval) =>
      _$this._refreshInterval = refreshInterval;

  LoggingRemoteConfigBuilder() {
    LoggingRemoteConfig._init(this);
  }

  LoggingRemoteConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _refreshInterval = $v.refreshInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoggingRemoteConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoggingRemoteConfig;
  }

  @override
  void update(void Function(LoggingRemoteConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoggingRemoteConfig build() => _build();

  _$LoggingRemoteConfig _build() {
    final _$result = _$v ??
        new _$LoggingRemoteConfig._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'LoggingRemoteConfig', 'endpoint'),
            refreshInterval: BuiltValueNullFieldError.checkNotNull(
                refreshInterval, r'LoggingRemoteConfig', 'refreshInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
