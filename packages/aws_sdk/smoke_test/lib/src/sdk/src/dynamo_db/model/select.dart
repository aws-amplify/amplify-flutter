// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.select; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Select extends _i1.SmithyEnum<Select> {
  const Select._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Select._sdkUnknown(String value) : super.sdkUnknown(value);

  static const allAttributes = Select._(
    0,
    'ALL_ATTRIBUTES',
    'ALL_ATTRIBUTES',
  );

  static const allProjectedAttributes = Select._(
    1,
    'ALL_PROJECTED_ATTRIBUTES',
    'ALL_PROJECTED_ATTRIBUTES',
  );

  static const count = Select._(
    2,
    'COUNT',
    'COUNT',
  );

  static const specificAttributes = Select._(
    3,
    'SPECIFIC_ATTRIBUTES',
    'SPECIFIC_ATTRIBUTES',
  );

  /// All values of [Select].
  static const values = <Select>[
    Select.allAttributes,
    Select.allProjectedAttributes,
    Select.count,
    Select.specificAttributes,
  ];

  static const List<_i1.SmithySerializer<Select>> serializers = [
    _i1.SmithyEnumSerializer(
      'Select',
      values: values,
      sdkUnknown: Select._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension SelectHelpers on List<Select> {
  /// Returns the value of [Select] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Select byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Select] whose value matches [value].
  Select byValue(String value) => firstWhere((el) => el.value == value);
}
