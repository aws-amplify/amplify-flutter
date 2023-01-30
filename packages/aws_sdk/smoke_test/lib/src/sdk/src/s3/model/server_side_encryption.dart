// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.server_side_encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ServerSideEncryption extends _i1.SmithyEnum<ServerSideEncryption> {
  const ServerSideEncryption._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ServerSideEncryption._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const aes256 = ServerSideEncryption._(
    0,
    'AES256',
    'AES256',
  );

  static const awsKms = ServerSideEncryption._(
    1,
    'aws_kms',
    'aws:kms',
  );

  /// All values of [ServerSideEncryption].
  static const values = <ServerSideEncryption>[
    ServerSideEncryption.aes256,
    ServerSideEncryption.awsKms,
  ];

  static const List<_i1.SmithySerializer<ServerSideEncryption>> serializers = [
    _i1.SmithyEnumSerializer(
      'ServerSideEncryption',
      values: values,
      sdkUnknown: ServerSideEncryption._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ServerSideEncryptionHelpers on List<ServerSideEncryption> {
  /// Returns the value of [ServerSideEncryption] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ServerSideEncryption byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ServerSideEncryption] whose value matches [value].
  ServerSideEncryption byValue(String value) =>
      firstWhere((el) => el.value == value);
}
