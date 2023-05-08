// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.region_concurrency_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RegionConcurrencyType extends _i1.SmithyEnum<RegionConcurrencyType> {
  const RegionConcurrencyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RegionConcurrencyType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const parallel = RegionConcurrencyType._(
    0,
    'PARALLEL',
    'PARALLEL',
  );

  static const sequential = RegionConcurrencyType._(
    1,
    'SEQUENTIAL',
    'SEQUENTIAL',
  );

  /// All values of [RegionConcurrencyType].
  static const values = <RegionConcurrencyType>[
    RegionConcurrencyType.parallel,
    RegionConcurrencyType.sequential,
  ];

  static const List<_i1.SmithySerializer<RegionConcurrencyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RegionConcurrencyType',
      values: values,
      sdkUnknown: RegionConcurrencyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension RegionConcurrencyTypeHelpers on List<RegionConcurrencyType> {
  /// Returns the value of [RegionConcurrencyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RegionConcurrencyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RegionConcurrencyType] whose value matches [value].
  RegionConcurrencyType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
