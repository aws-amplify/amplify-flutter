// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_certificate_revocation_list_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ClientCertificateRevocationListStatusCode
    extends _i1.SmithyEnum<ClientCertificateRevocationListStatusCode> {
  const ClientCertificateRevocationListStatusCode._(
    super.index,
    super.name,
    super.value,
  );

  const ClientCertificateRevocationListStatusCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = ClientCertificateRevocationListStatusCode._(
    0,
    'active',
    'active',
  );

  static const pending = ClientCertificateRevocationListStatusCode._(
    1,
    'pending',
    'pending',
  );

  /// All values of [ClientCertificateRevocationListStatusCode].
  static const values = <ClientCertificateRevocationListStatusCode>[
    ClientCertificateRevocationListStatusCode.active,
    ClientCertificateRevocationListStatusCode.pending,
  ];

  static const List<
          _i1.SmithySerializer<ClientCertificateRevocationListStatusCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ClientCertificateRevocationListStatusCode',
      values: values,
      sdkUnknown: ClientCertificateRevocationListStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ClientCertificateRevocationListStatusCodeHelpers
    on List<ClientCertificateRevocationListStatusCode> {
  /// Returns the value of [ClientCertificateRevocationListStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ClientCertificateRevocationListStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ClientCertificateRevocationListStatusCode] whose value matches [value].
  ClientCertificateRevocationListStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
