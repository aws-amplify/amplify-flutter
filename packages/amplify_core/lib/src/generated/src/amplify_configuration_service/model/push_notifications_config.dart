// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.push_notifications_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/push_notifications_pinpoint_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The Amplify Push Notifications subcategory configuration.
sealed class PushNotificationsConfig
    extends _i1.SmithyUnion<PushNotificationsConfig> {
  const PushNotificationsConfig._();

  factory PushNotificationsConfig.pinpoint({
    required String appId,
    required String region,
  }) =>
      PushNotificationsConfigPinpoint$(_i2.PushNotificationsPinpointConfig(
        appId: appId,
        region: region,
      ));

  const factory PushNotificationsConfig.sdkUnknown(
    String name,
    Object value,
  ) = PushNotificationsConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<PushNotificationsConfig>> serializers =
      [PushNotificationsConfigSerializer()];

  /// The Amplify Push Notifications Pinpoint plugin configuration.
  _i2.PushNotificationsPinpointConfig? get pinpoint => null;
  @override
  Object get value => (pinpoint)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PushNotificationsConfig');
    if (pinpoint != null) {
      helper.add(
        r'pinpoint',
        pinpoint,
      );
    }
    return helper.toString();
  }
}

final class PushNotificationsConfigPinpoint$ extends PushNotificationsConfig {
  const PushNotificationsConfigPinpoint$(this.pinpoint) : super._();

  @override
  final _i2.PushNotificationsPinpointConfig pinpoint;

  @override
  String get name => 'pinpoint';
}

final class PushNotificationsConfigSdkUnknown$ extends PushNotificationsConfig {
  const PushNotificationsConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PushNotificationsConfigSerializer
    extends _i1.StructuredSmithySerializer<PushNotificationsConfig> {
  const PushNotificationsConfigSerializer() : super('PushNotificationsConfig');

  @override
  Iterable<Type> get types => const [
        PushNotificationsConfig,
        PushNotificationsConfigPinpoint$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  PushNotificationsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'pinpoint':
        return PushNotificationsConfigPinpoint$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.PushNotificationsPinpointConfig),
        ) as _i2.PushNotificationsPinpointConfig));
    }
    return PushNotificationsConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PushNotificationsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        PushNotificationsConfigPinpoint$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.PushNotificationsPinpointConfig),
          ),
        PushNotificationsConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
