// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.sse_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SseType extends _i1.SmithyEnum<SseType> {
  const SseType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SseType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const aes256 = SseType._(
    0,
    'AES256',
    'AES256',
  );

  static const kms = SseType._(
    1,
    'KMS',
    'KMS',
  );

  /// All values of [SseType].
  static const values = <SseType>[
    SseType.aes256,
    SseType.kms,
  ];

  static const List<_i1.SmithySerializer<SseType>> serializers = [
    _i1.SmithyEnumSerializer(
      'SSEType',
      values: values,
      sdkUnknown: SseType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension SseTypeHelpers on List<SseType> {
  /// Returns the value of [SseType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SseType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SseType] whose value matches [value].
  SseType byValue(String value) => firstWhere((el) => el.value == value);
}
