// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_creation_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NetworkInterfaceCreationType
    extends _i1.SmithyEnum<NetworkInterfaceCreationType> {
  const NetworkInterfaceCreationType._(
    super.index,
    super.name,
    super.value,
  );

  const NetworkInterfaceCreationType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const branch = NetworkInterfaceCreationType._(
    0,
    'branch',
    'branch',
  );

  static const efa = NetworkInterfaceCreationType._(
    1,
    'efa',
    'efa',
  );

  static const trunk = NetworkInterfaceCreationType._(
    2,
    'trunk',
    'trunk',
  );

  /// All values of [NetworkInterfaceCreationType].
  static const values = <NetworkInterfaceCreationType>[
    NetworkInterfaceCreationType.branch,
    NetworkInterfaceCreationType.efa,
    NetworkInterfaceCreationType.trunk,
  ];

  static const List<_i1.SmithySerializer<NetworkInterfaceCreationType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'NetworkInterfaceCreationType',
      values: values,
      sdkUnknown: NetworkInterfaceCreationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NetworkInterfaceCreationTypeHelpers
    on List<NetworkInterfaceCreationType> {
  /// Returns the value of [NetworkInterfaceCreationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NetworkInterfaceCreationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NetworkInterfaceCreationType] whose value matches [value].
  NetworkInterfaceCreationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
