// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_analytics_pinpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAnalyticsPinpointConfig extends AWSAnalyticsPinpointConfig {
  @override
  final String appId;
  @override
  final String region;
  @override
  final int autoFlushEventsInterval;

  factory _$AWSAnalyticsPinpointConfig(
          [void Function(AWSAnalyticsPinpointConfigBuilder)? updates]) =>
      (new AWSAnalyticsPinpointConfigBuilder()..update(updates))._build();

  _$AWSAnalyticsPinpointConfig._(
      {required this.appId,
      required this.region,
      required this.autoFlushEventsInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appId, r'AWSAnalyticsPinpointConfig', 'appId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSAnalyticsPinpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(autoFlushEventsInterval,
        r'AWSAnalyticsPinpointConfig', 'autoFlushEventsInterval');
  }

  @override
  AWSAnalyticsPinpointConfig rebuild(
          void Function(AWSAnalyticsPinpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAnalyticsPinpointConfigBuilder toBuilder() =>
      new AWSAnalyticsPinpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAnalyticsPinpointConfig &&
        appId == other.appId &&
        region == other.region &&
        autoFlushEventsInterval == other.autoFlushEventsInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, autoFlushEventsInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAnalyticsPinpointConfigBuilder
    implements
        Builder<AWSAnalyticsPinpointConfig, AWSAnalyticsPinpointConfigBuilder> {
  _$AWSAnalyticsPinpointConfig? _$v;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  int? _autoFlushEventsInterval;
  int? get autoFlushEventsInterval => _$this._autoFlushEventsInterval;
  set autoFlushEventsInterval(int? autoFlushEventsInterval) =>
      _$this._autoFlushEventsInterval = autoFlushEventsInterval;

  AWSAnalyticsPinpointConfigBuilder() {
    AWSAnalyticsPinpointConfig._init(this);
  }

  AWSAnalyticsPinpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appId = $v.appId;
      _region = $v.region;
      _autoFlushEventsInterval = $v.autoFlushEventsInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAnalyticsPinpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAnalyticsPinpointConfig;
  }

  @override
  void update(void Function(AWSAnalyticsPinpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAnalyticsPinpointConfig build() => _build();

  _$AWSAnalyticsPinpointConfig _build() {
    final _$result = _$v ??
        new _$AWSAnalyticsPinpointConfig._(
            appId: BuiltValueNullFieldError.checkNotNull(
                appId, r'AWSAnalyticsPinpointConfig', 'appId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AWSAnalyticsPinpointConfig', 'region'),
            autoFlushEventsInterval: BuiltValueNullFieldError.checkNotNull(
                autoFlushEventsInterval,
                r'AWSAnalyticsPinpointConfig',
                'autoFlushEventsInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
