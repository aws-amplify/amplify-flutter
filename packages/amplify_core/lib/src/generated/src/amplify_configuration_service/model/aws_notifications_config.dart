// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_notifications_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSNotificationsConfig
    extends _i1.SmithyUnion<AWSNotificationsConfig> {
  const AWSNotificationsConfig._();

  const factory AWSNotificationsConfig.push(
      _i2.AWSPushNotificationsConfig push) = AWSNotificationsConfigPush$;

  const factory AWSNotificationsConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSNotificationsConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSNotificationsConfig>> serializers =
      [AWSNotificationsConfigSerializer()];

  _i2.AWSPushNotificationsConfig? get push => null;
  @override
  Object get value => (push)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSNotificationsConfig');
    if (push != null) {
      helper.add(
        r'push',
        push,
      );
    }
    return helper.toString();
  }
}

final class AWSNotificationsConfigPush$ extends AWSNotificationsConfig {
  const AWSNotificationsConfigPush$(this.push) : super._();

  @override
  final _i2.AWSPushNotificationsConfig push;

  @override
  String get name => 'push';
}

final class AWSNotificationsConfigSdkUnknown$ extends AWSNotificationsConfig {
  const AWSNotificationsConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSNotificationsConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSNotificationsConfig> {
  const AWSNotificationsConfigSerializer() : super('AWSNotificationsConfig');

  @override
  Iterable<Type> get types => const [
        AWSNotificationsConfig,
        AWSNotificationsConfigPush$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSNotificationsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'push':
        return AWSNotificationsConfigPush$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.AWSPushNotificationsConfig),
        ) as _i2.AWSPushNotificationsConfig));
    }
    return AWSNotificationsConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSNotificationsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSNotificationsConfigPush$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.AWSPushNotificationsConfig),
          ),
        AWSNotificationsConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
