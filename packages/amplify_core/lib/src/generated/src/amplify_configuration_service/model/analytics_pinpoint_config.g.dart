// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_pinpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsPinpointConfig extends AnalyticsPinpointConfig {
  @override
  final String appId;
  @override
  final String region;
  @override
  final int autoFlushEventsInterval;

  factory _$AnalyticsPinpointConfig(
          [void Function(AnalyticsPinpointConfigBuilder)? updates]) =>
      (new AnalyticsPinpointConfigBuilder()..update(updates))._build();

  _$AnalyticsPinpointConfig._(
      {required this.appId,
      required this.region,
      required this.autoFlushEventsInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appId, r'AnalyticsPinpointConfig', 'appId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AnalyticsPinpointConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(autoFlushEventsInterval,
        r'AnalyticsPinpointConfig', 'autoFlushEventsInterval');
  }

  @override
  AnalyticsPinpointConfig rebuild(
          void Function(AnalyticsPinpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsPinpointConfigBuilder toBuilder() =>
      new AnalyticsPinpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsPinpointConfig &&
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

class AnalyticsPinpointConfigBuilder
    implements
        Builder<AnalyticsPinpointConfig, AnalyticsPinpointConfigBuilder> {
  _$AnalyticsPinpointConfig? _$v;

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

  AnalyticsPinpointConfigBuilder() {
    AnalyticsPinpointConfig._init(this);
  }

  AnalyticsPinpointConfigBuilder get _$this {
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
  void replace(AnalyticsPinpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsPinpointConfig;
  }

  @override
  void update(void Function(AnalyticsPinpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsPinpointConfig build() => _build();

  _$AnalyticsPinpointConfig _build() {
    final _$result = _$v ??
        new _$AnalyticsPinpointConfig._(
            appId: BuiltValueNullFieldError.checkNotNull(
                appId, r'AnalyticsPinpointConfig', 'appId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AnalyticsPinpointConfig', 'region'),
            autoFlushEventsInterval: BuiltValueNullFieldError.checkNotNull(
                autoFlushEventsInterval,
                r'AnalyticsPinpointConfig',
                'autoFlushEventsInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
