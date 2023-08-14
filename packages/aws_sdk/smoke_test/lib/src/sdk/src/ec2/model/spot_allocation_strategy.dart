// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_allocation_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpotAllocationStrategy extends _i1.SmithyEnum<SpotAllocationStrategy> {
  const SpotAllocationStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const SpotAllocationStrategy._sdkUnknown(super.value) : super.sdkUnknown();

  static const capacityOptimized = SpotAllocationStrategy._(
    0,
    'CAPACITY_OPTIMIZED',
    'capacity-optimized',
  );

  static const capacityOptimizedPrioritized = SpotAllocationStrategy._(
    1,
    'CAPACITY_OPTIMIZED_PRIORITIZED',
    'capacity-optimized-prioritized',
  );

  static const diversified = SpotAllocationStrategy._(
    2,
    'DIVERSIFIED',
    'diversified',
  );

  static const lowestPrice = SpotAllocationStrategy._(
    3,
    'LOWEST_PRICE',
    'lowest-price',
  );

  static const priceCapacityOptimized = SpotAllocationStrategy._(
    4,
    'PRICE_CAPACITY_OPTIMIZED',
    'price-capacity-optimized',
  );

  /// All values of [SpotAllocationStrategy].
  static const values = <SpotAllocationStrategy>[
    SpotAllocationStrategy.capacityOptimized,
    SpotAllocationStrategy.capacityOptimizedPrioritized,
    SpotAllocationStrategy.diversified,
    SpotAllocationStrategy.lowestPrice,
    SpotAllocationStrategy.priceCapacityOptimized,
  ];

  static const List<_i1.SmithySerializer<SpotAllocationStrategy>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'SpotAllocationStrategy',
      values: values,
      sdkUnknown: SpotAllocationStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpotAllocationStrategyHelpers on List<SpotAllocationStrategy> {
  /// Returns the value of [SpotAllocationStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpotAllocationStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpotAllocationStrategy] whose value matches [value].
  SpotAllocationStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
