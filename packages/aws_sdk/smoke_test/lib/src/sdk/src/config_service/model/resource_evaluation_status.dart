// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_evaluation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceEvaluationStatus
    extends _i1.SmithyEnum<ResourceEvaluationStatus> {
  const ResourceEvaluationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceEvaluationStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failed = ResourceEvaluationStatus._(
    0,
    'FAILED',
    'FAILED',
  );

  static const inProgress = ResourceEvaluationStatus._(
    1,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const succeeded = ResourceEvaluationStatus._(
    2,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [ResourceEvaluationStatus].
  static const values = <ResourceEvaluationStatus>[
    ResourceEvaluationStatus.failed,
    ResourceEvaluationStatus.inProgress,
    ResourceEvaluationStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<ResourceEvaluationStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceEvaluationStatus',
      values: values,
      sdkUnknown: ResourceEvaluationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ResourceEvaluationStatusHelpers on List<ResourceEvaluationStatus> {
  /// Returns the value of [ResourceEvaluationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceEvaluationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceEvaluationStatus] whose value matches [value].
  ResourceEvaluationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
