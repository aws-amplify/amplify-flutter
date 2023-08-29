// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.storage_tier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StorageTier extends _i1.SmithyEnum<StorageTier> {
  const StorageTier._(
    super.index,
    super.name,
    super.value,
  );

  const StorageTier._sdkUnknown(super.value) : super.sdkUnknown();

  static const archive = StorageTier._(
    0,
    'archive',
    'archive',
  );

  static const standard = StorageTier._(
    1,
    'standard',
    'standard',
  );

  /// All values of [StorageTier].
  static const values = <StorageTier>[
    StorageTier.archive,
    StorageTier.standard,
  ];

  static const List<_i1.SmithySerializer<StorageTier>> serializers = [
    _i1.SmithyEnumSerializer(
      'StorageTier',
      values: values,
      sdkUnknown: StorageTier._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StorageTierHelpers on List<StorageTier> {
  /// Returns the value of [StorageTier] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StorageTier byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StorageTier] whose value matches [value].
  StorageTier byValue(String value) => firstWhere((el) => el.value == value);
}
