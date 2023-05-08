// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.job_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class JobStatusType extends _i1.SmithyEnum<JobStatusType> {
  const JobStatusType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const JobStatusType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const completed = JobStatusType._(
    0,
    'COMPLETED',
    'COMPLETED',
  );

  static const failed = JobStatusType._(
    1,
    'FAILED',
    'FAILED',
  );

  static const inProgress = JobStatusType._(
    2,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  /// All values of [JobStatusType].
  static const values = <JobStatusType>[
    JobStatusType.completed,
    JobStatusType.failed,
    JobStatusType.inProgress,
  ];

  static const List<_i1.SmithySerializer<JobStatusType>> serializers = [
    _i1.SmithyEnumSerializer(
      'jobStatusType',
      values: values,
      sdkUnknown: JobStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension JobStatusTypeHelpers on List<JobStatusType> {
  /// Returns the value of [JobStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  JobStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [JobStatusType] whose value matches [value].
  JobStatusType byValue(String value) => firstWhere((el) => el.value == value);
}
