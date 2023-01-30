// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.method_setting; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_cache_control_header_strategy.dart'
    as _i2;

part 'method_setting.g.dart';

/// Specifies the method setting properties.
abstract class MethodSetting
    with _i1.AWSEquatable<MethodSetting>
    implements Built<MethodSetting, MethodSettingBuilder> {
  /// Specifies the method setting properties.
  factory MethodSetting({
    bool? cacheDataEncrypted,
    int? cacheTtlInSeconds,
    bool? cachingEnabled,
    bool? dataTraceEnabled,
    String? loggingLevel,
    bool? metricsEnabled,
    bool? requireAuthorizationForCacheControl,
    int? throttlingBurstLimit,
    double? throttlingRateLimit,
    _i2.UnauthorizedCacheControlHeaderStrategy?
        unauthorizedCacheControlHeaderStrategy,
  }) {
    return _$MethodSetting._(
      cacheDataEncrypted: cacheDataEncrypted,
      cacheTtlInSeconds: cacheTtlInSeconds,
      cachingEnabled: cachingEnabled,
      dataTraceEnabled: dataTraceEnabled,
      loggingLevel: loggingLevel,
      metricsEnabled: metricsEnabled,
      requireAuthorizationForCacheControl: requireAuthorizationForCacheControl,
      throttlingBurstLimit: throttlingBurstLimit,
      throttlingRateLimit: throttlingRateLimit,
      unauthorizedCacheControlHeaderStrategy:
          unauthorizedCacheControlHeaderStrategy,
    );
  }

  /// Specifies the method setting properties.
  factory MethodSetting.build([void Function(MethodSettingBuilder) updates]) =
      _$MethodSetting;

  const MethodSetting._();

  static const List<_i3.SmithySerializer> serializers = [
    MethodSettingRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodSettingBuilder b) {}

  /// Specifies whether the cached responses are encrypted. The PATCH path for this setting is `/{method\_setting\_key}/caching/dataEncrypted`, and the value is a Boolean.
  bool? get cacheDataEncrypted;

  /// Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is `/{method\_setting\_key}/caching/ttlInSeconds`, and the value is an integer.
  int? get cacheTtlInSeconds;

  /// Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is `/{method\_setting\_key}/caching/enabled`, and the value is a Boolean.
  bool? get cachingEnabled;

  /// Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is `/{method\_setting\_key}/logging/dataTrace`, and the value is a Boolean.
  bool? get dataTraceEnabled;

  /// Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is `/{method\_setting\_key}/logging/loglevel`, and the available levels are `OFF`, `ERROR`, and `INFO`. Choose `ERROR` to write only error-level entries to CloudWatch Logs, or choose `INFO` to include all `ERROR` events as well as extra informational events.
  String? get loggingLevel;

  /// Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is `/{method\_setting\_key}/metrics/enabled`, and the value is a Boolean.
  bool? get metricsEnabled;

  /// Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is `/{method\_setting\_key}/caching/requireAuthorizationForCacheControl`, and the value is a Boolean.
  bool? get requireAuthorizationForCacheControl;

  /// Specifies the throttling burst limit. The PATCH path for this setting is `/{method\_setting\_key}/throttling/burstLimit`, and the value is an integer.
  int? get throttlingBurstLimit;

  /// Specifies the throttling rate limit. The PATCH path for this setting is `/{method\_setting\_key}/throttling/rateLimit`, and the value is a double.
  double? get throttlingRateLimit;

  /// Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is `/{method\_setting\_key}/caching/unauthorizedCacheControlHeaderStrategy`, and the available values are `FAIL\_WITH\_403`, `SUCCEED\_WITH\_RESPONSE_HEADER`, `SUCCEED\_WITHOUT\_RESPONSE_HEADER`.
  _i2.UnauthorizedCacheControlHeaderStrategy?
      get unauthorizedCacheControlHeaderStrategy;
  @override
  List<Object?> get props => [
        cacheDataEncrypted,
        cacheTtlInSeconds,
        cachingEnabled,
        dataTraceEnabled,
        loggingLevel,
        metricsEnabled,
        requireAuthorizationForCacheControl,
        throttlingBurstLimit,
        throttlingRateLimit,
        unauthorizedCacheControlHeaderStrategy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MethodSetting');
    helper.add(
      'cacheDataEncrypted',
      cacheDataEncrypted,
    );
    helper.add(
      'cacheTtlInSeconds',
      cacheTtlInSeconds,
    );
    helper.add(
      'cachingEnabled',
      cachingEnabled,
    );
    helper.add(
      'dataTraceEnabled',
      dataTraceEnabled,
    );
    helper.add(
      'loggingLevel',
      loggingLevel,
    );
    helper.add(
      'metricsEnabled',
      metricsEnabled,
    );
    helper.add(
      'requireAuthorizationForCacheControl',
      requireAuthorizationForCacheControl,
    );
    helper.add(
      'throttlingBurstLimit',
      throttlingBurstLimit,
    );
    helper.add(
      'throttlingRateLimit',
      throttlingRateLimit,
    );
    helper.add(
      'unauthorizedCacheControlHeaderStrategy',
      unauthorizedCacheControlHeaderStrategy,
    );
    return helper.toString();
  }
}

class MethodSettingRestJson1Serializer
    extends _i3.StructuredSmithySerializer<MethodSetting> {
  const MethodSettingRestJson1Serializer() : super('MethodSetting');

  @override
  Iterable<Type> get types => const [
        MethodSetting,
        _$MethodSetting,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MethodSetting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MethodSettingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'cacheDataEncrypted':
          if (value != null) {
            result.cacheDataEncrypted = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'cacheTtlInSeconds':
          if (value != null) {
            result.cacheTtlInSeconds = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'cachingEnabled':
          if (value != null) {
            result.cachingEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'dataTraceEnabled':
          if (value != null) {
            result.dataTraceEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'loggingLevel':
          if (value != null) {
            result.loggingLevel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'metricsEnabled':
          if (value != null) {
            result.metricsEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'requireAuthorizationForCacheControl':
          if (value != null) {
            result.requireAuthorizationForCacheControl =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'throttlingBurstLimit':
          if (value != null) {
            result.throttlingBurstLimit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'throttlingRateLimit':
          if (value != null) {
            result.throttlingRateLimit = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'unauthorizedCacheControlHeaderStrategy':
          if (value != null) {
            result.unauthorizedCacheControlHeaderStrategy =
                (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.UnauthorizedCacheControlHeaderStrategy),
            ) as _i2.UnauthorizedCacheControlHeaderStrategy);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MethodSetting);
    final result = <Object?>[];
    if (payload.cacheDataEncrypted != null) {
      result
        ..add('cacheDataEncrypted')
        ..add(serializers.serialize(
          payload.cacheDataEncrypted!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.cacheTtlInSeconds != null) {
      result
        ..add('cacheTtlInSeconds')
        ..add(serializers.serialize(
          payload.cacheTtlInSeconds!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.cachingEnabled != null) {
      result
        ..add('cachingEnabled')
        ..add(serializers.serialize(
          payload.cachingEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.dataTraceEnabled != null) {
      result
        ..add('dataTraceEnabled')
        ..add(serializers.serialize(
          payload.dataTraceEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.loggingLevel != null) {
      result
        ..add('loggingLevel')
        ..add(serializers.serialize(
          payload.loggingLevel!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.metricsEnabled != null) {
      result
        ..add('metricsEnabled')
        ..add(serializers.serialize(
          payload.metricsEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.requireAuthorizationForCacheControl != null) {
      result
        ..add('requireAuthorizationForCacheControl')
        ..add(serializers.serialize(
          payload.requireAuthorizationForCacheControl!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.throttlingBurstLimit != null) {
      result
        ..add('throttlingBurstLimit')
        ..add(serializers.serialize(
          payload.throttlingBurstLimit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.throttlingRateLimit != null) {
      result
        ..add('throttlingRateLimit')
        ..add(serializers.serialize(
          payload.throttlingRateLimit!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.unauthorizedCacheControlHeaderStrategy != null) {
      result
        ..add('unauthorizedCacheControlHeaderStrategy')
        ..add(serializers.serialize(
          payload.unauthorizedCacheControlHeaderStrategy!,
          specifiedType:
              const FullType(_i2.UnauthorizedCacheControlHeaderStrategy),
        ));
    }
    return result;
  }
}
