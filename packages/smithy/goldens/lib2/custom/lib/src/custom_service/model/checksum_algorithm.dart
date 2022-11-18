// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library custom_v2.custom_service.model.checksum_algorithm; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChecksumAlgorithm extends _i1.SmithyEnum<ChecksumAlgorithm> {
  const ChecksumAlgorithm._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChecksumAlgorithm._sdkUnknown(String value) : super.sdkUnknown(value);

  static const crc32 = ChecksumAlgorithm._(
    0,
    'CRC32',
    'CRC32',
  );

  static const crc32C = ChecksumAlgorithm._(
    1,
    'CRC32C',
    'CRC32C',
  );

  static const sha1 = ChecksumAlgorithm._(
    2,
    'SHA1',
    'SHA1',
  );

  static const sha256 = ChecksumAlgorithm._(
    3,
    'SHA256',
    'SHA256',
  );

  /// All values of [ChecksumAlgorithm].
  static const values = <ChecksumAlgorithm>[
    ChecksumAlgorithm.crc32,
    ChecksumAlgorithm.crc32C,
    ChecksumAlgorithm.sha1,
    ChecksumAlgorithm.sha256,
  ];

  static const List<_i1.SmithySerializer<ChecksumAlgorithm>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChecksumAlgorithm',
      values: values,
      sdkUnknown: ChecksumAlgorithm._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ChecksumAlgorithmHelpers on List<ChecksumAlgorithm> {
  /// Returns the value of [ChecksumAlgorithm] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChecksumAlgorithm byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChecksumAlgorithm] whose value matches [value].
  ChecksumAlgorithm byValue(String value) =>
      firstWhere((el) => el.value == value);
}
