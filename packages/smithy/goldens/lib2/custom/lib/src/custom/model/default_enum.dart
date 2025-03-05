// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.model.default_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DefaultEnum extends _i1.SmithyEnum<DefaultEnum> {
  const DefaultEnum._(
    super.index,
    super.name,
    super.value,
  );

  const DefaultEnum._sdkUnknown(super.value) : super.sdkUnknown();

  static const a = DefaultEnum._(
    0,
    'A',
    'A',
  );

  static const b = DefaultEnum._(
    1,
    'B',
    'B',
  );

  static const c = DefaultEnum._(
    2,
    'C',
    'C',
  );

  /// All values of [DefaultEnum].
  static const values = <DefaultEnum>[
    DefaultEnum.a,
    DefaultEnum.b,
    DefaultEnum.c,
  ];

  static const List<_i1.SmithySerializer<DefaultEnum>> serializers = [
    _i1.SmithyEnumSerializer(
      'DefaultEnum',
      values: values,
      sdkUnknown: DefaultEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension DefaultEnumHelpers on List<DefaultEnum> {
  /// Returns the value of [DefaultEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DefaultEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DefaultEnum] whose value matches [value].
  DefaultEnum byValue(String value) => firstWhere((el) => el.value == value);
}
