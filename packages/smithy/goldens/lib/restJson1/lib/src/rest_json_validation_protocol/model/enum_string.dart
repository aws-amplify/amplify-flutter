// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.enum_string; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EnumString extends _i1.SmithyEnum<EnumString> {
  const EnumString._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EnumString._sdkUnknown(String value) : super.sdkUnknown(value);

  static const abc = EnumString._(
    0,
    'ABC',
    'abc',
  );

  static const def = EnumString._(
    1,
    'DEF',
    'def',
  );

  static const ghi = EnumString._(
    2,
    'GHI',
    'ghi',
  );

  static const jkl = EnumString._(
    3,
    'JKL',
    'jkl',
  );

  /// All values of [EnumString].
  static const values = <EnumString>[
    EnumString.abc,
    EnumString.def,
    EnumString.ghi,
    EnumString.jkl,
  ];

  static const List<_i1.SmithySerializer<EnumString>> serializers = [
    _i1.SmithyEnumSerializer(
      'EnumString',
      values: values,
      sdkUnknown: EnumString._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension EnumStringHelpers on List<EnumString> {
  /// Returns the value of [EnumString] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EnumString byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EnumString] whose value matches [value].
  EnumString byValue(String value) => firstWhere((el) => el.value == value);
}
