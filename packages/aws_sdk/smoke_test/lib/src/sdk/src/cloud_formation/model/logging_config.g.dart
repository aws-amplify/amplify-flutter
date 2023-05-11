// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.logging_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoggingConfig extends LoggingConfig {
  @override
  final String logRoleArn;
  @override
  final String logGroupName;

  factory _$LoggingConfig([void Function(LoggingConfigBuilder)? updates]) =>
      (new LoggingConfigBuilder()..update(updates))._build();

  _$LoggingConfig._({required this.logRoleArn, required this.logGroupName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logRoleArn, r'LoggingConfig', 'logRoleArn');
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'LoggingConfig', 'logGroupName');
  }

  @override
  LoggingConfig rebuild(void Function(LoggingConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoggingConfigBuilder toBuilder() => new LoggingConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoggingConfig &&
        logRoleArn == other.logRoleArn &&
        logGroupName == other.logGroupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logRoleArn.hashCode);
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoggingConfigBuilder
    implements Builder<LoggingConfig, LoggingConfigBuilder> {
  _$LoggingConfig? _$v;

  String? _logRoleArn;
  String? get logRoleArn => _$this._logRoleArn;
  set logRoleArn(String? logRoleArn) => _$this._logRoleArn = logRoleArn;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  LoggingConfigBuilder() {
    LoggingConfig._init(this);
  }

  LoggingConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logRoleArn = $v.logRoleArn;
      _logGroupName = $v.logGroupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoggingConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoggingConfig;
  }

  @override
  void update(void Function(LoggingConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoggingConfig build() => _build();

  _$LoggingConfig _build() {
    final _$result = _$v ??
        new _$LoggingConfig._(
            logRoleArn: BuiltValueNullFieldError.checkNotNull(
                logRoleArn, r'LoggingConfig', 'logRoleArn'),
            logGroupName: BuiltValueNullFieldError.checkNotNull(
                logGroupName, r'LoggingConfig', 'logGroupName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
