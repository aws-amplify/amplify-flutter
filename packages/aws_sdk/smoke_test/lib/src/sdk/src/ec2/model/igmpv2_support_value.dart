// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.igmpv2_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Igmpv2SupportValue extends _i1.SmithyEnum<Igmpv2SupportValue> {
  const Igmpv2SupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const Igmpv2SupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = Igmpv2SupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = Igmpv2SupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [Igmpv2SupportValue].
  static const values = <Igmpv2SupportValue>[
    Igmpv2SupportValue.disable,
    Igmpv2SupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<Igmpv2SupportValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'Igmpv2SupportValue',
      values: values,
      sdkUnknown: Igmpv2SupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension Igmpv2SupportValueHelpers on List<Igmpv2SupportValue> {
  /// Returns the value of [Igmpv2SupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Igmpv2SupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Igmpv2SupportValue] whose value matches [value].
  Igmpv2SupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
