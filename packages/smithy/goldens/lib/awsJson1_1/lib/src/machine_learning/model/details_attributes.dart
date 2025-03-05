// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v1.machine_learning.model.details_attributes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DetailsAttributes extends _i1.SmithyEnum<DetailsAttributes> {
  const DetailsAttributes._(
    super.index,
    super.name,
    super.value,
  );

  const DetailsAttributes._sdkUnknown(super.value) : super.sdkUnknown();

  static const algorithm = DetailsAttributes._(
    0,
    'ALGORITHM',
    'Algorithm',
  );

  static const predictiveModelType = DetailsAttributes._(
    1,
    'PREDICTIVE_MODEL_TYPE',
    'PredictiveModelType',
  );

  /// All values of [DetailsAttributes].
  static const values = <DetailsAttributes>[
    DetailsAttributes.algorithm,
    DetailsAttributes.predictiveModelType,
  ];

  static const List<_i1.SmithySerializer<DetailsAttributes>> serializers = [
    _i1.SmithyEnumSerializer(
      'DetailsAttributes',
      values: values,
      sdkUnknown: DetailsAttributes._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension DetailsAttributesHelpers on List<DetailsAttributes> {
  /// Returns the value of [DetailsAttributes] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DetailsAttributes byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DetailsAttributes] whose value matches [value].
  DetailsAttributes byValue(String value) =>
      firstWhere((el) => el.value == value);
}
