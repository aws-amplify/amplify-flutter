// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_instance_detailed_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackInstanceDetailedStatus
    extends _i1.SmithyEnum<StackInstanceDetailedStatus> {
  const StackInstanceDetailedStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackInstanceDetailedStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const cancelled = StackInstanceDetailedStatus._(
    0,
    'CANCELLED',
    'CANCELLED',
  );

  static const failed = StackInstanceDetailedStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const inoperable = StackInstanceDetailedStatus._(
    2,
    'INOPERABLE',
    'INOPERABLE',
  );

  static const pending = StackInstanceDetailedStatus._(
    3,
    'PENDING',
    'PENDING',
  );

  static const running = StackInstanceDetailedStatus._(
    4,
    'RUNNING',
    'RUNNING',
  );

  static const skippedSuspendedAccount = StackInstanceDetailedStatus._(
    5,
    'SKIPPED_SUSPENDED_ACCOUNT',
    'SKIPPED_SUSPENDED_ACCOUNT',
  );

  static const succeeded = StackInstanceDetailedStatus._(
    6,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [StackInstanceDetailedStatus].
  static const values = <StackInstanceDetailedStatus>[
    StackInstanceDetailedStatus.cancelled,
    StackInstanceDetailedStatus.failed,
    StackInstanceDetailedStatus.inoperable,
    StackInstanceDetailedStatus.pending,
    StackInstanceDetailedStatus.running,
    StackInstanceDetailedStatus.skippedSuspendedAccount,
    StackInstanceDetailedStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<StackInstanceDetailedStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StackInstanceDetailedStatus',
      values: values,
      sdkUnknown: StackInstanceDetailedStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackInstanceDetailedStatusHelpers
    on List<StackInstanceDetailedStatus> {
  /// Returns the value of [StackInstanceDetailedStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackInstanceDetailedStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackInstanceDetailedStatus] whose value matches [value].
  StackInstanceDetailedStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
