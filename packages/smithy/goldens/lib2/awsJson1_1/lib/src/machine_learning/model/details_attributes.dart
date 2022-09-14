// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.model.details_attributes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DetailsAttributes extends _i1.SmithyEnum<DetailsAttributes> {
  const DetailsAttributes._(int index, String name, String value)
      : super(index, name, value);

  const DetailsAttributes._sdkUnknown(String value) : super.sdkUnknown(value);

  static const algorithm = DetailsAttributes._(0, 'ALGORITHM', 'Algorithm');

  static const predictiveModelType =
      DetailsAttributes._(1, 'PREDICTIVE_MODEL_TYPE', 'PredictiveModelType');

  /// All values of [DetailsAttributes].
  static const values = <DetailsAttributes>[
    DetailsAttributes.algorithm,
    DetailsAttributes.predictiveModelType
  ];

  static const List<_i1.SmithySerializer<DetailsAttributes>> serializers = [
    _i1.SmithyEnumSerializer('DetailsAttributes',
        values: values,
        sdkUnknown: DetailsAttributes._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
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
