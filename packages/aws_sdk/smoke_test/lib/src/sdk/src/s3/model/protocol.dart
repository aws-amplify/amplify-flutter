// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Protocol extends _i1.SmithyEnum<Protocol> {
  const Protocol._(
    super.index,
    super.name,
    super.value,
  );

  const Protocol._sdkUnknown(super.value) : super.sdkUnknown();

  static const http = Protocol._(
    0,
    'http',
    'http',
  );

  static const https = Protocol._(
    1,
    'https',
    'https',
  );

  /// All values of [Protocol].
  static const values = <Protocol>[
    Protocol.http,
    Protocol.https,
  ];

  static const List<_i1.SmithySerializer<Protocol>> serializers = [
    _i1.SmithyEnumSerializer(
      'Protocol',
      values: values,
      sdkUnknown: Protocol._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ProtocolHelpers on List<Protocol> {
  /// Returns the value of [Protocol] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Protocol byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Protocol] whose value matches [value].
  Protocol byValue(String value) => firstWhere((el) => el.value == value);
}