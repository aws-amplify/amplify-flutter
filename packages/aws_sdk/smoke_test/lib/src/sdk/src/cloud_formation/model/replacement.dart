// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.replacement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Replacement extends _i1.SmithyEnum<Replacement> {
  const Replacement._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Replacement._sdkUnknown(String value) : super.sdkUnknown(value);

  static const conditional = Replacement._(
    0,
    'Conditional',
    'Conditional',
  );

  static const false$ = Replacement._(
    1,
    'False',
    'False',
  );

  static const true$ = Replacement._(
    2,
    'True',
    'True',
  );

  /// All values of [Replacement].
  static const values = <Replacement>[
    Replacement.conditional,
    Replacement.false$,
    Replacement.true$,
  ];

  static const List<_i1.SmithySerializer<Replacement>> serializers = [
    _i1.SmithyEnumSerializer(
      'Replacement',
      values: values,
      sdkUnknown: Replacement._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ReplacementHelpers on List<Replacement> {
  /// Returns the value of [Replacement] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Replacement byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Replacement] whose value matches [value].
  Replacement byValue(String value) => firstWhere((el) => el.value == value);
}
