// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.on_demand_allocation_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OnDemandAllocationStrategy
    extends _i1.SmithyEnum<OnDemandAllocationStrategy> {
  const OnDemandAllocationStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const OnDemandAllocationStrategy._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const lowestPrice = OnDemandAllocationStrategy._(
    0,
    'LOWEST_PRICE',
    'lowestPrice',
  );

  static const prioritized = OnDemandAllocationStrategy._(
    1,
    'PRIORITIZED',
    'prioritized',
  );

  /// All values of [OnDemandAllocationStrategy].
  static const values = <OnDemandAllocationStrategy>[
    OnDemandAllocationStrategy.lowestPrice,
    OnDemandAllocationStrategy.prioritized,
  ];

  static const List<_i1.SmithySerializer<OnDemandAllocationStrategy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OnDemandAllocationStrategy',
      values: values,
      sdkUnknown: OnDemandAllocationStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension OnDemandAllocationStrategyHelpers
    on List<OnDemandAllocationStrategy> {
  /// Returns the value of [OnDemandAllocationStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OnDemandAllocationStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OnDemandAllocationStrategy] whose value matches [value].
  OnDemandAllocationStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
