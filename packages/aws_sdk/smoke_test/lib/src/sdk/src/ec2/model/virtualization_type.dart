// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.virtualization_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VirtualizationType extends _i1.SmithyEnum<VirtualizationType> {
  const VirtualizationType._(
    super.index,
    super.name,
    super.value,
  );

  const VirtualizationType._sdkUnknown(super.value) : super.sdkUnknown();

  static const hvm = VirtualizationType._(
    0,
    'hvm',
    'hvm',
  );

  static const paravirtual = VirtualizationType._(
    1,
    'paravirtual',
    'paravirtual',
  );

  /// All values of [VirtualizationType].
  static const values = <VirtualizationType>[
    VirtualizationType.hvm,
    VirtualizationType.paravirtual,
  ];

  static const List<_i1.SmithySerializer<VirtualizationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'VirtualizationType',
      values: values,
      sdkUnknown: VirtualizationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VirtualizationTypeHelpers on List<VirtualizationType> {
  /// Returns the value of [VirtualizationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VirtualizationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VirtualizationType] whose value matches [value].
  VirtualizationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
