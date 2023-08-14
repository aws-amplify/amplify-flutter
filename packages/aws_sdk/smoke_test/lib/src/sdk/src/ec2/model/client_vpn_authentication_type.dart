// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_authentication_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnAuthenticationType
    extends _i1.SmithyEnum<ClientVpnAuthenticationType> {
  const ClientVpnAuthenticationType._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnAuthenticationType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const certificateAuthentication = ClientVpnAuthenticationType._(
    0,
    'certificate_authentication',
    'certificate-authentication',
  );

  static const directoryServiceAuthentication = ClientVpnAuthenticationType._(
    1,
    'directory_service_authentication',
    'directory-service-authentication',
  );

  static const federatedAuthentication = ClientVpnAuthenticationType._(
    2,
    'federated_authentication',
    'federated-authentication',
  );

  /// All values of [ClientVpnAuthenticationType].
  static const values = <ClientVpnAuthenticationType>[
    ClientVpnAuthenticationType.certificateAuthentication,
    ClientVpnAuthenticationType.directoryServiceAuthentication,
    ClientVpnAuthenticationType.federatedAuthentication,
  ];

  static const List<_i1.SmithySerializer<ClientVpnAuthenticationType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnAuthenticationType',
      values: values,
      sdkUnknown: ClientVpnAuthenticationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnAuthenticationTypeHelpers
    on List<ClientVpnAuthenticationType> {
  /// Returns the value of [ClientVpnAuthenticationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnAuthenticationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnAuthenticationType] whose value matches [value].
  ClientVpnAuthenticationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
