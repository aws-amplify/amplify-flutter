// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.visibility; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Visibility extends _i1.SmithyEnum<Visibility> {
  const Visibility._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Visibility._sdkUnknown(String value) : super.sdkUnknown(value);

  static const private = Visibility._(
    0,
    'PRIVATE',
    'PRIVATE',
  );

  static const public = Visibility._(
    1,
    'PUBLIC',
    'PUBLIC',
  );

  /// All values of [Visibility].
  static const values = <Visibility>[
    Visibility.private,
    Visibility.public,
  ];

  static const List<_i1.SmithySerializer<Visibility>> serializers = [
    _i1.SmithyEnumSerializer(
      'Visibility',
      values: values,
      sdkUnknown: Visibility._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension VisibilityHelpers on List<Visibility> {
  /// Returns the value of [Visibility] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Visibility byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Visibility] whose value matches [value].
  Visibility byValue(String value) => firstWhere((el) => el.value == value);
}
