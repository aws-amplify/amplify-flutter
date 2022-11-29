// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.point_in_time_recovery_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PointInTimeRecoveryStatus
    extends _i1.SmithyEnum<PointInTimeRecoveryStatus> {
  const PointInTimeRecoveryStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PointInTimeRecoveryStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = PointInTimeRecoveryStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const enabled = PointInTimeRecoveryStatus._(
    1,
    'ENABLED',
    'ENABLED',
  );

  /// All values of [PointInTimeRecoveryStatus].
  static const values = <PointInTimeRecoveryStatus>[
    PointInTimeRecoveryStatus.disabled,
    PointInTimeRecoveryStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<PointInTimeRecoveryStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'PointInTimeRecoveryStatus',
      values: values,
      sdkUnknown: PointInTimeRecoveryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension PointInTimeRecoveryStatusHelpers on List<PointInTimeRecoveryStatus> {
  /// Returns the value of [PointInTimeRecoveryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PointInTimeRecoveryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PointInTimeRecoveryStatus] whose value matches [value].
  PointInTimeRecoveryStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
