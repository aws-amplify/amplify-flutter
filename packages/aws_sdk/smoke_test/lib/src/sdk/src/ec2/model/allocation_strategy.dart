// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocation_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AllocationStrategy extends _i1.SmithyEnum<AllocationStrategy> {
  const AllocationStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const AllocationStrategy._sdkUnknown(super.value) : super.sdkUnknown();

  static const capacityOptimized = AllocationStrategy._(
    0,
    'CAPACITY_OPTIMIZED',
    'capacityOptimized',
  );

  static const capacityOptimizedPrioritized = AllocationStrategy._(
    1,
    'CAPACITY_OPTIMIZED_PRIORITIZED',
    'capacityOptimizedPrioritized',
  );

  static const diversified = AllocationStrategy._(
    2,
    'DIVERSIFIED',
    'diversified',
  );

  static const lowestPrice = AllocationStrategy._(
    3,
    'LOWEST_PRICE',
    'lowestPrice',
  );

  static const priceCapacityOptimized = AllocationStrategy._(
    4,
    'PRICE_CAPACITY_OPTIMIZED',
    'priceCapacityOptimized',
  );

  /// All values of [AllocationStrategy].
  static const values = <AllocationStrategy>[
    AllocationStrategy.capacityOptimized,
    AllocationStrategy.capacityOptimizedPrioritized,
    AllocationStrategy.diversified,
    AllocationStrategy.lowestPrice,
    AllocationStrategy.priceCapacityOptimized,
  ];

  static const List<_i1.SmithySerializer<AllocationStrategy>> serializers = [
    _i1.SmithyEnumSerializer(
      'AllocationStrategy',
      values: values,
      sdkUnknown: AllocationStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AllocationStrategyHelpers on List<AllocationStrategy> {
  /// Returns the value of [AllocationStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AllocationStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AllocationStrategy] whose value matches [value].
  AllocationStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
