// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.hypervisor_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HypervisorType extends _i1.SmithyEnum<HypervisorType> {
  const HypervisorType._(
    super.index,
    super.name,
    super.value,
  );

  const HypervisorType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ovm = HypervisorType._(
    0,
    'ovm',
    'ovm',
  );

  static const xen = HypervisorType._(
    1,
    'xen',
    'xen',
  );

  /// All values of [HypervisorType].
  static const values = <HypervisorType>[
    HypervisorType.ovm,
    HypervisorType.xen,
  ];

  static const List<_i1.SmithySerializer<HypervisorType>> serializers = [
    _i1.SmithyEnumSerializer(
      'HypervisorType',
      values: values,
      sdkUnknown: HypervisorType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HypervisorTypeHelpers on List<HypervisorType> {
  /// Returns the value of [HypervisorType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HypervisorType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HypervisorType] whose value matches [value].
  HypervisorType byValue(String value) => firstWhere((el) => el.value == value);
}
