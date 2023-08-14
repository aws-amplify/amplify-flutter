// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_event_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetEventType extends _i1.SmithyEnum<FleetEventType> {
  const FleetEventType._(
    super.index,
    super.name,
    super.value,
  );

  const FleetEventType._sdkUnknown(super.value) : super.sdkUnknown();

  static const fleetChange = FleetEventType._(
    0,
    'FLEET_CHANGE',
    'fleet-change',
  );

  static const instanceChange = FleetEventType._(
    1,
    'INSTANCE_CHANGE',
    'instance-change',
  );

  static const serviceError = FleetEventType._(
    2,
    'SERVICE_ERROR',
    'service-error',
  );

  /// All values of [FleetEventType].
  static const values = <FleetEventType>[
    FleetEventType.fleetChange,
    FleetEventType.instanceChange,
    FleetEventType.serviceError,
  ];

  static const List<_i1.SmithySerializer<FleetEventType>> serializers = [
    _i1.SmithyEnumSerializer(
      'FleetEventType',
      values: values,
      sdkUnknown: FleetEventType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetEventTypeHelpers on List<FleetEventType> {
  /// Returns the value of [FleetEventType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetEventType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetEventType] whose value matches [value].
  FleetEventType byValue(String value) => firstWhere((el) => el.value == value);
}
