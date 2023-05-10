// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_drift_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetDriftStatus extends _i1.SmithyEnum<StackSetDriftStatus> {
  const StackSetDriftStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetDriftStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const drifted = StackSetDriftStatus._(
    0,
    'DRIFTED',
    'DRIFTED',
  );

  static const inSync = StackSetDriftStatus._(
    1,
    'IN_SYNC',
    'IN_SYNC',
  );

  static const notChecked = StackSetDriftStatus._(
    2,
    'NOT_CHECKED',
    'NOT_CHECKED',
  );

  /// All values of [StackSetDriftStatus].
  static const values = <StackSetDriftStatus>[
    StackSetDriftStatus.drifted,
    StackSetDriftStatus.inSync,
    StackSetDriftStatus.notChecked,
  ];

  static const List<_i1.SmithySerializer<StackSetDriftStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StackSetDriftStatus',
      values: values,
      sdkUnknown: StackSetDriftStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetDriftStatusHelpers on List<StackSetDriftStatus> {
  /// Returns the value of [StackSetDriftStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetDriftStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetDriftStatus] whose value matches [value].
  StackSetDriftStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
