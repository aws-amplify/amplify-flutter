// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.operation_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OperationStatus extends _i1.SmithyEnum<OperationStatus> {
  const OperationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OperationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const failed = OperationStatus._(
    0,
    'FAILED',
    'FAILED',
  );

  static const inProgress = OperationStatus._(
    1,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const pending = OperationStatus._(
    2,
    'PENDING',
    'PENDING',
  );

  static const success = OperationStatus._(
    3,
    'SUCCESS',
    'SUCCESS',
  );

  /// All values of [OperationStatus].
  static const values = <OperationStatus>[
    OperationStatus.failed,
    OperationStatus.inProgress,
    OperationStatus.pending,
    OperationStatus.success,
  ];

  static const List<_i1.SmithySerializer<OperationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'OperationStatus',
      values: values,
      sdkUnknown: OperationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension OperationStatusHelpers on List<OperationStatus> {
  /// Returns the value of [OperationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OperationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OperationStatus] whose value matches [value].
  OperationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
