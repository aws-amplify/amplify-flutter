// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_permission_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NetworkInterfacePermissionStateCode
    extends _i1.SmithyEnum<NetworkInterfacePermissionStateCode> {
  const NetworkInterfacePermissionStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const NetworkInterfacePermissionStateCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const granted = NetworkInterfacePermissionStateCode._(
    0,
    'granted',
    'granted',
  );

  static const pending = NetworkInterfacePermissionStateCode._(
    1,
    'pending',
    'pending',
  );

  static const revoked = NetworkInterfacePermissionStateCode._(
    2,
    'revoked',
    'revoked',
  );

  static const revoking = NetworkInterfacePermissionStateCode._(
    3,
    'revoking',
    'revoking',
  );

  /// All values of [NetworkInterfacePermissionStateCode].
  static const values = <NetworkInterfacePermissionStateCode>[
    NetworkInterfacePermissionStateCode.granted,
    NetworkInterfacePermissionStateCode.pending,
    NetworkInterfacePermissionStateCode.revoked,
    NetworkInterfacePermissionStateCode.revoking,
  ];

  static const List<_i1.SmithySerializer<NetworkInterfacePermissionStateCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'NetworkInterfacePermissionStateCode',
      values: values,
      sdkUnknown: NetworkInterfacePermissionStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NetworkInterfacePermissionStateCodeHelpers
    on List<NetworkInterfacePermissionStateCode> {
  /// Returns the value of [NetworkInterfacePermissionStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NetworkInterfacePermissionStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NetworkInterfacePermissionStateCode] whose value matches [value].
  NetworkInterfacePermissionStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
