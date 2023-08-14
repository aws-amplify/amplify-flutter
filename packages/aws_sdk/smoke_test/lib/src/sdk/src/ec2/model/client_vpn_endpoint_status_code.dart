// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_endpoint_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnEndpointStatusCode
    extends _i1.SmithyEnum<ClientVpnEndpointStatusCode> {
  const ClientVpnEndpointStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnEndpointStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = ClientVpnEndpointStatusCode._(
    0,
    'available',
    'available',
  );

  static const deleted = ClientVpnEndpointStatusCode._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = ClientVpnEndpointStatusCode._(
    2,
    'deleting',
    'deleting',
  );

  static const pendingAssociate = ClientVpnEndpointStatusCode._(
    3,
    'pending_associate',
    'pending-associate',
  );

  /// All values of [ClientVpnEndpointStatusCode].
  static const values = <ClientVpnEndpointStatusCode>[
    ClientVpnEndpointStatusCode.available,
    ClientVpnEndpointStatusCode.deleted,
    ClientVpnEndpointStatusCode.deleting,
    ClientVpnEndpointStatusCode.pendingAssociate,
  ];

  static const List<_i1.SmithySerializer<ClientVpnEndpointStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnEndpointStatusCode',
      values: values,
      sdkUnknown: ClientVpnEndpointStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnEndpointStatusCodeHelpers
    on List<ClientVpnEndpointStatusCode> {
  /// Returns the value of [ClientVpnEndpointStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnEndpointStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnEndpointStatusCode] whose value matches [value].
  ClientVpnEndpointStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
