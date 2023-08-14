// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_allocation_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolAllocationResourceType
    extends _i1.SmithyEnum<IpamPoolAllocationResourceType> {
  const IpamPoolAllocationResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolAllocationResourceType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const custom = IpamPoolAllocationResourceType._(
    0,
    'custom',
    'custom',
  );

  static const ec2PublicIpv4Pool = IpamPoolAllocationResourceType._(
    1,
    'ec2_public_ipv4_pool',
    'ec2-public-ipv4-pool',
  );

  static const ipamPool = IpamPoolAllocationResourceType._(
    2,
    'ipam_pool',
    'ipam-pool',
  );

  static const vpc = IpamPoolAllocationResourceType._(
    3,
    'vpc',
    'vpc',
  );

  /// All values of [IpamPoolAllocationResourceType].
  static const values = <IpamPoolAllocationResourceType>[
    IpamPoolAllocationResourceType.custom,
    IpamPoolAllocationResourceType.ec2PublicIpv4Pool,
    IpamPoolAllocationResourceType.ipamPool,
    IpamPoolAllocationResourceType.vpc,
  ];

  static const List<_i1.SmithySerializer<IpamPoolAllocationResourceType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamPoolAllocationResourceType',
      values: values,
      sdkUnknown: IpamPoolAllocationResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolAllocationResourceTypeHelpers
    on List<IpamPoolAllocationResourceType> {
  /// Returns the value of [IpamPoolAllocationResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolAllocationResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolAllocationResourceType] whose value matches [value].
  IpamPoolAllocationResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
