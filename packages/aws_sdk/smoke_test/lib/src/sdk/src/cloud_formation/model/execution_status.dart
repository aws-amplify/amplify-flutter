// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.execution_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExecutionStatus extends _i1.SmithyEnum<ExecutionStatus> {
  const ExecutionStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExecutionStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = ExecutionStatus._(
    0,
    'AVAILABLE',
    'AVAILABLE',
  );

  static const executeComplete = ExecutionStatus._(
    1,
    'EXECUTE_COMPLETE',
    'EXECUTE_COMPLETE',
  );

  static const executeFailed = ExecutionStatus._(
    2,
    'EXECUTE_FAILED',
    'EXECUTE_FAILED',
  );

  static const executeInProgress = ExecutionStatus._(
    3,
    'EXECUTE_IN_PROGRESS',
    'EXECUTE_IN_PROGRESS',
  );

  static const obsolete = ExecutionStatus._(
    4,
    'OBSOLETE',
    'OBSOLETE',
  );

  static const unavailable = ExecutionStatus._(
    5,
    'UNAVAILABLE',
    'UNAVAILABLE',
  );

  /// All values of [ExecutionStatus].
  static const values = <ExecutionStatus>[
    ExecutionStatus.available,
    ExecutionStatus.executeComplete,
    ExecutionStatus.executeFailed,
    ExecutionStatus.executeInProgress,
    ExecutionStatus.obsolete,
    ExecutionStatus.unavailable,
  ];

  static const List<_i1.SmithySerializer<ExecutionStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExecutionStatus',
      values: values,
      sdkUnknown: ExecutionStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ExecutionStatusHelpers on List<ExecutionStatus> {
  /// Returns the value of [ExecutionStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExecutionStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExecutionStatus] whose value matches [value].
  ExecutionStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
