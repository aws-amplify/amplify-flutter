// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_tags_from_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CopyTagsFromSource extends _i1.SmithyEnum<CopyTagsFromSource> {
  const CopyTagsFromSource._(
    super.index,
    super.name,
    super.value,
  );

  const CopyTagsFromSource._sdkUnknown(super.value) : super.sdkUnknown();

  static const volume = CopyTagsFromSource._(
    0,
    'volume',
    'volume',
  );

  /// All values of [CopyTagsFromSource].
  static const values = <CopyTagsFromSource>[CopyTagsFromSource.volume];

  static const List<_i1.SmithySerializer<CopyTagsFromSource>> serializers = [
    _i1.SmithyEnumSerializer(
      'CopyTagsFromSource',
      values: values,
      sdkUnknown: CopyTagsFromSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CopyTagsFromSourceHelpers on List<CopyTagsFromSource> {
  /// Returns the value of [CopyTagsFromSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CopyTagsFromSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CopyTagsFromSource] whose value matches [value].
  CopyTagsFromSource byValue(String value) =>
      firstWhere((el) => el.value == value);
}
