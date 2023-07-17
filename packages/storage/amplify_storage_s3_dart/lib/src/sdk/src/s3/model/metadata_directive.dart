// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.metadata_directive; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MetadataDirective extends _i1.SmithyEnum<MetadataDirective> {
  const MetadataDirective._(
    super.index,
    super.name,
    super.value,
  );

  const MetadataDirective._sdkUnknown(super.value) : super.sdkUnknown();

  static const copy = MetadataDirective._(
    0,
    'COPY',
    'COPY',
  );

  static const replace = MetadataDirective._(
    1,
    'REPLACE',
    'REPLACE',
  );

  /// All values of [MetadataDirective].
  static const values = <MetadataDirective>[
    MetadataDirective.copy,
    MetadataDirective.replace,
  ];

  static const List<_i1.SmithySerializer<MetadataDirective>> serializers = [
    _i1.SmithyEnumSerializer(
      'MetadataDirective',
      values: values,
      sdkUnknown: MetadataDirective._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension MetadataDirectiveHelpers on List<MetadataDirective> {
  /// Returns the value of [MetadataDirective] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MetadataDirective byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MetadataDirective] whose value matches [value].
  MetadataDirective byValue(String value) =>
      firstWhere((el) => el.value == value);
}
