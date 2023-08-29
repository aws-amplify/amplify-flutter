// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_endpoint_attribute_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnEndpointAttributeStatusCode
    extends _i1.SmithyEnum<ClientVpnEndpointAttributeStatusCode> {
  const ClientVpnEndpointAttributeStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnEndpointAttributeStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const applied = ClientVpnEndpointAttributeStatusCode._(
    0,
    'applied',
    'applied',
  );

  static const applying = ClientVpnEndpointAttributeStatusCode._(
    1,
    'applying',
    'applying',
  );

  /// All values of [ClientVpnEndpointAttributeStatusCode].
  static const values = <ClientVpnEndpointAttributeStatusCode>[
    ClientVpnEndpointAttributeStatusCode.applied,
    ClientVpnEndpointAttributeStatusCode.applying,
  ];

  static const List<_i1.SmithySerializer<ClientVpnEndpointAttributeStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnEndpointAttributeStatusCode',
      values: values,
      sdkUnknown: ClientVpnEndpointAttributeStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnEndpointAttributeStatusCodeHelpers
    on List<ClientVpnEndpointAttributeStatusCode> {
  /// Returns the value of [ClientVpnEndpointAttributeStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnEndpointAttributeStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnEndpointAttributeStatusCode] whose value matches [value].
  ClientVpnEndpointAttributeStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
