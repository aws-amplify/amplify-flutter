// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_push_notifications_pinpoint_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSPushNotificationsPinpointConfig
    extends AWSPushNotificationsPinpointConfig {
  @override
  final String appId;
  @override
  final String region;

  factory _$AWSPushNotificationsPinpointConfig(
          [void Function(AWSPushNotificationsPinpointConfigBuilder)?
              updates]) =>
      (new AWSPushNotificationsPinpointConfigBuilder()..update(updates))
          ._build();

  _$AWSPushNotificationsPinpointConfig._(
      {required this.appId, required this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appId, r'AWSPushNotificationsPinpointConfig', 'appId');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSPushNotificationsPinpointConfig', 'region');
  }

  @override
  AWSPushNotificationsPinpointConfig rebuild(
          void Function(AWSPushNotificationsPinpointConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSPushNotificationsPinpointConfigBuilder toBuilder() =>
      new AWSPushNotificationsPinpointConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSPushNotificationsPinpointConfig &&
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

class AWSPushNotificationsPinpointConfigBuilder
    implements
        Builder<AWSPushNotificationsPinpointConfig,
            AWSPushNotificationsPinpointConfigBuilder> {
  _$AWSPushNotificationsPinpointConfig? _$v;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  AWSPushNotificationsPinpointConfigBuilder();

  AWSPushNotificationsPinpointConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appId = $v.appId;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSPushNotificationsPinpointConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSPushNotificationsPinpointConfig;
  }

  @override
  void update(
      void Function(AWSPushNotificationsPinpointConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSPushNotificationsPinpointConfig build() => _build();

  _$AWSPushNotificationsPinpointConfig _build() {
    final _$result = _$v ??
        new _$AWSPushNotificationsPinpointConfig._(
            appId: BuiltValueNullFieldError.checkNotNull(
                appId, r'AWSPushNotificationsPinpointConfig', 'appId'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AWSPushNotificationsPinpointConfig', 'region'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
