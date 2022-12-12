// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.recursive_enum_string; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RecursiveEnumString extends _i1.SmithyEnum<RecursiveEnumString> {
  const RecursiveEnumString._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RecursiveEnumString._sdkUnknown(String value) : super.sdkUnknown(value);

  static const abc = RecursiveEnumString._(
    0,
    'ABC',
    'abc',
  );

  static const def = RecursiveEnumString._(
    1,
    'DEF',
    'def',
  );

  /// All values of [RecursiveEnumString].
  static const values = <RecursiveEnumString>[
    RecursiveEnumString.abc,
    RecursiveEnumString.def,
  ];

  static const List<_i1.SmithySerializer<RecursiveEnumString>> serializers = [
    _i1.SmithyEnumSerializer(
      'RecursiveEnumString',
      values: values,
      sdkUnknown: RecursiveEnumString._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension RecursiveEnumStringHelpers on List<RecursiveEnumString> {
  /// Returns the value of [RecursiveEnumString] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RecursiveEnumString byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RecursiveEnumString] whose value matches [value].
  RecursiveEnumString byValue(String value) =>
      firstWhere((el) => el.value == value);
}
