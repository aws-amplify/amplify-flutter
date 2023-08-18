// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_amplify_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AWSAmplifyConfig> _$aWSAmplifyConfigSerializer =
    new _$AWSAmplifyConfigSerializer();

class _$AWSAmplifyConfigSerializer
    implements StructuredSerializer<AWSAmplifyConfig> {
  @override
  final Iterable<Type> types = const [AWSAmplifyConfig, _$AWSAmplifyConfig];
  @override
  final String wireName = 'AWSAmplifyConfig';

  @override
  Iterable<Object?> serialize(Serializers serializers, AWSAmplifyConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.analytics;
    if (value != null) {
      result
        ..add('analytics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AnalyticsConfig)));
    }
    value = object.api;
    if (value != null) {
      result
        ..add('api')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ApiConfig)));
    }
    value = object.auth;
    if (value != null) {
      result
        ..add('auth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AuthConfig)));
    }
    value = object.logging;
    if (value != null) {
      result
        ..add('logging')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LoggingConfig)));
    }
    value = object.notifications;
    if (value != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(NotificationsConfig)));
    }
    value = object.storage;
    if (value != null) {
      result
        ..add('storage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StorageConfig)));
    }
    return result;
  }

  @override
  AWSAmplifyConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AWSAmplifyConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'analytics':
          result.analytics = serializers.deserialize(value,
                  specifiedType: const FullType(AnalyticsConfig))
              as AnalyticsConfig?;
          break;
        case 'api':
          result.api.replace(serializers.deserialize(value,
              specifiedType: const FullType(ApiConfig))! as ApiConfig);
          break;
        case 'auth':
          result.auth = serializers.deserialize(value,
              specifiedType: const FullType(AuthConfig)) as AuthConfig?;
          break;
        case 'logging':
          result.logging = serializers.deserialize(value,
              specifiedType: const FullType(LoggingConfig)) as LoggingConfig?;
          break;
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NotificationsConfig))!
              as NotificationsConfig);
          break;
        case 'storage':
          result.storage = serializers.deserialize(value,
              specifiedType: const FullType(StorageConfig)) as StorageConfig?;
          break;
      }
    }

    return result.build();
  }
}

class _$AWSAmplifyConfig extends AWSAmplifyConfig {
  @override
  final AnalyticsConfig? analytics;
  @override
  final ApiConfig? api;
  @override
  final AuthConfig? auth;
  @override
  final LoggingConfig? logging;
  @override
  final NotificationsConfig? notifications;
  @override
  final StorageConfig? storage;

  factory _$AWSAmplifyConfig(
          [void Function(AWSAmplifyConfigBuilder)? updates]) =>
      (new AWSAmplifyConfigBuilder()..update(updates))._build();

  _$AWSAmplifyConfig._(
      {this.analytics,
      this.api,
      this.auth,
      this.logging,
      this.notifications,
      this.storage})
      : super._();

  @override
  AWSAmplifyConfig rebuild(void Function(AWSAmplifyConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAmplifyConfigBuilder toBuilder() =>
      new AWSAmplifyConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAmplifyConfig &&
        analytics == other.analytics &&
        api == other.api &&
        auth == other.auth &&
        logging == other.logging &&
        notifications == other.notifications &&
        storage == other.storage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, analytics.hashCode);
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, logging.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAmplifyConfigBuilder
    implements Builder<AWSAmplifyConfig, AWSAmplifyConfigBuilder> {
  _$AWSAmplifyConfig? _$v;

  AnalyticsConfig? _analytics;
  AnalyticsConfig? get analytics => _$this._analytics;
  set analytics(AnalyticsConfig? analytics) => _$this._analytics = analytics;

  ApiConfigBuilder? _api;
  ApiConfigBuilder get api => _$this._api ??= new ApiConfigBuilder();
  set api(ApiConfigBuilder? api) => _$this._api = api;

  AuthConfig? _auth;
  AuthConfig? get auth => _$this._auth;
  set auth(AuthConfig? auth) => _$this._auth = auth;

  LoggingConfig? _logging;
  LoggingConfig? get logging => _$this._logging;
  set logging(LoggingConfig? logging) => _$this._logging = logging;

  NotificationsConfigBuilder? _notifications;
  NotificationsConfigBuilder get notifications =>
      _$this._notifications ??= new NotificationsConfigBuilder();
  set notifications(NotificationsConfigBuilder? notifications) =>
      _$this._notifications = notifications;

  StorageConfig? _storage;
  StorageConfig? get storage => _$this._storage;
  set storage(StorageConfig? storage) => _$this._storage = storage;

  AWSAmplifyConfigBuilder();

  AWSAmplifyConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analytics = $v.analytics;
      _api = $v.api?.toBuilder();
      _auth = $v.auth;
      _logging = $v.logging;
      _notifications = $v.notifications?.toBuilder();
      _storage = $v.storage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAmplifyConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAmplifyConfig;
  }

  @override
  void update(void Function(AWSAmplifyConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAmplifyConfig build() => _build();

  _$AWSAmplifyConfig _build() {
    _$AWSAmplifyConfig _$result;
    try {
      _$result = _$v ??
          new _$AWSAmplifyConfig._(
              analytics: analytics,
              api: _api?.build(),
              auth: auth,
              logging: logging,
              notifications: _notifications?.build(),
              storage: storage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'api';
        _api?.build();

        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAmplifyConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
