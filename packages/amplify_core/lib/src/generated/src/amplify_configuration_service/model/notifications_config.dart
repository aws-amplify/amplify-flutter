// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.notifications_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/push_notifications_config.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'notifications_config.g.dart';

/// The Amplify Notifications category configuration.
abstract class NotificationsConfig
    with _i1.AWSEquatable<NotificationsConfig>
    implements Built<NotificationsConfig, NotificationsConfigBuilder> {
  /// The Amplify Notifications category configuration.
  factory NotificationsConfig({_i2.PushNotificationsConfig? push}) {
    return _$NotificationsConfig._(push: push);
  }

  /// The Amplify Notifications category configuration.
  factory NotificationsConfig.build(
          [void Function(NotificationsConfigBuilder) updates]) =
      _$NotificationsConfig;

  const NotificationsConfig._();

  static const List<_i3.SmithySerializer<NotificationsConfig>> serializers = [
    NotificationsConfigSerializer()
  ];

  /// The Amplify Push Notifications subcategory configuration.
  _i2.PushNotificationsConfig? get push;
  @override
  List<Object?> get props => [push];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotificationsConfig')
      ..add(
        'push',
        push,
      );
    return helper.toString();
  }
}

class NotificationsConfigSerializer
    extends _i3.StructuredSmithySerializer<NotificationsConfig> {
  const NotificationsConfigSerializer() : super('NotificationsConfig');

  @override
  Iterable<Type> get types => const [
        NotificationsConfig,
        _$NotificationsConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  NotificationsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'push':
          result.push = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PushNotificationsConfig),
          ) as _i2.PushNotificationsConfig);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NotificationsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NotificationsConfig(:push) = object;
    if (push != null) {
      result$
        ..add('push')
        ..add(serializers.serialize(
          push,
          specifiedType: const FullType(_i2.PushNotificationsConfig),
        ));
    }
    return result$;
  }
}
