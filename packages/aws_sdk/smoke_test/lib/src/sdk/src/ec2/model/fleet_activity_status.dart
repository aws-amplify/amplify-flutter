// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_activity_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetActivityStatus extends _i1.SmithyEnum<FleetActivityStatus> {
  const FleetActivityStatus._(
    super.index,
    super.name,
    super.value,
  );

  const FleetActivityStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const error = FleetActivityStatus._(
    0,
    'ERROR',
    'error',
  );

  static const fulfilled = FleetActivityStatus._(
    1,
    'FULFILLED',
    'fulfilled',
  );

  static const pendingFulfillment = FleetActivityStatus._(
    2,
    'PENDING_FULFILLMENT',
    'pending_fulfillment',
  );

  static const pendingTermination = FleetActivityStatus._(
    3,
    'PENDING_TERMINATION',
    'pending_termination',
  );

  /// All values of [FleetActivityStatus].
  static const values = <FleetActivityStatus>[
    FleetActivityStatus.error,
    FleetActivityStatus.fulfilled,
    FleetActivityStatus.pendingFulfillment,
    FleetActivityStatus.pendingTermination,
  ];

  static const List<_i1.SmithySerializer<FleetActivityStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'FleetActivityStatus',
      values: values,
      sdkUnknown: FleetActivityStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetActivityStatusHelpers on List<FleetActivityStatus> {
  /// Returns the value of [FleetActivityStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetActivityStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetActivityStatus] whose value matches [value].
  FleetActivityStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
