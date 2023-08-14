// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ip_address_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpAddressType extends _i1.SmithyEnum<IpAddressType> {
  const IpAddressType._(
    super.index,
    super.name,
    super.value,
  );

  const IpAddressType._sdkUnknown(super.value) : super.sdkUnknown();

  static const dualstack = IpAddressType._(
    0,
    'dualstack',
    'dualstack',
  );

  static const ipv4 = IpAddressType._(
    1,
    'ipv4',
    'ipv4',
  );

  static const ipv6 = IpAddressType._(
    2,
    'ipv6',
    'ipv6',
  );

  /// All values of [IpAddressType].
  static const values = <IpAddressType>[
    IpAddressType.dualstack,
    IpAddressType.ipv4,
    IpAddressType.ipv6,
  ];

  static const List<_i1.SmithySerializer<IpAddressType>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpAddressType',
      values: values,
      sdkUnknown: IpAddressType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpAddressTypeHelpers on List<IpAddressType> {
  /// Returns the value of [IpAddressType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpAddressType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpAddressType] whose value matches [value].
  IpAddressType byValue(String value) => firstWhere((el) => el.value == value);
}
