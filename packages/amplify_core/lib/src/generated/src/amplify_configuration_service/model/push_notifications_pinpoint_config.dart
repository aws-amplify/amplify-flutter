// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.push_notifications_pinpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'push_notifications_pinpoint_config.g.dart';

/// The Amplify Push Notifications Pinpoint plugin configuration.
abstract class PushNotificationsPinpointConfig
    with
        _i1.AWSEquatable<PushNotificationsPinpointConfig>
    implements
        Built<PushNotificationsPinpointConfig,
            PushNotificationsPinpointConfigBuilder> {
  /// The Amplify Push Notifications Pinpoint plugin configuration.
  factory PushNotificationsPinpointConfig({
    required String appId,
    required String region,
  }) {
    return _$PushNotificationsPinpointConfig._(
      appId: appId,
      region: region,
    );
  }

  /// The Amplify Push Notifications Pinpoint plugin configuration.
  factory PushNotificationsPinpointConfig.build(
          [void Function(PushNotificationsPinpointConfigBuilder) updates]) =
      _$PushNotificationsPinpointConfig;

  const PushNotificationsPinpointConfig._();

  static const List<_i2.SmithySerializer<PushNotificationsPinpointConfig>>
      serializers = [PushNotificationsPinpointConfigSerializer()];

  String get appId;
  String get region;
  @override
  List<Object?> get props => [
        appId,
        region,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PushNotificationsPinpointConfig')
          ..add(
            'appId',
            appId,
          )
          ..add(
            'region',
            region,
          );
    return helper.toString();
  }
}

class PushNotificationsPinpointConfigSerializer
    extends _i2.StructuredSmithySerializer<PushNotificationsPinpointConfig> {
  const PushNotificationsPinpointConfigSerializer()
      : super('PushNotificationsPinpointConfig');

  @override
  Iterable<Type> get types => const [
        PushNotificationsPinpointConfig,
        _$PushNotificationsPinpointConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  PushNotificationsPinpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushNotificationsPinpointConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'appId':
          result.appId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PushNotificationsPinpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PushNotificationsPinpointConfig(:appId, :region) = object;
    result$.addAll([
      'appId',
      serializers.serialize(
        appId,
        specifiedType: const FullType(String),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
