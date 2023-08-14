// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.operation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OperationType extends _i1.SmithyEnum<OperationType> {
  const OperationType._(
    super.index,
    super.name,
    super.value,
  );

  const OperationType._sdkUnknown(super.value) : super.sdkUnknown();

  static const add = OperationType._(
    0,
    'add',
    'add',
  );

  static const remove = OperationType._(
    1,
    'remove',
    'remove',
  );

  /// All values of [OperationType].
  static const values = <OperationType>[
    OperationType.add,
    OperationType.remove,
  ];

  static const List<_i1.SmithySerializer<OperationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'OperationType',
      values: values,
      sdkUnknown: OperationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension OperationTypeHelpers on List<OperationType> {
  /// Returns the value of [OperationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OperationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OperationType] whose value matches [value].
  OperationType byValue(String value) => firstWhere((el) => el.value == value);
}
