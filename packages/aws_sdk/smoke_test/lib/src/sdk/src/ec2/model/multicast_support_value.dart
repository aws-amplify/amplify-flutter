// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.multicast_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MulticastSupportValue extends _i1.SmithyEnum<MulticastSupportValue> {
  const MulticastSupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const MulticastSupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = MulticastSupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = MulticastSupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [MulticastSupportValue].
  static const values = <MulticastSupportValue>[
    MulticastSupportValue.disable,
    MulticastSupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<MulticastSupportValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'MulticastSupportValue',
      values: values,
      sdkUnknown: MulticastSupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MulticastSupportValueHelpers on List<MulticastSupportValue> {
  /// Returns the value of [MulticastSupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MulticastSupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MulticastSupportValue] whose value matches [value].
  MulticastSupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
