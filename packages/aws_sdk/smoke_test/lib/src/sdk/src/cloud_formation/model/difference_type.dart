// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.difference_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DifferenceType extends _i1.SmithyEnum<DifferenceType> {
  const DifferenceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DifferenceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const add = DifferenceType._(
    0,
    'ADD',
    'ADD',
  );

  static const notEqual = DifferenceType._(
    1,
    'NOT_EQUAL',
    'NOT_EQUAL',
  );

  static const remove = DifferenceType._(
    2,
    'REMOVE',
    'REMOVE',
  );

  /// All values of [DifferenceType].
  static const values = <DifferenceType>[
    DifferenceType.add,
    DifferenceType.notEqual,
    DifferenceType.remove,
  ];

  static const List<_i1.SmithySerializer<DifferenceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DifferenceType',
      values: values,
      sdkUnknown: DifferenceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension DifferenceTypeHelpers on List<DifferenceType> {
  /// Returns the value of [DifferenceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DifferenceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DifferenceType] whose value matches [value].
  DifferenceType byValue(String value) => firstWhere((el) => el.value == value);
}
