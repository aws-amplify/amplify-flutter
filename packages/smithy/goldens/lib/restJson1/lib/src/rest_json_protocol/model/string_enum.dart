// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.string_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StringEnum extends _i1.SmithyEnum<StringEnum> {
  const StringEnum._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StringEnum._sdkUnknown(String value) : super.sdkUnknown(value);

  static const v = StringEnum._(
    0,
    'V',
    'enumvalue',
  );

  /// All values of [StringEnum].
  static const values = <StringEnum>[StringEnum.v];

  static const List<_i1.SmithySerializer<StringEnum>> serializers = [
    _i1.SmithyEnumSerializer(
      'StringEnum',
      values: values,
      sdkUnknown: StringEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension StringEnumHelpers on List<StringEnum> {
  /// Returns the value of [StringEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StringEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StringEnum] whose value matches [value].
  StringEnum byValue(String value) => firstWhere((el) => el.value == value);
}
