// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_route_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnRouteStatusCode
    extends _i1.SmithyEnum<ClientVpnRouteStatusCode> {
  const ClientVpnRouteStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnRouteStatusCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = ClientVpnRouteStatusCode._(
    0,
    'active',
    'active',
  );

  static const creating = ClientVpnRouteStatusCode._(
    1,
    'creating',
    'creating',
  );

  static const deleting = ClientVpnRouteStatusCode._(
    2,
    'deleting',
    'deleting',
  );

  static const failed = ClientVpnRouteStatusCode._(
    3,
    'failed',
    'failed',
  );

  /// All values of [ClientVpnRouteStatusCode].
  static const values = <ClientVpnRouteStatusCode>[
    ClientVpnRouteStatusCode.active,
    ClientVpnRouteStatusCode.creating,
    ClientVpnRouteStatusCode.deleting,
    ClientVpnRouteStatusCode.failed,
  ];

  static const List<_i1.SmithySerializer<ClientVpnRouteStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnRouteStatusCode',
      values: values,
      sdkUnknown: ClientVpnRouteStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnRouteStatusCodeHelpers on List<ClientVpnRouteStatusCode> {
  /// Returns the value of [ClientVpnRouteStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnRouteStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnRouteStatusCode] whose value matches [value].
  ClientVpnRouteStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
