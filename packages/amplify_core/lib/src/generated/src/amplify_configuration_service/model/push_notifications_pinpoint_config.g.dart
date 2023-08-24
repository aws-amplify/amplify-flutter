// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notifications_pinpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushNotificationsPinpointConfig
    extends PushNotificationsPinpointConfig {
  @override
  final String appId;
  @override
  final String region;

  factory _$PushNotificationsPinpointConfig(
          [void Function(PushNotificationsPinpointConfigBuilder)? updates]) =>
      (new PushNotificationsPinpointConfigBuilder()..update(updates))._build();

  _$PushNotificationsPinpointConfig._(
      {required this.appId, required this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appId, r'PushNotificationsPinpointConfig', 'appId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'PushNotificationsPinpointConfig', 'region');
  }

  @override
  PushNotificationsPinpointConfig rebuild(
          void Function(PushNotificationsPinpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushNotificationsPinpointConfigBuilder toBuilder() =>
      new PushNotificationsPinpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushNotificationsPinpointConfig &&
        appId == other.appId &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PushNotificationsPinpointConfigBuilder
    implements
        Builder<PushNotificationsPinpointConfig,
            PushNotificationsPinpointConfigBuilder> {
  _$PushNotificationsPinpointConfig? _$v;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  PushNotificationsPinpointConfigBuilder();

  PushNotificationsPinpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appId = $v.appId;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushNotificationsPinpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PushNotificationsPinpointConfig;
  }

  @override
  void update(void Function(PushNotificationsPinpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushNotificationsPinpointConfig build() => _build();

  _$PushNotificationsPinpointConfig _build() {
    final _$result = _$v ??
        new _$PushNotificationsPinpointConfig._(
            appId: BuiltValueNullFieldError.checkNotNull(
                appId, r'PushNotificationsPinpointConfig', 'appId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'PushNotificationsPinpointConfig', 'region'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
