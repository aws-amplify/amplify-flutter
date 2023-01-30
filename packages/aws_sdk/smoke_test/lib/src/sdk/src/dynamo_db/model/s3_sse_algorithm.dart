// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.s3_sse_algorithm; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class S3SseAlgorithm extends _i1.SmithyEnum<S3SseAlgorithm> {
  const S3SseAlgorithm._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const S3SseAlgorithm._sdkUnknown(String value) : super.sdkUnknown(value);

  static const aes256 = S3SseAlgorithm._(
    0,
    'AES256',
    'AES256',
  );

  static const kms = S3SseAlgorithm._(
    1,
    'KMS',
    'KMS',
  );

  /// All values of [S3SseAlgorithm].
  static const values = <S3SseAlgorithm>[
    S3SseAlgorithm.aes256,
    S3SseAlgorithm.kms,
  ];

  static const List<_i1.SmithySerializer<S3SseAlgorithm>> serializers = [
    _i1.SmithyEnumSerializer(
      'S3SseAlgorithm',
      values: values,
      sdkUnknown: S3SseAlgorithm._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension S3SseAlgorithmHelpers on List<S3SseAlgorithm> {
  /// Returns the value of [S3SseAlgorithm] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  S3SseAlgorithm byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [S3SseAlgorithm] whose value matches [value].
  S3SseAlgorithm byValue(String value) => firstWhere((el) => el.value == value);
}
