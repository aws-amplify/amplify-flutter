// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_instance_filter_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StackInstanceFilterName extends _i1.SmithyEnum<StackInstanceFilterName> {
  const StackInstanceFilterName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StackInstanceFilterName._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const detailedStatus = StackInstanceFilterName._(
    0,
    'DETAILED_STATUS',
    'DETAILED_STATUS',
  );

  static const lastOperationId = StackInstanceFilterName._(
    1,
    'LAST_OPERATION_ID',
    'LAST_OPERATION_ID',
  );

  /// All values of [StackInstanceFilterName].
  static const values = <StackInstanceFilterName>[
    StackInstanceFilterName.detailedStatus,
    StackInstanceFilterName.lastOperationId,
  ];

  static const List<_i1.SmithySerializer<StackInstanceFilterName>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'StackInstanceFilterName',
      values: values,
      sdkUnknown: StackInstanceFilterName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension StackInstanceFilterNameHelpers on List<StackInstanceFilterName> {
  /// Returns the value of [StackInstanceFilterName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StackInstanceFilterName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StackInstanceFilterName] whose value matches [value].
  StackInstanceFilterName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
