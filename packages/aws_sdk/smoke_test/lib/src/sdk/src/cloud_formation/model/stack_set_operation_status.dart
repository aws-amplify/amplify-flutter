// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_operation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetOperationStatus extends _i1.SmithyEnum<StackSetOperationStatus> {
  const StackSetOperationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetOperationStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = StackSetOperationStatus._(
    0,
    'FAILED',
    'FAILED',
  );

  static const queued = StackSetOperationStatus._(
    1,
    'QUEUED',
    'QUEUED',
  );

  static const running = StackSetOperationStatus._(
    2,
    'RUNNING',
    'RUNNING',
  );

  static const stopped = StackSetOperationStatus._(
    3,
    'STOPPED',
    'STOPPED',
  );

  static const stopping = StackSetOperationStatus._(
    4,
    'STOPPING',
    'STOPPING',
  );

  static const succeeded = StackSetOperationStatus._(
    5,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [StackSetOperationStatus].
  static const values = <StackSetOperationStatus>[
    StackSetOperationStatus.failed,
    StackSetOperationStatus.queued,
    StackSetOperationStatus.running,
    StackSetOperationStatus.stopped,
    StackSetOperationStatus.stopping,
    StackSetOperationStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<StackSetOperationStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'StackSetOperationStatus',
      values: values,
      sdkUnknown: StackSetOperationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetOperationStatusHelpers on List<StackSetOperationStatus> {
  /// Returns the value of [StackSetOperationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetOperationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetOperationStatus] whose value matches [value].
  StackSetOperationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
