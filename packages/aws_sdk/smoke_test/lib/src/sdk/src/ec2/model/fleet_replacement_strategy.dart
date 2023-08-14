// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_replacement_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetReplacementStrategy
    extends _i1.SmithyEnum<FleetReplacementStrategy> {
  const FleetReplacementStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const FleetReplacementStrategy._sdkUnknown(super.value) : super.sdkUnknown();

  static const launch = FleetReplacementStrategy._(
    0,
    'LAUNCH',
    'launch',
  );

  static const launchBeforeTerminate = FleetReplacementStrategy._(
    1,
    'LAUNCH_BEFORE_TERMINATE',
    'launch-before-terminate',
  );

  /// All values of [FleetReplacementStrategy].
  static const values = <FleetReplacementStrategy>[
    FleetReplacementStrategy.launch,
    FleetReplacementStrategy.launchBeforeTerminate,
  ];

  static const List<_i1.SmithySerializer<FleetReplacementStrategy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetReplacementStrategy',
      values: values,
      sdkUnknown: FleetReplacementStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetReplacementStrategyHelpers on List<FleetReplacementStrategy> {
  /// Returns the value of [FleetReplacementStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetReplacementStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetReplacementStrategy] whose value matches [value].
  FleetReplacementStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
