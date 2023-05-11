// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_instance_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackInstanceStatus extends _i1.SmithyEnum<StackInstanceStatus> {
  const StackInstanceStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackInstanceStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const current = StackInstanceStatus._(
    0,
    'CURRENT',
    'CURRENT',
  );

  static const inoperable = StackInstanceStatus._(
    1,
    'INOPERABLE',
    'INOPERABLE',
  );

  static const outdated = StackInstanceStatus._(
    2,
    'OUTDATED',
    'OUTDATED',
  );

  /// All values of [StackInstanceStatus].
  static const values = <StackInstanceStatus>[
    StackInstanceStatus.current,
    StackInstanceStatus.inoperable,
    StackInstanceStatus.outdated,
  ];

  static const List<_i1.SmithySerializer<StackInstanceStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StackInstanceStatus',
      values: values,
      sdkUnknown: StackInstanceStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackInstanceStatusHelpers on List<StackInstanceStatus> {
  /// Returns the value of [StackInstanceStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackInstanceStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackInstanceStatus] whose value matches [value].
  StackInstanceStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
