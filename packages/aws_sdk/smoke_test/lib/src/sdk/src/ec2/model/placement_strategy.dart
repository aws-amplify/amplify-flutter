// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.placement_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PlacementStrategy extends _i1.SmithyEnum<PlacementStrategy> {
  const PlacementStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const PlacementStrategy._sdkUnknown(super.value) : super.sdkUnknown();

  static const cluster = PlacementStrategy._(
    0,
    'cluster',
    'cluster',
  );

  static const partition = PlacementStrategy._(
    1,
    'partition',
    'partition',
  );

  static const spread = PlacementStrategy._(
    2,
    'spread',
    'spread',
  );

  /// All values of [PlacementStrategy].
  static const values = <PlacementStrategy>[
    PlacementStrategy.cluster,
    PlacementStrategy.partition,
    PlacementStrategy.spread,
  ];

  static const List<_i1.SmithySerializer<PlacementStrategy>> serializers = [
    _i1.SmithyEnumSerializer(
      'PlacementStrategy',
      values: values,
      sdkUnknown: PlacementStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PlacementStrategyHelpers on List<PlacementStrategy> {
  /// Returns the value of [PlacementStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PlacementStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PlacementStrategy] whose value matches [value].
  PlacementStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
