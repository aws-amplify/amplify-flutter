// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_type_hypervisor; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceTypeHypervisor extends _i1.SmithyEnum<InstanceTypeHypervisor> {
  const InstanceTypeHypervisor._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceTypeHypervisor._sdkUnknown(super.value) : super.sdkUnknown();

  static const nitro = InstanceTypeHypervisor._(
    0,
    'NITRO',
    'nitro',
  );

  static const xen = InstanceTypeHypervisor._(
    1,
    'XEN',
    'xen',
  );

  /// All values of [InstanceTypeHypervisor].
  static const values = <InstanceTypeHypervisor>[
    InstanceTypeHypervisor.nitro,
    InstanceTypeHypervisor.xen,
  ];

  static const List<_i1.SmithySerializer<InstanceTypeHypervisor>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'InstanceTypeHypervisor',
      values: values,
      sdkUnknown: InstanceTypeHypervisor._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceTypeHypervisorHelpers on List<InstanceTypeHypervisor> {
  /// Returns the value of [InstanceTypeHypervisor] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceTypeHypervisor byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceTypeHypervisor] whose value matches [value].
  InstanceTypeHypervisor byValue(String value) =>
      firstWhere((el) => el.value == value);
}
