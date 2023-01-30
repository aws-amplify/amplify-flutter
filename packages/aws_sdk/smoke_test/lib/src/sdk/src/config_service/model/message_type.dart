// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.message_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MessageType extends _i1.SmithyEnum<MessageType> {
  const MessageType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const MessageType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const configurationItemChangeNotification = MessageType._(
    0,
    'ConfigurationItemChangeNotification',
    'ConfigurationItemChangeNotification',
  );

  static const configurationSnapshotDeliveryCompleted = MessageType._(
    1,
    'ConfigurationSnapshotDeliveryCompleted',
    'ConfigurationSnapshotDeliveryCompleted',
  );

  static const oversizedConfigurationItemChangeNotification = MessageType._(
    2,
    'OversizedConfigurationItemChangeNotification',
    'OversizedConfigurationItemChangeNotification',
  );

  static const scheduledNotification = MessageType._(
    3,
    'ScheduledNotification',
    'ScheduledNotification',
  );

  /// All values of [MessageType].
  static const values = <MessageType>[
    MessageType.configurationItemChangeNotification,
    MessageType.configurationSnapshotDeliveryCompleted,
    MessageType.oversizedConfigurationItemChangeNotification,
    MessageType.scheduledNotification,
  ];

  static const List<_i1.SmithySerializer<MessageType>> serializers = [
    _i1.SmithyEnumSerializer(
      'MessageType',
      values: values,
      sdkUnknown: MessageType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension MessageTypeHelpers on List<MessageType> {
  /// Returns the value of [MessageType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MessageType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MessageType] whose value matches [value].
  MessageType byValue(String value) => firstWhere((el) => el.value == value);
}
