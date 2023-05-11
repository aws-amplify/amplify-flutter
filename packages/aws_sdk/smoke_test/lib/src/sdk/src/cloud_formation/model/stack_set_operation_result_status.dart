// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_operation_result_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetOperationResultStatus
    extends _i1.SmithyEnum<StackSetOperationResultStatus> {
  const StackSetOperationResultStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetOperationResultStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const cancelled = StackSetOperationResultStatus._(
    0,
    'CANCELLED',
    'CANCELLED',
  );

  static const failed = StackSetOperationResultStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const pending = StackSetOperationResultStatus._(
    2,
    'PENDING',
    'PENDING',
  );

  static const running = StackSetOperationResultStatus._(
    3,
    'RUNNING',
    'RUNNING',
  );

  static const succeeded = StackSetOperationResultStatus._(
    4,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [StackSetOperationResultStatus].
  static const values = <StackSetOperationResultStatus>[
    StackSetOperationResultStatus.cancelled,
    StackSetOperationResultStatus.failed,
    StackSetOperationResultStatus.pending,
    StackSetOperationResultStatus.running,
    StackSetOperationResultStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<StackSetOperationResultStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StackSetOperationResultStatus',
      values: values,
      sdkUnknown: StackSetOperationResultStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetOperationResultStatusHelpers
    on List<StackSetOperationResultStatus> {
  /// Returns the value of [StackSetOperationResultStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetOperationResultStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetOperationResultStatus] whose value matches [value].
  StackSetOperationResultStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
