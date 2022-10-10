// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Protocol extends _i1.SmithyEnum<Protocol> {
  const Protocol._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Protocol._sdkUnknown(String value) : super.sdkUnknown(value);

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
