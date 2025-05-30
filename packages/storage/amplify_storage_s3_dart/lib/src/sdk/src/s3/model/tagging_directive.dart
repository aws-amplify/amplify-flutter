// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.tagging_directive; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TaggingDirective extends _i1.SmithyEnum<TaggingDirective> {
  const TaggingDirective._(super.index, super.name, super.value);

  const TaggingDirective._sdkUnknown(super.value) : super.sdkUnknown();

  static const copy = TaggingDirective._(0, 'COPY', 'COPY');

  static const replace = TaggingDirective._(1, 'REPLACE', 'REPLACE');

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
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
      ],
    ),
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
