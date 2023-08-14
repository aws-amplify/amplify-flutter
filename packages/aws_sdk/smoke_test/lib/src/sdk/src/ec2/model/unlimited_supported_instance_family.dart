// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unlimited_supported_instance_family; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class UnlimitedSupportedInstanceFamily
    extends _i1.SmithyEnum<UnlimitedSupportedInstanceFamily> {
  const UnlimitedSupportedInstanceFamily._(
    super.index,
    super.name,
    super.value,
  );

  const UnlimitedSupportedInstanceFamily._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const t2 = UnlimitedSupportedInstanceFamily._(
    0,
    't2',
    't2',
  );

  static const t3 = UnlimitedSupportedInstanceFamily._(
    1,
    't3',
    't3',
  );

  static const t3A = UnlimitedSupportedInstanceFamily._(
    2,
    't3a',
    't3a',
  );

  static const t4G = UnlimitedSupportedInstanceFamily._(
    3,
    't4g',
    't4g',
  );

  /// All values of [UnlimitedSupportedInstanceFamily].
  static const values = <UnlimitedSupportedInstanceFamily>[
    UnlimitedSupportedInstanceFamily.t2,
    UnlimitedSupportedInstanceFamily.t3,
    UnlimitedSupportedInstanceFamily.t3A,
    UnlimitedSupportedInstanceFamily.t4G,
  ];

  static const List<_i1.SmithySerializer<UnlimitedSupportedInstanceFamily>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'UnlimitedSupportedInstanceFamily',
      values: values,
      sdkUnknown: UnlimitedSupportedInstanceFamily._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension UnlimitedSupportedInstanceFamilyHelpers
    on List<UnlimitedSupportedInstanceFamily> {
  /// Returns the value of [UnlimitedSupportedInstanceFamily] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UnlimitedSupportedInstanceFamily byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UnlimitedSupportedInstanceFamily] whose value matches [value].
  UnlimitedSupportedInstanceFamily byValue(String value) =>
      firstWhere((el) => el.value == value);
}
