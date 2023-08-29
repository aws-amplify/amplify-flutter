// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_connection_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnConnectionStatusCode
    extends _i1.SmithyEnum<ClientVpnConnectionStatusCode> {
  const ClientVpnConnectionStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnConnectionStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = ClientVpnConnectionStatusCode._(
    0,
    'active',
    'active',
  );

  static const failedToTerminate = ClientVpnConnectionStatusCode._(
    1,
    'failed_to_terminate',
    'failed-to-terminate',
  );

  static const terminated = ClientVpnConnectionStatusCode._(
    2,
    'terminated',
    'terminated',
  );

  static const terminating = ClientVpnConnectionStatusCode._(
    3,
    'terminating',
    'terminating',
  );

  /// All values of [ClientVpnConnectionStatusCode].
  static const values = <ClientVpnConnectionStatusCode>[
    ClientVpnConnectionStatusCode.active,
    ClientVpnConnectionStatusCode.failedToTerminate,
    ClientVpnConnectionStatusCode.terminated,
    ClientVpnConnectionStatusCode.terminating,
  ];

  static const List<_i1.SmithySerializer<ClientVpnConnectionStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnConnectionStatusCode',
      values: values,
      sdkUnknown: ClientVpnConnectionStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnConnectionStatusCodeHelpers
    on List<ClientVpnConnectionStatusCode> {
  /// Returns the value of [ClientVpnConnectionStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnConnectionStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnConnectionStatusCode] whose value matches [value].
  ClientVpnConnectionStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
