// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.attribute_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AttributeType extends _i1.SmithyEnum<AttributeType> {
  const AttributeType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AttributeType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const after = AttributeType._(
    0,
    'AFTER',
    'AFTER',
  );

  static const before = AttributeType._(
    1,
    'BEFORE',
    'BEFORE',
  );

  static const between = AttributeType._(
    2,
    'BETWEEN',
    'BETWEEN',
  );

  static const contains = AttributeType._(
    3,
    'CONTAINS',
    'CONTAINS',
  );

  static const exclusive = AttributeType._(
    4,
    'EXCLUSIVE',
    'EXCLUSIVE',
  );

  static const inclusive = AttributeType._(
    5,
    'INCLUSIVE',
    'INCLUSIVE',
  );

  static const on = AttributeType._(
    6,
    'ON',
    'ON',
  );

  /// All values of [AttributeType].
  static const values = <AttributeType>[
    AttributeType.after,
    AttributeType.before,
    AttributeType.between,
    AttributeType.contains,
    AttributeType.exclusive,
    AttributeType.inclusive,
    AttributeType.on,
  ];

  static const List<_i1.SmithySerializer<AttributeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AttributeType',
      values: values,
      sdkUnknown: AttributeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension AttributeTypeHelpers on List<AttributeType> {
  /// Returns the value of [AttributeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AttributeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AttributeType] whose value matches [value].
  AttributeType byValue(String value) => firstWhere((el) => el.value == value);
}
