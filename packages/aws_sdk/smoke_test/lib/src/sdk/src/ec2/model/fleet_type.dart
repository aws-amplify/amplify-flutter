// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetType extends _i1.SmithyEnum<FleetType> {
  const FleetType._(
    super.index,
    super.name,
    super.value,
  );

  const FleetType._sdkUnknown(super.value) : super.sdkUnknown();

  static const instant = FleetType._(
    0,
    'INSTANT',
    'instant',
  );

  static const maintain = FleetType._(
    1,
    'MAINTAIN',
    'maintain',
  );

  static const request = FleetType._(
    2,
    'REQUEST',
    'request',
  );

  /// All values of [FleetType].
  static const values = <FleetType>[
    FleetType.instant,
    FleetType.maintain,
    FleetType.request,
  ];

  static const List<_i1.SmithySerializer<FleetType>> serializers = [
    _i1.SmithyEnumSerializer(
      'FleetType',
      values: values,
      sdkUnknown: FleetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetTypeHelpers on List<FleetType> {
  /// Returns the value of [FleetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetType] whose value matches [value].
  FleetType byValue(String value) => firstWhere((el) => el.value == value);
}
