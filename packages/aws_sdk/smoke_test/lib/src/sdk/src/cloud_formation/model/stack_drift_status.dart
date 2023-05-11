// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_drift_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackDriftStatus extends _i1.SmithyEnum<StackDriftStatus> {
  const StackDriftStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackDriftStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const drifted = StackDriftStatus._(
    0,
    'DRIFTED',
    'DRIFTED',
  );

  static const inSync = StackDriftStatus._(
    1,
    'IN_SYNC',
    'IN_SYNC',
  );

  static const notChecked = StackDriftStatus._(
    2,
    'NOT_CHECKED',
    'NOT_CHECKED',
  );

  static const unknown = StackDriftStatus._(
    3,
    'UNKNOWN',
    'UNKNOWN',
  );

  /// All values of [StackDriftStatus].
  static const values = <StackDriftStatus>[
    StackDriftStatus.drifted,
    StackDriftStatus.inSync,
    StackDriftStatus.notChecked,
    StackDriftStatus.unknown,
  ];

  static const List<_i1.SmithySerializer<StackDriftStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StackDriftStatus',
      values: values,
      sdkUnknown: StackDriftStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackDriftStatusHelpers on List<StackDriftStatus> {
  /// Returns the value of [StackDriftStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackDriftStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackDriftStatus] whose value matches [value].
  StackDriftStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
