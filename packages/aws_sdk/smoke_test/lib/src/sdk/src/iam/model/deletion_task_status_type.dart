// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.deletion_task_status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeletionTaskStatusType extends _i1.SmithyEnum<DeletionTaskStatusType> {
  const DeletionTaskStatusType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DeletionTaskStatusType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = DeletionTaskStatusType._(
    0,
    'FAILED',
    'FAILED',
  );

  static const inProgress = DeletionTaskStatusType._(
    1,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const notStarted = DeletionTaskStatusType._(
    2,
    'NOT_STARTED',
    'NOT_STARTED',
  );

  static const succeeded = DeletionTaskStatusType._(
    3,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [DeletionTaskStatusType].
  static const values = <DeletionTaskStatusType>[
    DeletionTaskStatusType.failed,
    DeletionTaskStatusType.inProgress,
    DeletionTaskStatusType.notStarted,
    DeletionTaskStatusType.succeeded,
  ];

  static const List<_i1.SmithySerializer<DeletionTaskStatusType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'DeletionTaskStatusType',
      values: values,
      sdkUnknown: DeletionTaskStatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension DeletionTaskStatusTypeHelpers on List<DeletionTaskStatusType> {
  /// Returns the value of [DeletionTaskStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeletionTaskStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeletionTaskStatusType] whose value matches [value].
  DeletionTaskStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
