// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.tagging_directive; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TaggingDirective extends _i1.SmithyEnum<TaggingDirective> {
  const TaggingDirective._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TaggingDirective._sdkUnknown(String value) : super.sdkUnknown(value);

  static const copy = TaggingDirective._(
    0,
    'COPY',
    'COPY',
  );

  static const replace = TaggingDirective._(
    1,
    'REPLACE',
    'REPLACE',
  );

  /// All values of [TaggingDirective].
  static const values = <TaggingDirective>[
    TaggingDirective.copy,
    TaggingDirective.replace,
  ];

  static const List<_i1.SmithySerializer<TaggingDirective>> serializers = [
    _i1.SmithyEnumSerializer(
      'TaggingDirective',
      values: values,
      sdkUnknown: TaggingDirective._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension TaggingDirectiveHelpers on List<TaggingDirective> {
  /// Returns the value of [TaggingDirective] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TaggingDirective byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TaggingDirective] whose value matches [value].
  TaggingDirective byValue(String value) =>
      firstWhere((el) => el.value == value);
}
