// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.input_compression_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InputCompressionType extends _i1.SmithyEnum<InputCompressionType> {
  const InputCompressionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InputCompressionType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const gzip = InputCompressionType._(
    0,
    'GZIP',
    'GZIP',
  );

  static const none = InputCompressionType._(
    1,
    'NONE',
    'NONE',
  );

  static const zstd = InputCompressionType._(
    2,
    'ZSTD',
    'ZSTD',
  );

  /// All values of [InputCompressionType].
  static const values = <InputCompressionType>[
    InputCompressionType.gzip,
    InputCompressionType.none,
    InputCompressionType.zstd,
  ];

  static const List<_i1.SmithySerializer<InputCompressionType>> serializers = [
    _i1.SmithyEnumSerializer(
      'InputCompressionType',
      values: values,
      sdkUnknown: InputCompressionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension InputCompressionTypeHelpers on List<InputCompressionType> {
  /// Returns the value of [InputCompressionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InputCompressionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InputCompressionType] whose value matches [value].
  InputCompressionType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
