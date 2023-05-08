// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackSetStatus extends _i1.SmithyEnum<StackSetStatus> {
  const StackSetStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackSetStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = StackSetStatus._(
    0,
    'ACTIVE',
    'ACTIVE',
  );

  static const deleted = StackSetStatus._(
    1,
    'DELETED',
    'DELETED',
  );

  /// All values of [StackSetStatus].
  static const values = <StackSetStatus>[
    StackSetStatus.active,
    StackSetStatus.deleted,
  ];

  static const List<_i1.SmithySerializer<StackSetStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'StackSetStatus',
      values: values,
      sdkUnknown: StackSetStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackSetStatusHelpers on List<StackSetStatus> {
  /// Returns the value of [StackSetStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackSetStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackSetStatus] whose value matches [value].
  StackSetStatus byValue(String value) => firstWhere((el) => el.value == value);
}
