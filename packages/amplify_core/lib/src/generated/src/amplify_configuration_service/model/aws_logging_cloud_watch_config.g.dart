// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_logging_cloud_watch_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSLoggingCloudWatchConfig extends AWSLoggingCloudWatchConfig {
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
  final _i2.LoggingRemoteConfiguration? defaultRemoteConfiguration;
  @override
  final _i3.AmplifyLoggingConstraints? loggingConstraints;

  factory _$AWSLoggingCloudWatchConfig(
          [void Function(AWSLoggingCloudWatchConfigBuilder)? updates]) =>
      (new AWSLoggingCloudWatchConfigBuilder()..update(updates))._build();

  _$AWSLoggingCloudWatchConfig._(
      {required this.logGroupName,
      required this.region,
      required this.enable,
      required this.localStoreMaxSize,
      required this.flushInterval,
      this.defaultRemoteConfiguration,
      this.loggingConstraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'AWSLoggingCloudWatchConfig', 'logGroupName');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSLoggingCloudWatchConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        enable, r'AWSLoggingCloudWatchConfig', 'enable');
    BuiltValueNullFieldError.checkNotNull(
        localStoreMaxSize, r'AWSLoggingCloudWatchConfig', 'localStoreMaxSize');
    BuiltValueNullFieldError.checkNotNull(
        flushInterval, r'AWSLoggingCloudWatchConfig', 'flushInterval');
  }

  @override
  AWSLoggingCloudWatchConfig rebuild(
          void Function(AWSLoggingCloudWatchConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSLoggingCloudWatchConfigBuilder toBuilder() =>
      new AWSLoggingCloudWatchConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSLoggingCloudWatchConfig &&
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

class AWSLoggingCloudWatchConfigBuilder
    implements
        Builder<AWSLoggingCloudWatchConfig, AWSLoggingCloudWatchConfigBuilder> {
  _$AWSLoggingCloudWatchConfig? _$v;

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

  _i2.LoggingRemoteConfigurationBuilder? _defaultRemoteConfiguration;
  _i2.LoggingRemoteConfigurationBuilder get defaultRemoteConfiguration =>
      _$this._defaultRemoteConfiguration ??=
          new _i2.LoggingRemoteConfigurationBuilder();
  set defaultRemoteConfiguration(
          _i2.LoggingRemoteConfigurationBuilder? defaultRemoteConfiguration) =>
      _$this._defaultRemoteConfiguration = defaultRemoteConfiguration;

  _i3.AmplifyLoggingConstraintsBuilder? _loggingConstraints;
  _i3.AmplifyLoggingConstraintsBuilder get loggingConstraints =>
      _$this._loggingConstraints ??= new _i3.AmplifyLoggingConstraintsBuilder();
  set loggingConstraints(
          _i3.AmplifyLoggingConstraintsBuilder? loggingConstraints) =>
      _$this._loggingConstraints = loggingConstraints;

  AWSLoggingCloudWatchConfigBuilder() {
    AWSLoggingCloudWatchConfig._init(this);
  }

  AWSLoggingCloudWatchConfigBuilder get _$this {
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
  void replace(AWSLoggingCloudWatchConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSLoggingCloudWatchConfig;
  }

  @override
  void update(void Function(AWSLoggingCloudWatchConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSLoggingCloudWatchConfig build() => _build();

  _$AWSLoggingCloudWatchConfig _build() {
    _$AWSLoggingCloudWatchConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSLoggingCloudWatchConfig._(
              logGroupName: BuiltValueNullFieldError.checkNotNull(
                  logGroupName, r'AWSLoggingCloudWatchConfig', 'logGroupName'),
              region: BuiltValueNullFieldError.checkNotNull(
                  region, r'AWSLoggingCloudWatchConfig', 'region'),
              enable: BuiltValueNullFieldError.checkNotNull(
                  enable, r'AWSLoggingCloudWatchConfig', 'enable'),
              localStoreMaxSize: BuiltValueNullFieldError.checkNotNull(
                  localStoreMaxSize,
                  r'AWSLoggingCloudWatchConfig',
                  'localStoreMaxSize'),
              flushInterval: BuiltValueNullFieldError.checkNotNull(
                  flushInterval,
                  r'AWSLoggingCloudWatchConfig',
                  'flushInterval'),
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
            r'AWSLoggingCloudWatchConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
