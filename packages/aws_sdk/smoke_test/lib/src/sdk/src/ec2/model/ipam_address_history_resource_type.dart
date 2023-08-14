// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_address_history_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamAddressHistoryResourceType
    extends _i1.SmithyEnum<IpamAddressHistoryResourceType> {
  const IpamAddressHistoryResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const IpamAddressHistoryResourceType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const eip = IpamAddressHistoryResourceType._(
    0,
    'eip',
    'eip',
  );

  static const instance = IpamAddressHistoryResourceType._(
    1,
    'instance',
    'instance',
  );

  static const networkInterface = IpamAddressHistoryResourceType._(
    2,
    'network_interface',
    'network-interface',
  );

  static const subnet = IpamAddressHistoryResourceType._(
    3,
    'subnet',
    'subnet',
  );

  static const vpc = IpamAddressHistoryResourceType._(
    4,
    'vpc',
    'vpc',
  );

  /// All values of [IpamAddressHistoryResourceType].
  static const values = <IpamAddressHistoryResourceType>[
    IpamAddressHistoryResourceType.eip,
    IpamAddressHistoryResourceType.instance,
    IpamAddressHistoryResourceType.networkInterface,
    IpamAddressHistoryResourceType.subnet,
    IpamAddressHistoryResourceType.vpc,
  ];

  static const List<_i1.SmithySerializer<IpamAddressHistoryResourceType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamAddressHistoryResourceType',
      values: values,
      sdkUnknown: IpamAddressHistoryResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamAddressHistoryResourceTypeHelpers
    on List<IpamAddressHistoryResourceType> {
  /// Returns the value of [IpamAddressHistoryResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamAddressHistoryResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamAddressHistoryResourceType] whose value matches [value].
  IpamAddressHistoryResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
