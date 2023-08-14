// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NetworkInterfaceStatus extends _i1.SmithyEnum<NetworkInterfaceStatus> {
  const NetworkInterfaceStatus._(
    super.index,
    super.name,
    super.value,
  );

  const NetworkInterfaceStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const associated = NetworkInterfaceStatus._(
    0,
    'associated',
    'associated',
  );

  static const attaching = NetworkInterfaceStatus._(
    1,
    'attaching',
    'attaching',
  );

  static const available = NetworkInterfaceStatus._(
    2,
    'available',
    'available',
  );

  static const detaching = NetworkInterfaceStatus._(
    3,
    'detaching',
    'detaching',
  );

  static const inUse = NetworkInterfaceStatus._(
    4,
    'in_use',
    'in-use',
  );

  /// All values of [NetworkInterfaceStatus].
  static const values = <NetworkInterfaceStatus>[
    NetworkInterfaceStatus.associated,
    NetworkInterfaceStatus.attaching,
    NetworkInterfaceStatus.available,
    NetworkInterfaceStatus.detaching,
    NetworkInterfaceStatus.inUse,
  ];

  static const List<_i1.SmithySerializer<NetworkInterfaceStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'NetworkInterfaceStatus',
      values: values,
      sdkUnknown: NetworkInterfaceStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NetworkInterfaceStatusHelpers on List<NetworkInterfaceStatus> {
  /// Returns the value of [NetworkInterfaceStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NetworkInterfaceStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NetworkInterfaceStatus] whose value matches [value].
  NetworkInterfaceStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
