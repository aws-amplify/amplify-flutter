// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.destination_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DestinationStatus extends _i1.SmithyEnum<DestinationStatus> {
  const DestinationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DestinationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = DestinationStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const disabled = DestinationStatus._(
    1,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = DestinationStatus._(
    2,
    'DISABLING',
    'DISABLING',
  );

  static const enableFailed = DestinationStatus._(
    3,
    'ENABLE_FAILED',
    'ENABLE_FAILED',
  );

  static const enabling = DestinationStatus._(
    4,
    'ENABLING',
    'ENABLING',
  );

  /// All values of [DestinationStatus].
  static const values = <DestinationStatus>[
    DestinationStatus.active,
    DestinationStatus.disabled,
    DestinationStatus.disabling,
    DestinationStatus.enableFailed,
    DestinationStatus.enabling,
  ];

  static const List<_i1.SmithySerializer<DestinationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'DestinationStatus',
      values: values,
      sdkUnknown: DestinationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension DestinationStatusHelpers on List<DestinationStatus> {
  /// Returns the value of [DestinationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DestinationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DestinationStatus] whose value matches [value].
  DestinationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
