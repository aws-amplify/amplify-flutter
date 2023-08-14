// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamResourceType extends _i1.SmithyEnum<IpamResourceType> {
  const IpamResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const IpamResourceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const eip = IpamResourceType._(
    0,
    'eip',
    'eip',
  );

  static const ipv6Pool = IpamResourceType._(
    1,
    'ipv6_pool',
    'ipv6-pool',
  );

  static const publicIpv4Pool = IpamResourceType._(
    2,
    'public_ipv4_pool',
    'public-ipv4-pool',
  );

  static const subnet = IpamResourceType._(
    3,
    'subnet',
    'subnet',
  );

  static const vpc = IpamResourceType._(
    4,
    'vpc',
    'vpc',
  );

  /// All values of [IpamResourceType].
  static const values = <IpamResourceType>[
    IpamResourceType.eip,
    IpamResourceType.ipv6Pool,
    IpamResourceType.publicIpv4Pool,
    IpamResourceType.subnet,
    IpamResourceType.vpc,
  ];

  static const List<_i1.SmithySerializer<IpamResourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamResourceType',
      values: values,
      sdkUnknown: IpamResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamResourceTypeHelpers on List<IpamResourceType> {
  /// Returns the value of [IpamResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamResourceType] whose value matches [value].
  IpamResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
