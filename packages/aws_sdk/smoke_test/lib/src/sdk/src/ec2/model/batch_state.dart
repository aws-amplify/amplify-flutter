// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.batch_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BatchState extends _i1.SmithyEnum<BatchState> {
  const BatchState._(
    super.index,
    super.name,
    super.value,
  );

  const BatchState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = BatchState._(
    0,
    'ACTIVE',
    'active',
  );

  static const cancelled = BatchState._(
    1,
    'CANCELLED',
    'cancelled',
  );

  static const cancelledRunning = BatchState._(
    2,
    'CANCELLED_RUNNING',
    'cancelled_running',
  );

  static const cancelledTerminatingInstances = BatchState._(
    3,
    'CANCELLED_TERMINATING_INSTANCES',
    'cancelled_terminating',
  );

  static const failed = BatchState._(
    4,
    'FAILED',
    'failed',
  );

  static const modifying = BatchState._(
    5,
    'MODIFYING',
    'modifying',
  );

  static const submitted = BatchState._(
    6,
    'SUBMITTED',
    'submitted',
  );

  /// All values of [BatchState].
  static const values = <BatchState>[
    BatchState.active,
    BatchState.cancelled,
    BatchState.cancelledRunning,
    BatchState.cancelledTerminatingInstances,
    BatchState.failed,
    BatchState.modifying,
    BatchState.submitted,
  ];

  static const List<_i1.SmithySerializer<BatchState>> serializers = [
    _i1.SmithyEnumSerializer(
      'BatchState',
      values: values,
      sdkUnknown: BatchState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BatchStateHelpers on List<BatchState> {
  /// Returns the value of [BatchState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BatchState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BatchState] whose value matches [value].
  BatchState byValue(String value) => firstWhere((el) => el.value == value);
}
