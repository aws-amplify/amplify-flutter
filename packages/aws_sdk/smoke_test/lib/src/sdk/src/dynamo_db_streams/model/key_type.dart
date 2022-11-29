// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.key_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class KeyType extends _i1.SmithyEnum<KeyType> {
  const KeyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const KeyType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const hash = KeyType._(
    0,
    'HASH',
    'HASH',
  );

  static const range = KeyType._(
    1,
    'RANGE',
    'RANGE',
  );

  /// All values of [KeyType].
  static const values = <KeyType>[
    KeyType.hash,
    KeyType.range,
  ];

  static const List<_i1.SmithySerializer<KeyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'KeyType',
      values: values,
      sdkUnknown: KeyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension KeyTypeHelpers on List<KeyType> {
  /// Returns the value of [KeyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  KeyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [KeyType] whose value matches [value].
  KeyType byValue(String value) => firstWhere((el) => el.value == value);
}
