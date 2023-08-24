// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logging_cloud_watch_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoggingCloudWatchConfig extends LoggingCloudWatchConfig {
  @override
  final String logGroupName;
  @override
  final String region;
  @override
  final bool enable;
  @override
  final int localStoreMaxSize;
  @override
  final int flushInterval;
  @override
  final _i3.LoggingRemoteConfig? defaultRemoteConfiguration;
  @override
  final _i4.AmplifyLoggingConstraints? loggingConstraints;

  factory _$LoggingCloudWatchConfig(
          [void Function(LoggingCloudWatchConfigBuilder)? updates]) =>
      (new LoggingCloudWatchConfigBuilder()..update(updates))._build();

  _$LoggingCloudWatchConfig._(
      {required this.logGroupName,
      required this.region,
      required this.enable,
      required this.localStoreMaxSize,
      required this.flushInterval,
      this.defaultRemoteConfiguration,
      this.loggingConstraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'LoggingCloudWatchConfig', 'logGroupName');
    BuiltValueNullFieldError.checkNotNull(
        region, r'LoggingCloudWatchConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        enable, r'LoggingCloudWatchConfig', 'enable');
    BuiltValueNullFieldError.checkNotNull(
        localStoreMaxSize, r'LoggingCloudWatchConfig', 'localStoreMaxSize');
    BuiltValueNullFieldError.checkNotNull(
        flushInterval, r'LoggingCloudWatchConfig', 'flushInterval');
  }

  @override
  LoggingCloudWatchConfig rebuild(
          void Function(LoggingCloudWatchConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoggingCloudWatchConfigBuilder toBuilder() =>
      new LoggingCloudWatchConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoggingCloudWatchConfig &&
        logGroupName == other.logGroupName &&
        region == other.region &&
        enable == other.enable &&
        localStoreMaxSize == other.localStoreMaxSize &&
        flushInterval == other.flushInterval &&
        defaultRemoteConfiguration == other.defaultRemoteConfiguration &&
        loggingConstraints == other.loggingConstraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, enable.hashCode);
    _$hash = $jc(_$hash, localStoreMaxSize.hashCode);
    _$hash = $jc(_$hash, flushInterval.hashCode);
    _$hash = $jc(_$hash, defaultRemoteConfiguration.hashCode);
    _$hash = $jc(_$hash, loggingConstraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoggingCloudWatchConfigBuilder
    implements
        Builder<LoggingCloudWatchConfig, LoggingCloudWatchConfigBuilder> {
  _$LoggingCloudWatchConfig? _$v;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  bool? _enable;
  bool? get enable => _$this._enable;
  set enable(bool? enable) => _$this._enable = enable;

  int? _localStoreMaxSize;
  int? get localStoreMaxSize => _$this._localStoreMaxSize;
  set localStoreMaxSize(int? localStoreMaxSize) =>
      _$this._localStoreMaxSize = localStoreMaxSize;

  int? _flushInterval;
  int? get flushInterval => _$this._flushInterval;
  set flushInterval(int? flushInterval) =>
      _$this._flushInterval = flushInterval;

  _i3.LoggingRemoteConfigBuilder? _defaultRemoteConfiguration;
  _i3.LoggingRemoteConfigBuilder get defaultRemoteConfiguration =>
      _$this._defaultRemoteConfiguration ??=
          new _i3.LoggingRemoteConfigBuilder();
  set defaultRemoteConfiguration(
          _i3.LoggingRemoteConfigBuilder? defaultRemoteConfiguration) =>
      _$this._defaultRemoteConfiguration = defaultRemoteConfiguration;

  _i4.AmplifyLoggingConstraintsBuilder? _loggingConstraints;
  _i4.AmplifyLoggingConstraintsBuilder get loggingConstraints =>
      _$this._loggingConstraints ??= new _i4.AmplifyLoggingConstraintsBuilder();
  set loggingConstraints(
          _i4.AmplifyLoggingConstraintsBuilder? loggingConstraints) =>
      _$this._loggingConstraints = loggingConstraints;

  LoggingCloudWatchConfigBuilder() {
    LoggingCloudWatchConfig._init(this);
  }

  LoggingCloudWatchConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logGroupName = $v.logGroupName;
      _region = $v.region;
      _enable = $v.enable;
      _localStoreMaxSize = $v.localStoreMaxSize;
      _flushInterval = $v.flushInterval;
      _defaultRemoteConfiguration = $v.defaultRemoteConfiguration?.toBuilder();
      _loggingConstraints = $v.loggingConstraints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoggingCloudWatchConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoggingCloudWatchConfig;
  }

  @override
  void update(void Function(LoggingCloudWatchConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoggingCloudWatchConfig build() => _build();

  _$LoggingCloudWatchConfig _build() {
    _$LoggingCloudWatchConfig _$result;
    try {
      _$result = _$v ??
          new _$LoggingCloudWatchConfig._(
              logGroupName: BuiltValueNullFieldError.checkNotNull(
                  logGroupName, r'LoggingCloudWatchConfig', 'logGroupName'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'LoggingCloudWatchConfig', 'region'),
              enable: BuiltValueNullFieldError.checkNotNull(
                  enable, r'LoggingCloudWatchConfig', 'enable'),
              localStoreMaxSize: BuiltValueNullFieldError.checkNotNull(
                  localStoreMaxSize,
                  r'LoggingCloudWatchConfig',
                  'localStoreMaxSize'),
              flushInterval: BuiltValueNullFieldError.checkNotNull(
                  flushInterval, r'LoggingCloudWatchConfig', 'flushInterval'),
              defaultRemoteConfiguration: _defaultRemoteConfiguration?.build(),
              loggingConstraints: _loggingConstraints?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultRemoteConfiguration';
        _defaultRemoteConfiguration?.build();
        _$failedField = 'loggingConstraints';
        _loggingConstraints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoggingCloudWatchConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
