// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_drift_detection_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetDriftDetectionStatus
    extends _i1.SmithyEnum<StackSetDriftDetectionStatus> {
  const StackSetDriftDetectionStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetDriftDetectionStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const completed = StackSetDriftDetectionStatus._(
    0,
    'COMPLETED',
    'COMPLETED',
  );

  static const failed = StackSetDriftDetectionStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const inProgress = StackSetDriftDetectionStatus._(
    2,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const partialSuccess = StackSetDriftDetectionStatus._(
    3,
    'PARTIAL_SUCCESS',
    'PARTIAL_SUCCESS',
  );

  static const stopped = StackSetDriftDetectionStatus._(
    4,
    'STOPPED',
    'STOPPED',
  );

  /// All values of [StackSetDriftDetectionStatus].
  static const values = <StackSetDriftDetectionStatus>[
    StackSetDriftDetectionStatus.completed,
    StackSetDriftDetectionStatus.failed,
    StackSetDriftDetectionStatus.inProgress,
    StackSetDriftDetectionStatus.partialSuccess,
    StackSetDriftDetectionStatus.stopped,
  ];

  static const List<_i1.SmithySerializer<StackSetDriftDetectionStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StackSetDriftDetectionStatus',
      values: values,
      sdkUnknown: StackSetDriftDetectionStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetDriftDetectionStatusHelpers
    on List<StackSetDriftDetectionStatus> {
  /// Returns the value of [StackSetDriftDetectionStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetDriftDetectionStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetDriftDetectionStatus] whose value matches [value].
  StackSetDriftDetectionStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
