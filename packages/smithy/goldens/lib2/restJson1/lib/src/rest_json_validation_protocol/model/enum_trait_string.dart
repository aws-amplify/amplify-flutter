// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.model.enum_trait_string; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EnumTraitString extends _i1.SmithyEnum<EnumTraitString> {
  const EnumTraitString._(
    super.index,
    super.name,
    super.value,
  );

  const EnumTraitString._sdkUnknown(super.value) : super.sdkUnknown();

  static const abc = EnumTraitString._(
    0,
    'ABC',
    'abc',
  );

  static const def = EnumTraitString._(
    1,
    'DEF',
    'def',
  );

  static const ghi = EnumTraitString._(
    2,
    'GHI',
    'ghi',
  );

  /// All values of [EnumTraitString].
  static const values = <EnumTraitString>[
    EnumTraitString.abc,
    EnumTraitString.def,
    EnumTraitString.ghi,
  ];

  static const List<_i1.SmithySerializer<EnumTraitString>> serializers = [
    _i1.SmithyEnumSerializer(
      'EnumTraitString',
      values: values,
      sdkUnknown: EnumTraitString._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension EnumTraitStringHelpers on List<EnumTraitString> {
  /// Returns the value of [EnumTraitString] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EnumTraitString byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EnumTraitString] whose value matches [value].
  EnumTraitString byValue(String value) =>
      firstWhere((el) => el.value == value);
}
