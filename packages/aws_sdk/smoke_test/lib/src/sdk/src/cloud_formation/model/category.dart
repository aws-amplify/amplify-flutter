// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.category; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Category extends _i1.SmithyEnum<Category> {
  const Category._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Category._sdkUnknown(String value) : super.sdkUnknown(value);

  static const activated = Category._(
    0,
    'ACTIVATED',
    'ACTIVATED',
  );

  static const awsTypes = Category._(
    1,
    'AWS_TYPES',
    'AWS_TYPES',
  );

  static const registered = Category._(
    2,
    'REGISTERED',
    'REGISTERED',
  );

  static const thirdParty = Category._(
    3,
    'THIRD_PARTY',
    'THIRD_PARTY',
  );

  /// All values of [Category].
  static const values = <Category>[
    Category.activated,
    Category.awsTypes,
    Category.registered,
    Category.thirdParty,
  ];

  static const List<_i1.SmithySerializer<Category>> serializers = [
    _i1.SmithyEnumSerializer(
      'Category',
      values: values,
      sdkUnknown: Category._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension CategoryHelpers on List<Category> {
  /// Returns the value of [Category] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Category byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Category] whose value matches [value].
  Category byValue(String value) => firstWhere((el) => el.value == value);
}
