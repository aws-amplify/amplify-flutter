// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_resource_drift_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackResourceDriftStatus
    extends _i1.SmithyEnum<StackResourceDriftStatus> {
  const StackResourceDriftStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackResourceDriftStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const deleted = StackResourceDriftStatus._(
    0,
    'DELETED',
    'DELETED',
  );

  static const inSync = StackResourceDriftStatus._(
    1,
    'IN_SYNC',
    'IN_SYNC',
  );

  static const modified = StackResourceDriftStatus._(
    2,
    'MODIFIED',
    'MODIFIED',
  );

  static const notChecked = StackResourceDriftStatus._(
    3,
    'NOT_CHECKED',
    'NOT_CHECKED',
  );

  /// All values of [StackResourceDriftStatus].
  static const values = <StackResourceDriftStatus>[
    StackResourceDriftStatus.deleted,
    StackResourceDriftStatus.inSync,
    StackResourceDriftStatus.modified,
    StackResourceDriftStatus.notChecked,
  ];

  static const List<_i1.SmithySerializer<StackResourceDriftStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StackResourceDriftStatus',
      values: values,
      sdkUnknown: StackResourceDriftStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackResourceDriftStatusHelpers on List<StackResourceDriftStatus> {
  /// Returns the value of [StackResourceDriftStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackResourceDriftStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackResourceDriftStatus] whose value matches [value].
  StackResourceDriftStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
