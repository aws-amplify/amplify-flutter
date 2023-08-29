// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_public_ip_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolPublicIpSource extends _i1.SmithyEnum<IpamPoolPublicIpSource> {
  const IpamPoolPublicIpSource._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolPublicIpSource._sdkUnknown(super.value) : super.sdkUnknown();

  static const amazon = IpamPoolPublicIpSource._(
    0,
    'amazon',
    'amazon',
  );

  static const byoip = IpamPoolPublicIpSource._(
    1,
    'byoip',
    'byoip',
  );

  /// All values of [IpamPoolPublicIpSource].
  static const values = <IpamPoolPublicIpSource>[
    IpamPoolPublicIpSource.amazon,
    IpamPoolPublicIpSource.byoip,
  ];

  static const List<_i1.SmithySerializer<IpamPoolPublicIpSource>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'IpamPoolPublicIpSource',
      values: values,
      sdkUnknown: IpamPoolPublicIpSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolPublicIpSourceHelpers on List<IpamPoolPublicIpSource> {
  /// Returns the value of [IpamPoolPublicIpSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolPublicIpSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolPublicIpSource] whose value matches [value].
  IpamPoolPublicIpSource byValue(String value) =>
      firstWhere((el) => el.value == value);
}
