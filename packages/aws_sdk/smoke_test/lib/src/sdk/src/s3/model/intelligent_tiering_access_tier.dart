// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.intelligent_tiering_access_tier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IntelligentTieringAccessTier
    extends _i1.SmithyEnum<IntelligentTieringAccessTier> {
  const IntelligentTieringAccessTier._(
    super.index,
    super.name,
    super.value,
  );

  const IntelligentTieringAccessTier._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const archiveAccess = IntelligentTieringAccessTier._(
    0,
    'ARCHIVE_ACCESS',
    'ARCHIVE_ACCESS',
  );

  static const deepArchiveAccess = IntelligentTieringAccessTier._(
    1,
    'DEEP_ARCHIVE_ACCESS',
    'DEEP_ARCHIVE_ACCESS',
  );

  /// All values of [IntelligentTieringAccessTier].
  static const values = <IntelligentTieringAccessTier>[
    IntelligentTieringAccessTier.archiveAccess,
    IntelligentTieringAccessTier.deepArchiveAccess,
  ];

  static const List<_i1.SmithySerializer<IntelligentTieringAccessTier>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IntelligentTieringAccessTier',
      values: values,
      sdkUnknown: IntelligentTieringAccessTier._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension IntelligentTieringAccessTierHelpers
    on List<IntelligentTieringAccessTier> {
  /// Returns the value of [IntelligentTieringAccessTier] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IntelligentTieringAccessTier byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IntelligentTieringAccessTier] whose value matches [value].
  IntelligentTieringAccessTier byValue(String value) =>
      firstWhere((el) => el.value == value);
}
