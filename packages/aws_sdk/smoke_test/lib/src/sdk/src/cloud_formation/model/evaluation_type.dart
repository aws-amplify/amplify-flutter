// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.evaluation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EvaluationType extends _i1.SmithyEnum<EvaluationType> {
  const EvaluationType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EvaluationType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const dynamic = EvaluationType._(
    0,
    'Dynamic',
    'Dynamic',
  );

  static const static = EvaluationType._(
    1,
    'Static',
    'Static',
  );

  /// All values of [EvaluationType].
  static const values = <EvaluationType>[
    EvaluationType.dynamic,
    EvaluationType.static,
  ];

  static const List<_i1.SmithySerializer<EvaluationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EvaluationType',
      values: values,
      sdkUnknown: EvaluationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension EvaluationTypeHelpers on List<EvaluationType> {
  /// Returns the value of [EvaluationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EvaluationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EvaluationType] whose value matches [value].
  EvaluationType byValue(String value) => firstWhere((el) => el.value == value);
}
