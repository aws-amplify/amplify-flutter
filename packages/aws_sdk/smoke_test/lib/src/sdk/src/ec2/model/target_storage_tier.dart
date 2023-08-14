// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_storage_tier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TargetStorageTier extends _i1.SmithyEnum<TargetStorageTier> {
  const TargetStorageTier._(
    super.index,
    super.name,
    super.value,
  );

  const TargetStorageTier._sdkUnknown(super.value) : super.sdkUnknown();

  static const archive = TargetStorageTier._(
    0,
    'archive',
    'archive',
  );

  /// All values of [TargetStorageTier].
  static const values = <TargetStorageTier>[TargetStorageTier.archive];

  static const List<_i1.SmithySerializer<TargetStorageTier>> serializers = [
    _i1.SmithyEnumSerializer(
      'TargetStorageTier',
      values: values,
      sdkUnknown: TargetStorageTier._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TargetStorageTierHelpers on List<TargetStorageTier> {
  /// Returns the value of [TargetStorageTier] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TargetStorageTier byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TargetStorageTier] whose value matches [value].
  TargetStorageTier byValue(String value) =>
      firstWhere((el) => el.value == value);
}
