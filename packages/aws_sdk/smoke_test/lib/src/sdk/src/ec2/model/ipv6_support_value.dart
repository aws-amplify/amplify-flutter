// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipv6_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Ipv6SupportValue extends _i1.SmithyEnum<Ipv6SupportValue> {
  const Ipv6SupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const Ipv6SupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = Ipv6SupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = Ipv6SupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [Ipv6SupportValue].
  static const values = <Ipv6SupportValue>[
    Ipv6SupportValue.disable,
    Ipv6SupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<Ipv6SupportValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'Ipv6SupportValue',
      values: values,
      sdkUnknown: Ipv6SupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension Ipv6SupportValueHelpers on List<Ipv6SupportValue> {
  /// Returns the value of [Ipv6SupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Ipv6SupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Ipv6SupportValue] whose value matches [value].
  Ipv6SupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
