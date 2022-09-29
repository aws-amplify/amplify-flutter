// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.compression_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CompressionType extends _i1.SmithyEnum<CompressionType> {
  const CompressionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CompressionType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bzip2 = CompressionType._(
    0,
    'BZIP2',
    'BZIP2',
  );

  static const gzip = CompressionType._(
    1,
    'GZIP',
    'GZIP',
  );

  static const none = CompressionType._(
    2,
    'NONE',
    'NONE',
  );

  /// All values of [CompressionType].
  static const values = <CompressionType>[
    CompressionType.bzip2,
    CompressionType.gzip,
    CompressionType.none,
  ];

  static const List<_i1.SmithySerializer<CompressionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'CompressionType',
      values: values,
      sdkUnknown: CompressionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension CompressionTypeHelpers on List<CompressionType> {
  /// Returns the value of [CompressionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CompressionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CompressionType] whose value matches [value].
  CompressionType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
