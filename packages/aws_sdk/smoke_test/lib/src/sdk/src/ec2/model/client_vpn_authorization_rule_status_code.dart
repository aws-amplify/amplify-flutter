// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_authorization_rule_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientVpnAuthorizationRuleStatusCode
    extends _i1.SmithyEnum<ClientVpnAuthorizationRuleStatusCode> {
  const ClientVpnAuthorizationRuleStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientVpnAuthorizationRuleStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = ClientVpnAuthorizationRuleStatusCode._(
    0,
    'active',
    'active',
  );

  static const authorizing = ClientVpnAuthorizationRuleStatusCode._(
    1,
    'authorizing',
    'authorizing',
  );

  static const failed = ClientVpnAuthorizationRuleStatusCode._(
    2,
    'failed',
    'failed',
  );

  static const revoking = ClientVpnAuthorizationRuleStatusCode._(
    3,
    'revoking',
    'revoking',
  );

  /// All values of [ClientVpnAuthorizationRuleStatusCode].
  static const values = <ClientVpnAuthorizationRuleStatusCode>[
    ClientVpnAuthorizationRuleStatusCode.active,
    ClientVpnAuthorizationRuleStatusCode.authorizing,
    ClientVpnAuthorizationRuleStatusCode.failed,
    ClientVpnAuthorizationRuleStatusCode.revoking,
  ];

  static const List<_i1.SmithySerializer<ClientVpnAuthorizationRuleStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientVpnAuthorizationRuleStatusCode',
      values: values,
      sdkUnknown: ClientVpnAuthorizationRuleStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientVpnAuthorizationRuleStatusCodeHelpers
    on List<ClientVpnAuthorizationRuleStatusCode> {
  /// Returns the value of [ClientVpnAuthorizationRuleStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientVpnAuthorizationRuleStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientVpnAuthorizationRuleStatusCode] whose value matches [value].
  ClientVpnAuthorizationRuleStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
