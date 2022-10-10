// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.scalar_attribute_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ScalarAttributeType extends _i1.SmithyEnum<ScalarAttributeType> {
  const ScalarAttributeType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ScalarAttributeType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const b = ScalarAttributeType._(
    0,
    'B',
    'B',
  );

  static const n = ScalarAttributeType._(
    1,
    'N',
    'N',
  );

  static const s = ScalarAttributeType._(
    2,
    'S',
    'S',
  );

  /// All values of [ScalarAttributeType].
  static const values = <ScalarAttributeType>[
    ScalarAttributeType.b,
    ScalarAttributeType.n,
    ScalarAttributeType.s,
  ];

  static const List<_i1.SmithySerializer<ScalarAttributeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ScalarAttributeType',
      values: values,
      sdkUnknown: ScalarAttributeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ScalarAttributeTypeHelpers on List<ScalarAttributeType> {
  /// Returns the value of [ScalarAttributeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ScalarAttributeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ScalarAttributeType] whose value matches [value].
  ScalarAttributeType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
