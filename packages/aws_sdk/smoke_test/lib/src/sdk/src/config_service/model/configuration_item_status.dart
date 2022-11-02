// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.configuration_item_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConfigurationItemStatus extends _i1.SmithyEnum<ConfigurationItemStatus> {
  const ConfigurationItemStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConfigurationItemStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const ok = ConfigurationItemStatus._(
    0,
    'OK',
    'OK',
  );

  static const resourceDeleted = ConfigurationItemStatus._(
    1,
    'ResourceDeleted',
    'ResourceDeleted',
  );

  static const resourceDeletedNotRecorded = ConfigurationItemStatus._(
    2,
    'ResourceDeletedNotRecorded',
    'ResourceDeletedNotRecorded',
  );

  static const resourceDiscovered = ConfigurationItemStatus._(
    3,
    'ResourceDiscovered',
    'ResourceDiscovered',
  );

  static const resourceNotRecorded = ConfigurationItemStatus._(
    4,
    'ResourceNotRecorded',
    'ResourceNotRecorded',
  );

  /// All values of [ConfigurationItemStatus].
  static const values = <ConfigurationItemStatus>[
    ConfigurationItemStatus.ok,
    ConfigurationItemStatus.resourceDeleted,
    ConfigurationItemStatus.resourceDeletedNotRecorded,
    ConfigurationItemStatus.resourceDiscovered,
    ConfigurationItemStatus.resourceNotRecorded,
  ];

  static const List<_i1.SmithySerializer<ConfigurationItemStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ConfigurationItemStatus',
      values: values,
      sdkUnknown: ConfigurationItemStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ConfigurationItemStatusHelpers on List<ConfigurationItemStatus> {
  /// Returns the value of [ConfigurationItemStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConfigurationItemStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConfigurationItemStatus] whose value matches [value].
  ConfigurationItemStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
