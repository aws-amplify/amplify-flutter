// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.content_handling_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContentHandlingStrategy extends _i1.SmithyEnum<ContentHandlingStrategy> {
  const ContentHandlingStrategy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ContentHandlingStrategy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const convertToBinary = ContentHandlingStrategy._(
    0,
    'CONVERT_TO_BINARY',
    'CONVERT_TO_BINARY',
  );

  static const convertToText = ContentHandlingStrategy._(
    1,
    'CONVERT_TO_TEXT',
    'CONVERT_TO_TEXT',
  );

  /// All values of [ContentHandlingStrategy].
  static const values = <ContentHandlingStrategy>[
    ContentHandlingStrategy.convertToBinary,
    ContentHandlingStrategy.convertToText,
  ];

  static const List<_i1.SmithySerializer<ContentHandlingStrategy>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ContentHandlingStrategy',
      values: values,
      sdkUnknown: ContentHandlingStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ContentHandlingStrategyHelpers on List<ContentHandlingStrategy> {
  /// Returns the value of [ContentHandlingStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContentHandlingStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContentHandlingStrategy] whose value matches [value].
  ContentHandlingStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
