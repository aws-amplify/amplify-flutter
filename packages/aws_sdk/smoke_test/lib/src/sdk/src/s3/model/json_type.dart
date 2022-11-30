// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.json_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class JsonType extends _i1.SmithyEnum<JsonType> {
  const JsonType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const JsonType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const document = JsonType._(
    0,
    'DOCUMENT',
    'DOCUMENT',
  );

  static const lines = JsonType._(
    1,
    'LINES',
    'LINES',
  );

  /// All values of [JsonType].
  static const values = <JsonType>[
    JsonType.document,
    JsonType.lines,
  ];

  static const List<_i1.SmithySerializer<JsonType>> serializers = [
    _i1.SmithyEnumSerializer(
      'JSONType',
      values: values,
      sdkUnknown: JsonType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension JsonTypeHelpers on List<JsonType> {
  /// Returns the value of [JsonType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  JsonType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [JsonType] whose value matches [value].
  JsonType byValue(String value) => firstWhere((el) => el.value == value);
}
