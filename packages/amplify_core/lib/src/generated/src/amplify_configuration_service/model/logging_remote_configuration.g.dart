// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logging_remote_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoggingRemoteConfiguration extends LoggingRemoteConfiguration {
  @override
  final Uri endpoint;
  @override
  final int refreshInterval;

  factory _$LoggingRemoteConfiguration(
          [void Function(LoggingRemoteConfigurationBuilder)? updates]) =>
      (new LoggingRemoteConfigurationBuilder()..update(updates))._build();

  _$LoggingRemoteConfiguration._(
      {required this.endpoint, required this.refreshInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoint, r'LoggingRemoteConfiguration', 'endpoint');
    BuiltValueNullFieldError.checkNotNull(
        refreshInterval, r'LoggingRemoteConfiguration', 'refreshInterval');
  }

  @override
  LoggingRemoteConfiguration rebuild(
          void Function(LoggingRemoteConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoggingRemoteConfigurationBuilder toBuilder() =>
      new LoggingRemoteConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoggingRemoteConfiguration &&
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

class LoggingRemoteConfigurationBuilder
    implements
        Builder<LoggingRemoteConfiguration, LoggingRemoteConfigurationBuilder> {
  _$LoggingRemoteConfiguration? _$v;

  Uri? _endpoint;
  Uri? get endpoint => _$this._endpoint;
  set endpoint(Uri? endpoint) => _$this._endpoint = endpoint;

  int? _refreshInterval;
  int? get refreshInterval => _$this._refreshInterval;
  set refreshInterval(int? refreshInterval) =>
      _$this._refreshInterval = refreshInterval;

  LoggingRemoteConfigurationBuilder() {
    LoggingRemoteConfiguration._init(this);
  }

  LoggingRemoteConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _refreshInterval = $v.refreshInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoggingRemoteConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoggingRemoteConfiguration;
  }

  @override
  void update(void Function(LoggingRemoteConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoggingRemoteConfiguration build() => _build();

  _$LoggingRemoteConfiguration _build() {
    final _$result = _$v ??
        new _$LoggingRemoteConfiguration._(
            endpoint: BuiltValueNullFieldError.checkNotNull(
                endpoint, r'LoggingRemoteConfiguration', 'endpoint'),
            refreshInterval: BuiltValueNullFieldError.checkNotNull(
                refreshInterval,
                r'LoggingRemoteConfiguration',
                'refreshInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
