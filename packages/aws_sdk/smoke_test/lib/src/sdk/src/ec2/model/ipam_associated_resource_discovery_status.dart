// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_associated_resource_discovery_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamAssociatedResourceDiscoveryStatus
    extends _i1.SmithyEnum<IpamAssociatedResourceDiscoveryStatus> {
  const IpamAssociatedResourceDiscoveryStatus._(
    super.index,
    super.name,
    super.value,
  );

  const IpamAssociatedResourceDiscoveryStatus._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = IpamAssociatedResourceDiscoveryStatus._(
    0,
    'ACTIVE',
    'active',
  );

  static const notFound = IpamAssociatedResourceDiscoveryStatus._(
    1,
    'NOT_FOUND',
    'not-found',
  );

  /// All values of [IpamAssociatedResourceDiscoveryStatus].
  static const values = <IpamAssociatedResourceDiscoveryStatus>[
    IpamAssociatedResourceDiscoveryStatus.active,
    IpamAssociatedResourceDiscoveryStatus.notFound,
  ];

  static const List<_i1.SmithySerializer<IpamAssociatedResourceDiscoveryStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamAssociatedResourceDiscoveryStatus',
      values: values,
      sdkUnknown: IpamAssociatedResourceDiscoveryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamAssociatedResourceDiscoveryStatusHelpers
    on List<IpamAssociatedResourceDiscoveryStatus> {
  /// Returns the value of [IpamAssociatedResourceDiscoveryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamAssociatedResourceDiscoveryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamAssociatedResourceDiscoveryStatus] whose value matches [value].
  IpamAssociatedResourceDiscoveryStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
