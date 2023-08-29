// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetStateCode extends _i1.SmithyEnum<FleetStateCode> {
  const FleetStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const FleetStateCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = FleetStateCode._(
    0,
    'ACTIVE',
    'active',
  );

  static const deleted = FleetStateCode._(
    1,
    'DELETED',
    'deleted',
  );

  static const deletedRunning = FleetStateCode._(
    2,
    'DELETED_RUNNING',
    'deleted_running',
  );

  static const deletedTerminatingInstances = FleetStateCode._(
    3,
    'DELETED_TERMINATING_INSTANCES',
    'deleted_terminating',
  );

  static const failed = FleetStateCode._(
    4,
    'FAILED',
    'failed',
  );

  static const modifying = FleetStateCode._(
    5,
    'MODIFYING',
    'modifying',
  );

  static const submitted = FleetStateCode._(
    6,
    'SUBMITTED',
    'submitted',
  );

  /// All values of [FleetStateCode].
  static const values = <FleetStateCode>[
    FleetStateCode.active,
    FleetStateCode.deleted,
    FleetStateCode.deletedRunning,
    FleetStateCode.deletedTerminatingInstances,
    FleetStateCode.failed,
    FleetStateCode.modifying,
    FleetStateCode.submitted,
  ];

  static const List<_i1.SmithySerializer<FleetStateCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'FleetStateCode',
      values: values,
      sdkUnknown: FleetStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetStateCodeHelpers on List<FleetStateCode> {
  /// Returns the value of [FleetStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetStateCode] whose value matches [value].
  FleetStateCode byValue(String value) => firstWhere((el) => el.value == value);
}
