// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VerifiedAccessEndpointProtocol
    extends _i1.SmithyEnum<VerifiedAccessEndpointProtocol> {
  const VerifiedAccessEndpointProtocol._(
    super.index,
    super.name,
    super.value,
  );

  const VerifiedAccessEndpointProtocol._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const http = VerifiedAccessEndpointProtocol._(
    0,
    'http',
    'http',
  );

  static const https = VerifiedAccessEndpointProtocol._(
    1,
    'https',
    'https',
  );

  /// All values of [VerifiedAccessEndpointProtocol].
  static const values = <VerifiedAccessEndpointProtocol>[
    VerifiedAccessEndpointProtocol.http,
    VerifiedAccessEndpointProtocol.https,
  ];

  static const List<_i1.SmithySerializer<VerifiedAccessEndpointProtocol>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VerifiedAccessEndpointProtocol',
      values: values,
      sdkUnknown: VerifiedAccessEndpointProtocol._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VerifiedAccessEndpointProtocolHelpers
    on List<VerifiedAccessEndpointProtocol> {
  /// Returns the value of [VerifiedAccessEndpointProtocol] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VerifiedAccessEndpointProtocol byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VerifiedAccessEndpointProtocol] whose value matches [value].
  VerifiedAccessEndpointProtocol byValue(String value) =>
      firstWhere((el) => el.value == value);
}
