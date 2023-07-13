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
            specifiedType: const FullType(AWSAnalyticsConfig)));
    }
    value = object.api;
    if (value != null) {
      result
        ..add('api')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AWSApiConfig)));
    }
    value = object.auth;
    if (value != null) {
      result
        ..add('auth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AWSAuthConfig)));
    }
    value = object.logging;
    if (value != null) {
      result
        ..add('logging')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AWSLoggingConfig)));
    }
    value = object.notifications;
    if (value != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AWSNotificationsConfig)));
    }
    value = object.storage;
    if (value != null) {
      result
        ..add('storage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AWSStorageConfig)));
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
                  specifiedType: const FullType(AWSAnalyticsConfig))
              as AWSAnalyticsConfig?;
          break;
        case 'api':
          result.api.replace(serializers.deserialize(value,
              specifiedType: const FullType(AWSApiConfig))! as AWSApiConfig);
          break;
        case 'auth':
          result.auth = serializers.deserialize(value,
              specifiedType: const FullType(AWSAuthConfig)) as AWSAuthConfig?;
          break;
        case 'logging':
          result.logging = serializers.deserialize(value,
                  specifiedType: const FullType(AWSLoggingConfig))
              as AWSLoggingConfig?;
          break;
        case 'notifications':
          result.notifications = serializers.deserialize(value,
                  specifiedType: const FullType(AWSNotificationsConfig))
              as AWSNotificationsConfig?;
          break;
        case 'storage':
          result.storage = serializers.deserialize(value,
                  specifiedType: const FullType(AWSStorageConfig))
              as AWSStorageConfig?;
          break;
      }
    }

    return result.build();
  }
}

class _$AWSAmplifyConfig extends AWSAmplifyConfig {
  @override
  final AWSAnalyticsConfig? analytics;
  @override
  final AWSApiConfig? api;
  @override
  final AWSAuthConfig? auth;
  @override
  final AWSLoggingConfig? logging;
  @override
  final AWSNotificationsConfig? notifications;
  @override
  final AWSStorageConfig? storage;

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

  AWSAnalyticsConfig? _analytics;
  AWSAnalyticsConfig? get analytics => _$this._analytics;
  set analytics(AWSAnalyticsConfig? analytics) => _$this._analytics = analytics;

  AWSApiConfigBuilder? _api;
  AWSApiConfigBuilder get api => _$this._api ??= new AWSApiConfigBuilder();
  set api(AWSApiConfigBuilder? api) => _$this._api = api;

  AWSAuthConfig? _auth;
  AWSAuthConfig? get auth => _$this._auth;
  set auth(AWSAuthConfig? auth) => _$this._auth = auth;

  AWSLoggingConfig? _logging;
  AWSLoggingConfig? get logging => _$this._logging;
  set logging(AWSLoggingConfig? logging) => _$this._logging = logging;

  AWSNotificationsConfig? _notifications;
  AWSNotificationsConfig? get notifications => _$this._notifications;
  set notifications(AWSNotificationsConfig? notifications) =>
      _$this._notifications = notifications;

  AWSStorageConfig? _storage;
  AWSStorageConfig? get storage => _$this._storage;
  set storage(AWSStorageConfig? storage) => _$this._storage = storage;

  AWSAmplifyConfigBuilder();

  AWSAmplifyConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analytics = $v.analytics;
      _api = $v.api?.toBuilder();
      _auth = $v.auth;
      _logging = $v.logging;
      _notifications = $v.notifications;
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
              notifications: notifications,
              storage: storage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'api';
        _api?.build();
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
