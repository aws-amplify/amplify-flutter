// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_drift_detection_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackDriftDetectionStatus
    extends _i1.SmithyEnum<StackDriftDetectionStatus> {
  const StackDriftDetectionStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackDriftDetectionStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const detectionComplete = StackDriftDetectionStatus._(
    0,
    'DETECTION_COMPLETE',
    'DETECTION_COMPLETE',
  );

  static const detectionFailed = StackDriftDetectionStatus._(
    1,
    'DETECTION_FAILED',
    'DETECTION_FAILED',
  );

  static const detectionInProgress = StackDriftDetectionStatus._(
    2,
    'DETECTION_IN_PROGRESS',
    'DETECTION_IN_PROGRESS',
  );

  /// All values of [StackDriftDetectionStatus].
  static const values = <StackDriftDetectionStatus>[
    StackDriftDetectionStatus.detectionComplete,
    StackDriftDetectionStatus.detectionFailed,
    StackDriftDetectionStatus.detectionInProgress,
  ];

  static const List<_i1.SmithySerializer<StackDriftDetectionStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StackDriftDetectionStatus',
      values: values,
      sdkUnknown: StackDriftDetectionStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackDriftDetectionStatusHelpers on List<StackDriftDetectionStatus> {
  /// Returns the value of [StackDriftDetectionStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackDriftDetectionStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackDriftDetectionStatus] whose value matches [value].
  StackDriftDetectionStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
